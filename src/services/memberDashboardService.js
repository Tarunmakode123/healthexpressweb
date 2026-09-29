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
 * Formats date into readable group string (TODAY, YESTERDAY, MMM DD, YYYY)
 */
export function formatTimelineDateGroup(dateStr) {
  if (!dateStr) return 'EARLIER';
  const eventDate = new Date(dateStr);
  const now = new Date();

  const isToday = eventDate.toDateString() === now.toDateString();
  
  const yesterday = new Date(now);
  yesterday.setDate(now.getDate() - 1);
  const isYesterday = eventDate.toDateString() === yesterday.toDateString();

  if (isToday) return 'TODAY';
  if (isYesterday) return 'YESTERDAY';

  return eventDate.toLocaleDateString('en-IN', {
    day: 'numeric',
    month: 'short',
    year: 'numeric'
  }).toUpperCase();
}

/**
 * Builds unified, chronological activity timeline stream
 */
export function buildUnifiedTimelineStream({ events = [], orders = [], prescriptions = [], enquiries = [], payments = [] } = {}) {
  const unifiedItems = [];

  // 1. Process Analytics Events
  events.forEach(evt => {
    let title = 'Website Interaction';
    let description = evt.page_path || 'Explored Health Express';
    let category = 'website';
    let iconType = 'globe';

    switch (evt.event_type) {
      case 'OTP_REQUESTED':
        title = 'OTP Verification Code Requested';
        description = 'Requested SMS OTP code for mobile verification';
        category = 'account';
        iconType = 'phone';
        break;
      case 'OTP_VERIFIED':
      case 'LOGIN_SUCCESS':
        title = 'Account Sign In';
        description = 'Successfully authenticated via SMS OTP';
        category = 'account';
        iconType = 'shield';
        break;
      case 'PAGE_VIEW':
        title = 'Page View';
        description = `Visited ${evt.page_path || 'website'}`;
        category = 'website';
        iconType = 'eye';
        break;
      case 'SERVICE_VIEW':
        title = 'Viewed Health Service';
        description = evt.metadata?.service_name || `Explored service on ${evt.page_path}`;
        category = 'website';
        iconType = 'activity';
        break;
      case 'HEALTH_CALCULATOR_USED':
      case 'HEALTH_CALCULATOR_VIEW':
        title = 'Used Health Calculator';
        description = `Ran ${evt.metadata?.calculator_name || 'Health Assessment'}`;
        category = 'website';
        iconType = 'calculator';
        break;
      case 'SURGERY_VIEW':
        title = 'Viewed Surgery Care Package';
        description = `Explored surgical procedures on ${evt.page_path}`;
        category = 'website';
        iconType = 'hospital';
        break;
      case 'PRESCRIPTION_UPLOADED':
        title = 'Prescription File Uploaded';
        description = 'Submitted medical prescription for review';
        category = 'prescriptions';
        iconType = 'file-text';
        break;
      case 'ORDER_CREATED':
        title = 'Order Initiated';
        description = `Created order ${evt.metadata?.order_code || ''}`;
        category = 'orders';
        iconType = 'shopping-bag';
        break;
      case 'PAYMENT_SUCCESS':
        title = 'Payment Successful';
        description = `Paid ₹${evt.metadata?.amount || ''} for healthcare order`;
        category = 'payments';
        iconType = 'credit-card';
        break;
      case 'LOGOUT':
        title = 'Signed Out';
        description = 'Logged out of Health Express session';
        category = 'account';
        iconType = 'log-out';
        break;
      default:
        title = evt.event_type.replace(/_/g, ' ');
        category = 'website';
    }

    unifiedItems.push({
      id: evt.event_id || `evt_${evt.id}`,
      type: evt.event_type,
      category,
      title,
      description,
      iconType,
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
      title: `Prescription Uploaded (${code})`,
      description: `File: ${p.file_name || 'Medical Document'} • Status: ${(p.enquiries?.status || 'under_review').replace(/_/g, ' ')}`,
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
      title: `Care Enquiry Submitted (${code})`,
      description: `Status: ${(e.status || 'pending').replace(/_/g, ' ')}${e.notes ? ` • Note: ${e.notes}` : ''}`,
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
      title: `Diagnostic Order (${code})`,
      description: `Amount: ₹${o.final_amount || o.subtotal || 0} • Status: ${(o.order_status || 'created').replace(/_/g, ' ')} • Payment: ${(o.payment_status || 'pending').replace(/_/g, ' ')}`,
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
      title: `Payment ${pay.payment_status?.toUpperCase() || 'RECORD'}`,
      description: `Amount: ₹${pay.amount || 0} • Method: ${pay.payment_method || 'Online'}`,
      iconType: 'credit-card',
      timestamp: pay.created_at,
      raw: pay
    });
  });

  // Sort unified items strictly descending (newest first)
  unifiedItems.sort((a, b) => new Date(b.timestamp).getTime() - new Date(a.timestamp).getTime());

  // Group by Date Banner
  const groupedMap = {};
  unifiedItems.forEach(item => {
    const groupKey = formatTimelineDateGroup(item.timestamp);
    if (!groupedMap[groupKey]) {
      groupedMap[groupKey] = [];
    }
    groupedMap[groupKey].push(item);
  });

  return {
    allItems: unifiedItems,
    groupedMap
  };
}
