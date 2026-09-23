import { supabase, isSupabaseConfigured } from '../lib/supabase.js';

/**
 * Verifies Admin login credentials against Supabase Auth & Database RBAC
 */
export async function verifyAdminAuth(email, password) {
  if (!email || !password) {
    return { success: false, error: 'Please enter both email and password.' };
  }

  if (!isSupabaseConfigured) {
    return { success: false, error: 'Supabase environment variables (VITE_SUPABASE_URL & VITE_SUPABASE_ANON_KEY) are not configured.' };
  }

  try {
    // 1. Supabase Auth sign in
    const { data: authData, error: authError } = await supabase.auth.signInWithPassword({
      email: email.trim(),
      password: password
    });

    if (authError) {
      return { success: false, error: authError.message || 'Invalid email or password.' };
    }

    // 2. Database RBAC check via SECURITY DEFINER check_is_admin() RPC
    const { data: isAdmin, error: rpcError } = await supabase.rpc('check_is_admin');

    if (rpcError) {
      console.warn('RPC check_is_admin warning:', rpcError.message);
    }

    // Strictly enforce database is_admin = true
    if (isAdmin !== true) {
      await supabase.auth.signOut();
      return { 
        success: false, 
        error: 'You do not have permission to access the Health Express Admin Portal.' 
      };
    }

    return {
      success: true,
      user: authData.user,
      token: authData.session?.access_token
    };
  } catch (err) {
    console.error('Admin Auth Exception:', err);
    return { success: false, error: err.message || 'Authentication error.' };
  }
}

/**
 * Fetch all orders and payments for Admin Panel from Supabase
 */
export async function fetchAdminOrders() {
  if (!isSupabaseConfigured) {
    return { success: false, error: 'Supabase configuration is missing.' };
  }

  try {
    const { data: orders, error } = await supabase
      .from('orders')
      .select(`
        *,
        payments (*)
      `)
      .order('created_at', { ascending: false });

    if (error) {
      console.error('Fetch admin orders database error:', error.message);
      return { success: false, error: `Failed to load orders: ${error.message}` };
    }

    return { success: true, data: orders || [] };
  } catch (err) {
    console.error('Fetch admin orders exception:', err);
    return { success: false, error: err.message || 'Database connection error.' };
  }
}

/**
 * Fetch all payment records for dedicated Admin Payments module
 */
export async function fetchAdminPayments() {
  if (!isSupabaseConfigured) {
    return { success: false, error: 'Supabase configuration is missing.' };
  }

  try {
    const { data: payments, error } = await supabase
      .from('payments')
      .select(`
        *,
        orders (*),
        patients (*)
      `)
      .order('created_at', { ascending: false });

    if (error) {
      console.error('Fetch admin payments database error:', error.message);
      return { success: false, error: `Failed to load payments: ${error.message}` };
    }

    return { success: true, data: payments || [] };
  } catch (err) {
    console.error('Fetch admin payments exception:', err);
    return { success: false, error: err.message || 'Database connection error.' };
  }
}

/**
 * Mark COD Payment as Collected via secure SECURITY DEFINER RPC
 */
export async function markCodPaymentCollected(orderId) {
  if (!orderId) return { success: false, error: 'Missing Order ID.' };

  if (!isSupabaseConfigured) {
    return { success: false, error: 'Supabase configuration is missing.' };
  }

  try {
    const { data, error } = await supabase.rpc('mark_cod_payment_collected', {
      p_order_id: orderId
    });

    if (error) {
      console.error('RPC mark_cod_payment_collected error:', error);
      return { success: false, error: error.message };
    }

    return { success: true, data };
  } catch (err) {
    console.error('Mark COD Exception:', err);
    return { success: false, error: err.message };
  }
}

/**
 * Update Order status in database
 */
export async function updateAdminOrderStatus(orderId, newOrderStatus) {
  if (!isSupabaseConfigured) {
    return { success: false, error: 'Supabase configuration is missing.' };
  }

  try {
    const { error } = await supabase
      .from('orders')
      .update({ order_status: newOrderStatus, updated_at: new Date().toISOString() })
      .eq('id', orderId);

    if (error) {
      return { success: false, error: error.message };
    }
    return { success: true };
  } catch (err) {
    return { success: false, error: err.message };
  }
}

/**
 * Fetch Guest Prescriptions & Enquiries from Supabase
 */
