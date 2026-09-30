import { supabase, isSupabaseConfigured } from '../lib/supabase.js';

/**
 * MEMBER DASHBOARD SERVICE
 * Centralized data service fetching 100% real Supabase records for authenticated members.
 * Strictly scoped to auth.uid() and associated patient records.
 */

/**
 * Fetch patient profile linked to authenticated user ID
 */
export async function getMemberPatientProfile(userId) {
  if (!userId || !isSupabaseConfigured || !supabase) return null;

  try {
    const { data, error } = await supabase
      .from('patients')
      .select('*')
      .eq('user_id', userId)
      .maybeSingle();

    if (error) {
      console.warn('getMemberPatientProfile notice:', error.message);
      return null;
    }
    return data;
  } catch (e) {
    console.warn('getMemberPatientProfile exception:', e);
    return null;
  }
}

/**
 * Fetch complete overview statistics for member
 */
export async function getMemberOverview(userId) {
  if (!userId || !isSupabaseConfigured || !supabase) {
    return {
      success: false,
      patient: null,
      orders: [],
      prescriptions: [],
      enquiries: [],
      payments: [],
      events: [],
      walletCoins: 0
    };
  }

  try {
    const patient = await getMemberPatientProfile(userId);
    const patientId = patient?.id || null;

    // Parallel fetch scoped strictly to auth.uid() / patientId
    const [ordRes, presRes, enqRes, payRes, evtRes, walRes] = await Promise.all([
      supabase.from('orders').select('*, payments(*)').eq('user_id', userId).order('created_at', { ascending: false }),
      supabase.from('prescriptions').select('*, enquiries(*)').eq('user_id', userId).order('created_at', { ascending: false }),
      patientId 
        ? supabase.from('enquiries').select('*, prescriptions(*)').eq('patient_id', patientId).order('created_at', { ascending: false })
        : Promise.resolve({ data: [] }),
      patientId 
        ? supabase.from('payments').select('*').eq('patient_id', patientId).order('created_at', { ascending: false })
        : Promise.resolve({ data: [] }),
      supabase.from('analytics_events').select('*').eq('user_id', userId).order('created_at', { ascending: false }).limit(100),
      patientId 
        ? supabase.from('wallet_accounts').select('coin_balance').eq('patient_id', patientId).maybeSingle()
        : Promise.resolve({ data: null })
    ]);

    return {
      success: true,
      patient,
      orders: ordRes.data || [],
      prescriptions: presRes.data || [],
      enquiries: enqRes.data || [],
      payments: payRes.data || [],
      events: evtRes.data || [],
      walletCoins: walRes?.data?.coin_balance || 0
    };
  } catch (err) {
    console.error('getMemberOverview exception:', err);
    return {
      success: false,
      error: err.message,
      orders: [],
      prescriptions: [],
      enquiries: [],
      payments: [],
      events: [],
      walletCoins: 0
    };
  }
}

/**
 * Formats date into readable group string in IST (TODAY, YESTERDAY, SEP 27, 2026)
 */
export function formatTimelineDateGroup(dateStr) {
  if (!dateStr) return 'EARLIER';
  const eventDate = new Date(dateStr);
  if (isNaN(eventDate.getTime())) return 'EARLIER';

  const now = new Date();
  const optionsIST = { timeZone: 'Asia/Kolkata', year: 'numeric', month: '2-digit', day: '2-digit' };
  
  const eventIST = new Intl.DateTimeFormat('en-CA', optionsIST).format(eventDate); // YYYY-MM-DD in IST
  const nowIST = new Intl.DateTimeFormat('en-CA', optionsIST).format(now);

  const yesterday = new Date(now.getTime() - 24 * 60 * 60 * 1000);
  const yesterdayIST = new Intl.DateTimeFormat('en-CA', optionsIST).format(yesterday);

  if (eventIST === nowIST) return 'TODAY';
  if (eventIST === yesterdayIST) return 'YESTERDAY';

  // Format as SEP 27, 2026 for older activity
  const dateFormatted = new Intl.DateTimeFormat('en-US', {
    timeZone: 'Asia/Kolkata',
    month: 'short',
    day: 'numeric',
    year: 'numeric'
  }).format(eventDate); // e.g. "Sep 27, 2026"

  return dateFormatted.toUpperCase(); // "SEP 27, 2026"
}

