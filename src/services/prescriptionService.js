import { supabase, isSupabaseConfigured } from '../lib/supabase';
import { validateAndNormalizeInternationalPhone } from '../utils/phone';
import { generateEnquiryCode } from '../utils/enquiryCode';

const MAX_FILE_SIZE_BYTES = 10 * 1024 * 1024; // 10MB

const ALLOWED_MIME_TYPES = [
  'application/pdf',
  'image/jpeg',
  'image/jpg',
  'image/png',
  'image/webp',
  'application/msword',
  'application/vnd.openxmlformats-officedocument.wordprocessingml.document'
];

const ALLOWED_EXTENSIONS = ['pdf', 'jpg', 'jpeg', 'png', 'webp', 'doc', 'docx'];

function generateUUID() {
  if (typeof crypto !== 'undefined' && crypto.randomUUID) {
    return crypto.randomUUID();
  }
  return 'xxxxxxxx-xxxx-4xxx-yxxx-xxxxxxxxxxxx'.replace(/[xy]/g, function(c) {
    const r = Math.random() * 16 | 0, v = c === 'x' ? r : (r & 0x3 | 0x8);
    return v.toString(16);
  });
}

/**
 * Validates prescription file type and size
 */
export function validatePrescriptionFile(file) {
  if (!file) {
    return { isValid: false, error: 'Please select a prescription file.' };
  }

  if (file.size <= 0) {
    return { isValid: false, error: 'The selected file appears to be empty.' };
  }

  if (file.size > MAX_FILE_SIZE_BYTES) {
    return { isValid: false, error: 'File size exceeds 10MB limit. Please upload a smaller file.' };
  }

  const extension = file.name.split('.').pop()?.toLowerCase();
  if (!extension || !ALLOWED_EXTENSIONS.includes(extension)) {
    return { 
      isValid: false, 
      error: `Invalid file format (.${extension}). Supported formats: PDF, JPG, PNG, WEBP, DOC, DOCX.` 
    };
  }

  // Validate MIME type
  if (file.type && !ALLOWED_MIME_TYPES.includes(file.type.toLowerCase())) {
    return { 
      isValid: false, 
      error: 'Invalid file MIME type. Please upload a valid document or image.' 
    };
  }

  return { isValid: true, error: null };
}

/**
 * Submits guest prescription and creates backend system-of-record entries
 */