export async function fetchAdminPrescriptions() {
  if (!isSupabaseConfigured) {
    return { success: false, error: 'Supabase configuration is missing.' };
  }

  try {
    const { data: enquiries, error } = await supabase
      .from('enquiries')
      .select(`
        *,
        patients (*),
        prescriptions (*)
      `)
      .order('created_at', { ascending: false });

    if (error) {
      console.error('Fetch enquiries database error:', error.message);
      return { success: false, error: `Failed to load enquiries: ${error.message}` };
    }

    return { success: true, data: enquiries || [] };
  } catch (err) {
    console.error('Fetch enquiries exception:', err);
    return { success: false, error: err.message || 'Database connection error.' };
  }
}

/**
 * Update Enquiry status
 */
export async function updateAdminEnquiryStatus(enquiryId, newStatus) {
  if (!isSupabaseConfigured) {
    return { success: false, error: 'Supabase configuration is missing.' };
  }

  try {
    const { error } = await supabase
      .from('enquiries')
      .update({ status: newStatus, updated_at: new Date().toISOString() })
      .eq('id', enquiryId);

    if (error) return { success: false, error: error.message };
    return { success: true };
  } catch (err) {
    return { success: false, error: err.message };
  }
}

/**
 * Fetch Registered Patients Directory from Supabase
 */
export async function fetchAdminPatients() {
  if (!isSupabaseConfigured) {
    return { success: false, error: 'Supabase configuration is missing.' };
  }

  try {
    const { data: patients, error } = await supabase
      .from('patients')
      .select('*')
      .order('created_at', { ascending: false });

    if (error) {
      console.error('Fetch patients database error:', error.message);
      return { success: false, error: `Failed to load patients: ${error.message}` };
    }

    return { success: true, data: patients || [] };
  } catch (err) {
    console.error('Fetch patients exception:', err);
    return { success: false, error: err.message || 'Database connection error.' };
  }
}

/**
 * Generate a secure temporary signed URL for viewing/downloading a private prescription file
 */
export async function getPrescriptionSignedUrl(filePath, expiresInSeconds = 300) {
  if (!filePath) {
    return { success: false, error: 'File path unavailable.' };
  }

  if (!isSupabaseConfigured) {
    return { success: false, error: 'Supabase configuration is missing.' };
  }

  try {
    const { data, error } = await supabase.storage
      .from('prescriptions')
      .createSignedUrl(filePath, expiresInSeconds);

    if (error) {
      console.error('Storage createSignedUrl error:', error);
      return { success: false, error: error.message || 'Failed to generate secure signed URL.' };
    }

    if (!data?.signedUrl) {
      return { success: false, error: 'Unable to generate secure file URL.' };
    }

    return { success: true, signedUrl: data.signedUrl };
  } catch (err) {
    console.error('getPrescriptionSignedUrl exception:', err);
    return { success: false, error: err.message || 'Error generating file download URL.' };
  }
}

/**
 * Fetch 360-degree Customer Profile Details (Orders, Prescriptions, Payments, Event Logs)
 */
export async function fetchCustomerDetails(patientId) {
  if (!patientId) return { success: false, error: 'Patient ID is required.' };
  if (!isSupabaseConfigured) return { success: false, error: 'Supabase is not configured.' };

  try {
    const [patRes, ordRes, enqRes, payRes, evtRes] = await Promise.all([
      supabase.from('patients').select('*').eq('id', patientId).single(),
      supabase.from('orders').select('*, payments(*)').eq('patient_id', patientId).order('created_at', { ascending: false }),
      supabase.from('enquiries').select('*, prescriptions(*)').eq('patient_id', patientId).order('created_at', { ascending: false }),
      supabase.from('payments').select('*').eq('patient_id', patientId).order('created_at', { ascending: false }),
      supabase.from('analytics_events').select('*').eq('patient_id', patientId).order('created_at', { ascending: false }).limit(50)
    ]);

    return {
      success: true,
      data: {
        profile: patRes.data || null,
        orders: ordRes.data || [],
        enquiries: enqRes.data || [],
        payments: payRes.data || [],
        events: evtRes.data || []
      }
    };
  } catch (err) {
    console.error('Fetch customer details exception:', err);
    return { success: false, error: err.message || 'Error fetching customer profile.' };
  }
}

/**
 * Fetch user interaction analytics events for Admin Event Viewer
 */
export async function fetchAnalyticsEvents(limit = 100) {
  if (!isSupabaseConfigured) return { success: true, data: [] };

  try {
    const { data: events, error } = await supabase
      .from('analytics_events')
      .select('*')
      .order('created_at', { ascending: false })
      .limit(limit);

    if (error) {
      console.warn('Fetch analytics events warning:', error.message);
      return { success: true, data: [] };
    }

    return { success: true, data: events || [] };
  } catch (err) {
    console.warn('Fetch analytics events exception:', err);
    return { success: true, data: [] };
  }
}