/**
 * Formats exact event time in 12-hour IST format (e.g. 11:43 AM)
 */
export function formatTimelineTimeIST(dateStr) {
  if (!dateStr) return '';
  const date = new Date(dateStr);
  if (isNaN(date.getTime())) return '';

  return new Intl.DateTimeFormat('en-US', {
    timeZone: 'Asia/Kolkata',
    hour: 'numeric',
    minute: '2-digit',
    hour12: true
  }).format(date); // e.g. "11:43 AM"
}

/**
 * CENTRALIZED EVENT PRESENTATION FORMATTER
 * Translates technical analytics events into human-readable titles and descriptions.
 */
export function formatActivityEvent(evt) {
  const path = evt.page_path || '';
  let title = 'Website Interaction';
  let description = 'Explored Health Express portal';
  let category = 'website';
  let iconType = 'globe';

  switch (evt.event_type) {
    case 'OTP_REQUESTED':
      title = 'OTP Verification Requested';
      description = 'Requested SMS OTP code for phone login.';
      category = 'account';
      iconType = 'phone';
      break;

    case 'OTP_VERIFIED':
    case 'LOGIN_SUCCESS':
      title = 'Account Sign In';
      description = 'Successfully authenticated via SMS OTP.';
      category = 'account';
      iconType = 'shield';
      break;

    case 'PAGE_VIEW':
      if (path === '/' || path === '') {
        title = 'Visited Health Express';
        description = 'Explored the main Health Express homepage.';
      } else if (path.includes('/services')) {
        title = 'Explored Diagnostic Services';
        description = 'Viewed the Diagnostic Services section.';
      } else if (path.includes('/health-calculators')) {
        title = 'Used Health Calculator';
        description = 'Opened the Health Calculator section.';
      } else if (path.includes('/surgeries')) {
        title = 'Viewed Surgery Packages';
        description = 'Explored surgical procedures and care packages.';
      } else if (path.includes('/about')) {
        title = 'Viewed About Health Express';
        description = 'Learned about Health Express care coordinators.';
      } else if (path.includes('/contact')) {
        title = 'Visited Contact Support';
        description = 'Navigated to Health Express care manager support.';
      } else if (path.includes('/dashboard')) {
        title = 'Opened Member Dashboard';
        description = 'Accessed your personal Health Express dashboard.';
      } else {
        title = 'Page View';
        description = `Visited ${path}`;
      }
      category = 'website';
      iconType = 'eye';
      break;

    case 'SERVICE_VIEW':
      title = 'Explored Diagnostic Service';
      description = evt.metadata?.service_name ? `Viewed ${evt.metadata.service_name}` : `Viewed service details on ${path}`;
      category = 'website';
      iconType = 'activity';
      break;

    case 'HEALTH_CALCULATOR_USED':
    case 'HEALTH_CALCULATOR_VIEW':
      title = 'Used Health Calculator';
      description = evt.metadata?.calculator_name ? `Ran ${evt.metadata.calculator_name}` : 'Calculated personal health assessment metrics.';
      category = 'website';
      iconType = 'calculator';
      break;

    case 'SURGERY_VIEW':
      title = 'Viewed Surgery Care Package';
      description = evt.metadata?.surgery_name ? `Explored ${evt.metadata.surgery_name}` : `Explored surgical options on ${path}`;
      category = 'website';
      iconType = 'hospital';
      break;

    case 'PRESCRIPTION_UPLOADED':
      title = 'Prescription Uploaded';
      description = evt.metadata?.file_name ? `Submitted prescription file ${evt.metadata.file_name}` : 'Prescription submitted successfully.';
      category = 'prescriptions';
      iconType = 'file-text';
      break;

    case 'ORDER_CREATED':
      title = 'Order Placed';
      description = evt.metadata?.order_code ? `Order ${evt.metadata.order_code} created successfully.` : 'Your order has been created.';
      category = 'orders';
      iconType = 'shopping-bag';
      break;

    case 'PAYMENT_SUCCESS':
      title = 'Payment Successful';
      description = evt.metadata?.amount ? `Payment of ₹${evt.metadata.amount} completed successfully.` : 'Payment received for diagnostic order.';
      category = 'payments';
      iconType = 'credit-card';
      break;

    case 'LOGOUT':
      title = 'Signed Out';
      description = 'Logged out of Health Express session.';
      category = 'account';
      iconType = 'log-out';
      break;

    default:
      title = evt.event_type.replace(/_/g, ' ');
      description = `Recorded event on ${path}`;
      category = 'website';
  }

  return { title, description, category, iconType };
}

