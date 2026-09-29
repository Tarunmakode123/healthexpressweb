import { supabase, isSupabaseConfigured } from '../lib/supabase.js';
import { DEMO_PROMO_CODES } from './promoService.js';
import { DEFAULT_WALLET_SETTINGS } from './walletService.js';

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

    const cleanEmail = (authData.user?.email || email).toLowerCase().trim();

    // 2. Database RBAC check via SECURITY DEFINER check_is_admin() RPC
    let { data: isAdmin, error: rpcError } = await supabase.rpc('check_is_admin');

    if (rpcError) {
      console.warn('RPC check_is_admin warning:', rpcError.message);
    }

    // 3. Auto-link & grant for primary admin account if check_is_admin is false or unlinked
    if (isAdmin !== true && cleanEmail === 'admin@healthexpress.in') {
      try {
        await supabase
          .from('patients')
          .update({ is_admin: true, user_id: authData.user.id })
          .eq('email', cleanEmail);

        const { data: recheck } = await supabase.rpc('check_is_admin');
        isAdmin = recheck === true || cleanEmail === 'admin@healthexpress.in';
      } catch (e) {
        console.warn('Auto admin patient link error:', e);
        isAdmin = cleanEmail === 'admin@healthexpress.in';
      }
    }

    // Strictly enforce database is_admin = true or primary admin account
    if (isAdmin !== true && cleanEmail !== 'admin@healthexpress.in') {
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

const DEMO_PATIENTS = [
  { id: 'pat_1', full_name: 'Rahul Sharma', email: 'rahul.s@example.com', phone_e164: '+919876543210', user_id: 'usr_1', city: 'Bengaluru', created_at: new Date(Date.now() - 86400000 * 2).toISOString() },
  { id: 'pat_2', full_name: 'Priya Patel', email: 'priya.p@example.com', phone_e164: '+919812345678', user_id: 'usr_2', city: 'Mumbai', created_at: new Date(Date.now() - 86400000 * 5).toISOString() },
  { id: 'pat_3', full_name: 'Amit Verma', email: 'guest.amit@example.com', phone_e164: '+919988776655', user_id: null, city: 'Delhi', created_at: new Date(Date.now() - 86400000 * 10).toISOString() }
];

const DEMO_ORDERS = [
  { id: 'ord_101', order_code: 'HEX-ORD-9012', customer_name: 'Rahul Sharma', customer_phone: '+919876543210', total_amount: 1499, payment_status: 'PAID', order_status: 'CONFIRMED', payment_method: 'ONLINE', created_at: new Date().toISOString(), payments: [{ id: 'pay_1', amount: 1499, payment_status: 'PAID', payment_method: 'ONLINE' }] },
  { id: 'ord_102', order_code: 'HEX-ORD-9013', customer_name: 'Priya Patel', customer_phone: '+919812345678', total_amount: 899, payment_status: 'PAID', order_status: 'DELIVERED', payment_method: 'ONLINE', created_at: new Date(Date.now() - 86400000 * 1).toISOString(), payments: [{ id: 'pay_2', amount: 899, payment_status: 'PAID', payment_method: 'ONLINE' }] },
  { id: 'ord_103', order_code: 'HEX-ORD-9014', customer_name: 'Amit Verma', customer_phone: '+919988776655', total_amount: 2499, payment_status: 'PENDING', order_status: 'PENDING', payment_method: 'COD', created_at: new Date(Date.now() - 3600000 * 4).toISOString(), payments: [{ id: 'pay_3', amount: 2499, payment_status: 'PENDING', payment_method: 'COD' }] },
  { id: 'ord_104', order_code: 'HEX-ORD-9015', customer_name: 'Suresh Kumar', customer_phone: '+919123456789', total_amount: 599, payment_status: 'FAILED', order_status: 'CANCELLED', payment_method: 'ONLINE', created_at: new Date(Date.now() - 86400000 * 3).toISOString(), payments: [{ id: 'pay_4', amount: 599, payment_status: 'FAILED', payment_method: 'ONLINE' }] }
];

const DEMO_PAYMENTS = [
  { id: 'pay_1', razorpay_order_id: 'rzp_ord_001', razorpay_payment_id: 'rzp_pay_001', amount: 1499, payment_status: 'PAID', payment_method: 'ONLINE', created_at: new Date().toISOString(), patients: DEMO_PATIENTS[0], orders: DEMO_ORDERS[0] },
  { id: 'pay_2', razorpay_order_id: 'rzp_ord_002', razorpay_payment_id: 'rzp_pay_002', amount: 899, payment_status: 'PAID', payment_method: 'ONLINE', created_at: new Date(Date.now() - 86400000 * 1).toISOString(), patients: DEMO_PATIENTS[1], orders: DEMO_ORDERS[1] },
  { id: 'pay_3', razorpay_order_id: 'cod_no_rzp', razorpay_payment_id: 'cod_pending', amount: 2499, payment_status: 'PENDING', payment_method: 'COD', created_at: new Date(Date.now() - 3600000 * 4).toISOString(), patients: DEMO_PATIENTS[2], orders: DEMO_ORDERS[2] }
];

const DEMO_PRESCRIPTIONS = [
  { id: 'rx_1', enquiry_code: 'HEX-ENQ-1001', patient_name: 'Rahul Sharma', patient_phone: '+919876543210', status: 'pending_review', file_path: 'prescriptions/rx1.pdf', created_at: new Date().toISOString(), patients: DEMO_PATIENTS[0] },
  { id: 'rx_2', enquiry_code: 'HEX-ENQ-1002', patient_name: 'Priya Patel', patient_phone: '+919812345678', status: 'approved', file_path: 'prescriptions/rx2.jpg', created_at: new Date(Date.now() - 86400000).toISOString(), patients: DEMO_PATIENTS[1] }
];

/**
 * Fetch all orders and payments for Admin Panel from Supabase
 */
export async function fetchAdminOrders() {
  if (!isSupabaseConfigured) {
    return { success: true, data: DEMO_ORDERS };
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
    return { success: true, data: DEMO_PAYMENTS };
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
  if (!isSupabaseConfigured) return { success: true, data: DEMO_PRESCRIPTIONS };

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
  if (!isSupabaseConfigured) return { success: true, data: DEMO_PATIENTS };

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

// ============================================================
// HEALTH COINS & REWARDS — ADMIN MANAGEMENT SERVICES
// ============================================================

let localAdminWalletSettings = { ...DEFAULT_WALLET_SETTINGS };

/**
 * Fetch Wallet Settings for Admin Configuration Form
 */
export async function fetchAdminWalletSettings() {
  if (!isSupabaseConfigured || !supabase) {
    return { success: true, data: localAdminWalletSettings };
  }

  try {
    const { data, error } = await supabase
      .from('wallet_settings')
      .select('*')
      .limit(1)
      .maybeSingle();

    if (error || !data) {
      return { success: true, data: localAdminWalletSettings };
    }

    const rawCats = Array.isArray(data.applicable_categories) ? data.applicable_categories : (typeof data.applicable_categories === 'string' ? JSON.parse(data.applicable_categories || '[]') : []);
    const rawItems = Array.isArray(data.applicable_items) ? data.applicable_items : (typeof data.applicable_items === 'string' ? JSON.parse(data.applicable_items || '[]') : []);

    return {
      success: true,
      data: {
        ...DEFAULT_WALLET_SETTINGS,
        ...data,
        applicable_categories: rawCats,
        applicable_items: rawItems
      }
    };
  } catch (err) {
    console.error('Fetch admin wallet settings exception:', err);
    return { success: true, data: localAdminWalletSettings };
  }
}

/**
 * Update global Wallet Configuration Settings from Admin Panel
 */
export async function updateAdminWalletSettings(settingsData) {
  const payload = {
    signup_reward_enabled: Boolean(settingsData.signup_reward_enabled),
    signup_reward_coins: Number(settingsData.signup_reward_coins || 1000),
    coins_per_rupee: Number(settingsData.coins_per_rupee || 10),
    minimum_coins_to_redeem: Number(settingsData.minimum_coins_to_redeem || 100),
    maximum_coins_per_order: Number(settingsData.maximum_coins_per_order || 500),
    minimum_order_amount: Number(settingsData.minimum_order_amount || 299),
    allow_stacking_with_promo: Boolean(settingsData.allow_stacking_with_promo),
    coin_expiry_enabled: Boolean(settingsData.coin_expiry_enabled),
    default_expiry_days: Number(settingsData.default_expiry_days || 90),
    redemption_enabled: Boolean(settingsData.redemption_enabled),
    applicable_scope: settingsData.applicable_scope || 'all',
    applicable_categories: Array.isArray(settingsData.applicable_categories) ? settingsData.applicable_categories : [],
    applicable_items: Array.isArray(settingsData.applicable_items) ? settingsData.applicable_items : [],
    updated_at: new Date().toISOString()
  };

  if (!isSupabaseConfigured || !supabase) {
    localAdminWalletSettings = { ...localAdminWalletSettings, ...payload };
    return { success: true, data: localAdminWalletSettings };
  }

  try {
    const { data: existing } = await supabase.from('wallet_settings').select('id').limit(1).maybeSingle();

    let result;
    if (existing?.id) {
      result = await supabase.from('wallet_settings').update(payload).eq('id', existing.id).select().single();
    } else {
      result = await supabase.from('wallet_settings').insert([payload]).select().single();
    }

    if (result.error) return { success: false, error: result.error.message };
    return { success: true, data: result.data };
  } catch (err) {
    console.error('Update admin wallet settings exception:', err);
    return { success: false, error: err.message };
  }
}

/**
 * Fetch all Customer Wallet Accounts for Admin Management
 */
export async function fetchAdminWalletAccounts() {
  if (!isSupabaseConfigured || !supabase) {
    return {
      success: true,
      data: [
        {
          id: 'w-demo-1',
          patient_id: 'p-demo-1',
          coin_balance: 1000,
          patients: { name: 'Rajesh Sharma', phone: '+919876543210', email: 'rajesh@example.com' },
          created_at: new Date().toISOString()
        }
      ]
    };
  }

  try {
    const { data, error } = await supabase
      .from('wallet_accounts')
      .select('*, patients(*)')
      .order('coin_balance', { ascending: false });

    if (error) return { success: false, error: error.message };
    return { success: true, data: data || [] };
  } catch (err) {
    return { success: false, error: err.message };
  }
}

/**
 * Fetch all Wallet Transaction Ledgers for Admin Audit
 */
export async function fetchAdminWalletTransactions() {
  if (!isSupabaseConfigured || !supabase) {
    return { success: true, data: [] };
  }

  try {
    const { data, error } = await supabase
      .from('wallet_transactions')
      .select('*, patients(*)')
      .order('created_at', { ascending: false })
      .limit(100);

    if (error) return { success: false, error: error.message };
    return { success: true, data: data || [] };
  } catch (err) {
    return { success: false, error: err.message };
  }
}

/**
 * Perform manual +Add or -Deduct Health Coins adjustment for a customer
 */
export async function adjustCustomerCoins({ patientId, coins, type, description }) {
  if (!patientId || !coins || !type || !description) {
    return { success: false, error: 'Patient ID, coins amount, type, and reason are required.' };
  }

  if (!isSupabaseConfigured || !supabase) {
    return { success: true, message: 'Demo coin adjustment successful.' };
  }

  try {
    const { data, error } = await supabase.rpc('admin_adjust_wallet_coins_atomic', {
      p_patient_id: patientId,
      p_coins: Number(coins),
      p_type: type,
      p_description: description.trim()
    });

    if (error) return { success: false, error: error.message };
    return { success: true, ...data };
  } catch (err) {
    console.error('adjustCustomerCoins exception:', err);
    return { success: false, error: err.message };
  }
}
