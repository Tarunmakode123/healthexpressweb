import { createClient } from '@supabase/supabase-js';

const supabaseUrl = 'https://lacsmipikpohchhdfzjn.supabase.co';
const supabaseAnonKey = 'sb_publishable_-Kx62Hm3TebdU5uTaS6wRw_3zRyNsdU';

const supabase = createClient(supabaseUrl, supabaseAnonKey);

async function testFullGuestUpload() {
  console.log('--- TESTING FULL GUEST UPLOAD SEQUENCE ---');

  // STEP A: RPC get_or_create_guest_patient
  const { data: patientId, error: rpcErr } = await supabase.rpc('get_or_create_guest_patient', {
    p_full_name: 'Tarun Forensic Test',
    p_phone_e164: '+918305059502',
    p_city: 'Bengaluru',
    p_email: null
  });

  console.log('Step A Patient ID:', patientId, 'RPC Error:', rpcErr);

  // STEP B: Insert Enquiry
  const enquiryId = '11111111-2222-3333-4444-555555555555';
  const enquiryCode = 'HE-2026-FWKF2';
  const { error: enqErr } = await supabase
    .from('enquiries')
    .insert({
      id: enquiryId,
      enquiry_code: enquiryCode,
      patient_id: patientId,
      source: 'website',
      status: 'pending_review'
    });

  console.log('Step B Enquiry Insert Error:', enqErr);

  // STEP C: Insert Prescription
  const prescriptionId = '66666666-7777-8888-9999-000000000000';
  const { error: rxErr } = await supabase
    .from('prescriptions')
    .insert({
      id: prescriptionId,
      enquiry_id: enquiryId,
      patient_id: patientId,
      file_path: 'guest/HE-2026-FWKF2/test.pdf',
      file_name: 'test_prescription.pdf',
      file_type: 'application/pdf',
      file_size: 1024,
      user_id: null
    });

  console.log('Step C Prescription Insert Error:', rxErr);
}

testFullGuestUpload();