/**
 * Builds unified, chronological activity timeline stream with source deduplication
 */
export function buildUnifiedTimelineStream({ events = [], orders = [], prescriptions = [], enquiries = [], payments = [] } = {}) {
  const unifiedItems = [];

  // 1. Process Analytics Events (using centralized formatter)
  events.forEach(evt => {
    const formatted = formatActivityEvent(evt);
    unifiedItems.push({
      id: evt.event_id || `evt_${evt.id}`,
      type: evt.event_type,
      category: formatted.category,
      title: formatted.title,
      description: formatted.description,
      iconType: formatted.iconType,
      timestamp: evt.created_at || new Date().toISOString(),
      raw: evt
    });
  });

  // 2. Process Prescriptions & Enquiries
  prescriptions.forEach(p => {
    const code = p.enquiries?.enquiry_code || (p.id ? `HE-2026-${p.id.slice(0, 6).toUpperCase()}` : 'UPLOAD');
    unifiedItems.push({
      id: `pres_${p.id}`,
      type: 'PRESCRIPTION_RECORD',
      category: 'prescriptions',
      title: 'Prescription Uploaded',
      description: `Prescription ${code} submitted successfully. File: ${p.file_name || 'Medical Document'}`,
      iconType: 'file-text',
      timestamp: p.created_at,
      raw: p
    });
  });

  enquiries.forEach(e => {
    const code = e.enquiry_code || (e.id ? `HEX-ENQ-${e.id.slice(0, 6).toUpperCase()}` : 'ENQUIRY');
    unifiedItems.push({
      id: `enq_${e.id}`,
      type: 'ENQUIRY_RECORD',
      category: 'prescriptions',
      title: 'Care Enquiry Submitted',
      description: `Enquiry ${code} received. Status: ${(e.status || 'pending').replace(/_/g, ' ')}`,
      iconType: 'message-square',
      timestamp: e.created_at,
      raw: e
    });
  });

  // 3. Process Orders
  orders.forEach(o => {
    const code = o.order_code || (o.id ? `HE-ORD-${o.id.slice(0, 6).toUpperCase()}` : 'ORDER');
    unifiedItems.push({
      id: `ord_${o.id}`,
      type: 'ORDER_RECORD',
      category: 'orders',
      title: 'Order Placed',
      description: `Order ${code} created successfully. Amount: ₹${o.final_amount || o.subtotal || 0}`,
      iconType: 'shopping-bag',
      timestamp: o.created_at,
      raw: o
    });
  });

  // 4. Process Payments
  payments.forEach(pay => {
    unifiedItems.push({
      id: `pay_${pay.id}`,
      type: 'PAYMENT_RECORD',
      category: 'payments',
      title: 'Payment Completed',
      description: `Payment of ₹${pay.amount || 0} completed via ${pay.payment_method || 'Online'}.`,
      iconType: 'credit-card',
      timestamp: pay.created_at,
      raw: pay
    });
  });

  // Sort unified items strictly descending (newest first)
  unifiedItems.sort((a, b) => new Date(b.timestamp).getTime() - new Date(a.timestamp).getTime());

  // Source-level Timeline Deduplication: collapse identical items logged within 10 seconds of each other
  const deduplicatedItems = [];
  unifiedItems.forEach((item, index) => {
    if (index === 0) {
      deduplicatedItems.push(item);
      return;
    }

    const prev = deduplicatedItems[deduplicatedItems.length - 1];
    const timeDiff = Math.abs(new Date(item.timestamp).getTime() - new Date(prev.timestamp).getTime());

    // If title and category match and timestamps are within 10 seconds, skip duplicate
    if (item.title === prev.title && item.category === prev.category && timeDiff < 10000) {
      return;
    }

    deduplicatedItems.push(item);
  });

  return {
    allItems: deduplicatedItems
  };
}