export async function submitGuestPrescription({ file, fullName, phone, countryCode = '+91', city = 'Bengaluru', notes = '', email = '' }) {
  // 1. Validate Patient Name
  if (!fullName || fullName.trim().length < 2) {
    return { success: false, error: 'Please enter your full name (minimum 2 characters).' };
  }

  // 2. Validate & Normalize Phone Number
  const phoneValidation = validateAndNormalizeInternationalPhone(phone, countryCode);
  if (!phoneValidation.isValid) {
    return { success: false, error: phoneValidation.error };
  }
  const phone_e164 = phoneValidation.phone_e164;

  // 3. Validate File
  const fileValidation = validatePrescriptionFile(file);
  if (!fileValidation.isValid) {
    return { success: false, error: fileValidation.error };
  }

  // 4. Generate Human-Readable Enquiry Code
  const enquiryCode = generateEnquiryCode();

  // LOCAL DEMO / FALLBACK MODE
  if (!isSupabaseConfigured) {
    await new Promise(res => setTimeout(res, 800)); // Simulate async submission
    return {
      success: true,
      enquiry_code: enquiryCode,
      phone_e164: phone_e164,
      patient_name: fullName.trim(),
      isDemoMode: true,
      message: 'Prescription enquiry registered successfully (Demo Mode).'
    };
  }

  // PRODUCTION SUPABASE SUBMISSION
  let uploadedFilePath = null;
  try {
    // A. Upload file to Private Storage Bucket
    const timeStamp = Date.now();
    const cleanFileName = file.name.replace(/[^a-zA-Z0-9.-]/g, '_');
    uploadedFilePath = `guest/${enquiryCode}/${timeStamp}_${cleanFileName}`;

    const { data: storageData, error: storageError } = await supabase.storage
      .from('prescriptions')
      .upload(uploadedFilePath, file, {
        cacheControl: '3600',
        upsert: false
      });

    if (storageError) {
      console.error('Storage Upload Error:', storageError);
      throw new Error('Failed to securely store prescription file. Please try again.');
    }

    // B. Find or Create Patient Record (Supports multiple uploads per phone number)
    let patientId = null;

    // Try RPC function first (handles RLS bypass for existing guest phone numbers)
    try {
      const { data: rpcPatientId, error: rpcError } = await supabase.rpc('get_or_create_guest_patient', {
        p_full_name: fullName.trim(),
        p_phone_e164: phone_e164,
        p_city: city,
        p_email: email.trim() || null
      });

      if (!rpcError && rpcPatientId) {
        patientId = rpcPatientId;
      }
    } catch (rpcErr) {
      console.warn('RPC lookup fallback:', rpcErr);
    }

    // Fallback: Direct lookup & Upsert handling
    if (!patientId) {
      try {
        const { data: existingPatients } = await supabase
          .from('patients')
          .select('id')
          .eq('phone_e164', phone_e164)
          .limit(1);

        if (existingPatients && existingPatients.length > 0) {
          patientId = existingPatients[0].id;
        }
      } catch (lookupErr) {
        console.warn('Patient lookup warning:', lookupErr);
      }
    }

    if (!patientId) {
      patientId = generateUUID();
      const { error: createPatientError } = await supabase
        .from('patients')
        .insert({
          id: patientId,
          full_name: fullName.trim(),
          phone_e164: phone_e164,
          city: city,
          email: email.trim() || null,
          user_id: null,
          is_verified: false
        });

      if (createPatientError) {
        const msg = createPatientError.message?.toLowerCase() || '';
        // If error is duplicate phone number or RLS select policy warning, patient record exists or was inserted
        if (msg.includes('duplicate') || createPatientError.code === '23505' || msg.includes('row-level security') || msg.includes('policy')) {
          console.warn('Patient record insert notification (existing phone or RLS select policy):', createPatientError.message);
        } else {
          console.error('Create Patient Error:', createPatientError);
          throw new Error('Failed to create patient record: ' + createPatientError.message);
        }
      }
    }

    // C. Create Enquiry Record (Using Client-Side UUID)
    const enquiryId = generateUUID();
    const { error: enquiryError } = await supabase
      .from('enquiries')
      .insert({
        id: enquiryId,
        enquiry_code: enquiryCode,
        patient_id: patientId,
        source: 'website',
        status: 'pending_review',
        notes: notes.trim() || null
      });

    if (enquiryError) {
      console.error('Enquiry Insert Error:', enquiryError);
      throw new Error('Failed to register enquiry record: ' + enquiryError.message);
    }

    // D. Create Prescription Record (Using Client-Side UUID)
    const { error: prescriptionError } = await supabase
      .from('prescriptions')
      .insert({
        id: generateUUID(),
        enquiry_id: enquiryId,
        patient_id: patientId,
        file_path: uploadedFilePath,
        file_name: file.name,
        file_type: file.type || 'application/octet-stream',
        file_size: file.size,
        user_id: null
      });

    if (prescriptionError) {
      console.error('Prescription DB Insert Error:', prescriptionError);
      throw new Error('Failed to link prescription document record: ' + prescriptionError.message);
    }

    return {
      success: true,
      enquiry_code: enquiryCode,
      phone_e164: phone_e164,
      patient_name: fullName.trim(),
      isDemoMode: false
    };

  } catch (err) {
    console.error('Submission processing failure:', err);

    // ATOMIC CLEANUP: If file was uploaded to storage but DB inserts failed, clean up file
    if (uploadedFilePath && isSupabaseConfigured) {
      try {
        await supabase.storage.from('prescriptions').remove([uploadedFilePath]);
      } catch (cleanupErr) {
        console.warn('Failed to clean up uploaded file after DB error:', cleanupErr);
      }
    }

    return {
      success: false,
      error: err.message || 'We couldn\'t submit your prescription right now. Please try again.'
    };
  }
}
