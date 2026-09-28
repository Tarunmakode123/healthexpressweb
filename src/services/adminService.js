import { supabase, isSupabaseConfigured } from '../lib/supabase.js';
import { DEMO_PROMO_CODES } from './promoService.js';

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
 * Update Order status in database
 */
export async function updateAdminOrderStatus(orderId, nextStatus) {
  if (!orderId || !nextStatus) return { success: false, error: 'Missing order parameters.' };

  if (!isSupabaseConfigured) return { success: false, error: 'Supabase configuration missing.' };

  try {
    const { data, error } = await supabase
      .from('orders')
      .update({ order_status: nextStatus, updated_at: new Date().toISOString() })
      .eq('id', orderId)
      .select();

    if (error) return { success: false, error: error.message };
    return { success: true, data: data[0] };
  } catch (err) {
    return { success: false, error: err.message };
  }
}

/**
 * Collect COD Payment from Admin Panel
 */
export async function markCodPaymentCollected(orderId) {
  if (!orderId) return { success: false, error: 'Missing Order ID.' };

  if (!isSupabaseConfigured) return { success: false, error: 'Supabase configuration missing.' };

  try {
    const { data, error } = await supabase.rpc('mark_cod_payment_collected', {
      p_order_id: orderId
    });

    if (error) return { success: false, error: error.message };
    return { success: true, data };
  } catch (err) {
    return { success: false, error: err.message };
  }
}

/**
 * Fetch all prescription uploads for Admin Panel
 */
export async function fetchAdminPrescriptions() {
  if (!isSupabaseConfigured) return { success: true, data: [] };

  try {
    const { data, error } = await supabase
      .from('prescriptions')
      .select(`
        *,
        enquiries (*),
        patients (*)
      `)
      .order('created_at', { ascending: false });

    if (error) return { success: false, error: error.message };
    return { success: true, data: data || [] };
  } catch (err) {
    return { success: false, error: err.message };
  }
}

/**
 * Update enquiry status
 */
export async function updateAdminEnquiryStatus(enquiryId, nextStatus) {
  if (!enquiryId || !nextStatus) return { success: false, error: 'Missing parameters.' };

  if (!isSupabaseConfigured) return { success: false, error: 'Supabase configuration missing.' };

  try {
    const { data, error } = await supabase
      .from('enquiries')
      .update({ status: nextStatus, updated_at: new Date().toISOString() })
      .eq('id', enquiryId)
      .select();

    if (error) return { success: false, error: error.message };
    return { success: true, data: data[0] };
  } catch (err) {
    return { success: false, error: err.message };
  }
}

/**
 * Fetch all patients for Admin Patient Directory
 */
export async function fetchAdminPatients() {
  if (!isSupabaseConfigured) return { success: true, data: [] };

  try {
    const { data, error } = await supabase
      .from('patients')
      .select('*')
      .order('created_at', { ascending: false });

    if (error) return { success: false, error: error.message };
    return { success: true, data: data || [] };
  } catch (err) {
    return { success: false, error: err.message };
  }
}

/**
 * Get signed download URL for private prescription file in storage
 */
export async function getPrescriptionSignedUrl(filePath) {
  if (!filePath) return null;
  if (!isSupabaseConfigured) return null;

  try {
    const { data, error } = await supabase
      .storage
      .from('prescriptions')
      .createSignedUrl(filePath, 3600); // 1 hour expiration

    if (error) return null;
    return data.signedUrl;
  } catch (e) {
    return null;
  }
}

/**
 * Fetch Customer 360 Unified Profile
 */
