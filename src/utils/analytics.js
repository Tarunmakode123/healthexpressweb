import { supabase, isSupabaseConfigured } from '../lib/supabase.js';

function getSessionId() {
  let sid = sessionStorage.getItem('hex_session_id');
  if (!sid) {
    sid = 'hex_sess_' + Math.random().toString(36).substring(2, 9) + '_' + Date.now();
    sessionStorage.setItem('hex_session_id', sid);
  }
  return sid;
}

/**
 * Log non-PII user interaction & system analytics events to Supabase database
 */
export async function logAnalyticsEvent(eventType, { pagePath = window.location.pathname, metadata = {}, userId = null, patientId = null } = {}) {
  if (!eventType) return;

  const eventData = {
    event_id: 'evt_' + Math.random().toString(36).substring(2, 9) + '_' + Date.now(),
    session_id: getSessionId(),
    user_id: userId,
    patient_id: patientId,
    event_type: eventType,
    page_path: pagePath || window.location.pathname,
    metadata: metadata
  };

  if (isSupabaseConfigured) {
    try {
      await supabase.from('analytics_events').insert(eventData);
    } catch (err) {
      console.warn('Analytics event logging warning:', err);
    }
  }
}