export async function fetchCustomerDetails(patientId) {
  if (!patientId || !isSupabaseConfigured) return { success: false, error: 'Invalid parameters.' };

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

// ============================================================
// ADMIN PROMO CODE / COUPON MANAGEMENT SERVICES WITH SCOPE
// ============================================================

let localAdminPromosStore = [...DEMO_PROMO_CODES];

/**
 * Fetch all promo codes for Admin Panel Data Table
 */
export async function fetchAdminPromoCodes() {
  if (!isSupabaseConfigured) {
    return { success: true, data: localAdminPromosStore };
  }

  try {
    const { data, error } = await supabase
      .from('promo_codes')
      .select('*')
      .order('created_at', { ascending: false });

    if (error) {
      console.warn('Fetch admin promo codes warning:', error.message);
      return { success: true, data: localAdminPromosStore };
    }

    return { success: true, data: data || [] };
  } catch (err) {
    console.error('Fetch admin promo codes exception:', err);
    return { success: true, data: localAdminPromosStore };
  }
}

/**
 * Create new Promo Code from Admin Panel
 */
export async function createAdminPromoCode(promoData) {
  const normalizedCode = (promoData.code || '').trim().toUpperCase();

  if (!normalizedCode) return { success: false, error: 'Promo code is required.' };
  if (!promoData.discount_value || Number(promoData.discount_value) <= 0) {
    return { success: false, error: 'Discount value must be greater than 0.' };
  }

  const payload = {
    code: normalizedCode,
    discount_type: promoData.discount_type || 'flat',
    discount_value: Number(promoData.discount_value),
    min_order_amount: Number(promoData.min_order_amount || 0),
    max_discount: promoData.max_discount ? Number(promoData.max_discount) : null,
    applicable_scope: promoData.applicable_scope || 'all',
    applicable_categories: Array.isArray(promoData.applicable_categories) ? promoData.applicable_categories : [],
    applicable_items: Array.isArray(promoData.applicable_items) ? promoData.applicable_items : [],
    valid_from: promoData.valid_from || new Date().toISOString(),
    valid_until: promoData.valid_until || null,
    usage_limit: promoData.usage_limit ? parseInt(promoData.usage_limit, 10) : null,
    is_active: promoData.is_active !== undefined ? Boolean(promoData.is_active) : true,
    used_count: 0
  };

  if (!isSupabaseConfigured) {
    const newPromo = { id: 'demo_promo_' + Date.now(), ...payload, created_at: new Date().toISOString() };
    localAdminPromosStore = [newPromo, ...localAdminPromosStore];
    return { success: true, data: newPromo };
  }

  try {
    const { data, error } = await supabase
      .from('promo_codes')
      .insert([payload])
      .select()
      .single();

    if (error) {
      return { success: false, error: error.message || 'Failed to create promo code.' };
    }

    return { success: true, data };
  } catch (err) {
    return { success: false, error: err.message || 'Database connection error.' };
  }
}

/**
 * Update existing Promo Code from Admin Panel
 */
export async function updateAdminPromoCode(id, promoData) {
  if (!id) return { success: false, error: 'Missing promo code ID.' };

  const normalizedCode = (promoData.code || '').trim().toUpperCase();

  const payload = {
    code: normalizedCode,
    discount_type: promoData.discount_type || 'flat',
    discount_value: Number(promoData.discount_value),
    min_order_amount: Number(promoData.min_order_amount || 0),
    max_discount: promoData.max_discount ? Number(promoData.max_discount) : null,
    applicable_scope: promoData.applicable_scope || 'all',
    applicable_categories: Array.isArray(promoData.applicable_categories) ? promoData.applicable_categories : [],
    applicable_items: Array.isArray(promoData.applicable_items) ? promoData.applicable_items : [],
    valid_from: promoData.valid_from || new Date().toISOString(),
    valid_until: promoData.valid_until || null,
    usage_limit: promoData.usage_limit ? parseInt(promoData.usage_limit, 10) : null,
    is_active: Boolean(promoData.is_active),
    updated_at: new Date().toISOString()
  };

  if (!isSupabaseConfigured) {
    localAdminPromosStore = localAdminPromosStore.map((p) => (p.id === id ? { ...p, ...payload } : p));
    return { success: true, data: { id, ...payload } };
  }

  try {
    const { data, error } = await supabase
      .from('promo_codes')
      .update(payload)
      .eq('id', id)
      .select()
      .single();

    if (error) return { success: false, error: error.message };
    return { success: true, data };
  } catch (err) {
    return { success: false, error: err.message };
  }
}

/**
 * Toggle Active / Inactive status for a Promo Code from Admin Panel
 */
export async function toggleAdminPromoCodeStatus(id, isActive) {
  if (!id) return { success: false, error: 'Missing promo code ID.' };

  if (!isSupabaseConfigured) {
    localAdminPromosStore = localAdminPromosStore.map((p) => (p.id === id ? { ...p, is_active: isActive } : p));
    return { success: true };
  }

  try {
    const { error } = await supabase
      .from('promo_codes')
      .update({ is_active: isActive, updated_at: new Date().toISOString() })
      .eq('id', id);

    if (error) return { success: false, error: error.message };
    return { success: true };
  } catch (err) {
    return { success: false, error: err.message };
  }
}

/**
 * Delete Promo Code from Admin Panel
 */
export async function deleteAdminPromoCode(id) {
  if (!id) return { success: false, error: 'Missing promo code ID.' };

  if (!isSupabaseConfigured) {
    localAdminPromosStore = localAdminPromosStore.filter((p) => p.id !== id);
    return { success: true };
  }

  try {
    const { error } = await supabase
      .from('promo_codes')
      .delete()
      .eq('id', id);

    if (error) return { success: false, error: error.message };
    return { success: true };
  } catch (err) {
    return { success: false, error: err.message };
  }
}
