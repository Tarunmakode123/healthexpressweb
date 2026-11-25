import { createClient } from '@supabase/supabase-js';

const supabaseUrl = 'https://lacsmipikpohchhdfzjn.supabase.co';
const supabaseAnonKey = 'sb_publishable_-Kx62Hm3TebdU5uTaS6wRw_3zRyNsdU';

const supabase = createClient(supabaseUrl, supabaseAnonKey);

async function inspectProductionDatabase() {
  console.log('=== READ-ONLY FORENSIC DIAGNOSTIC OF PRODUCTION SUPABASE DATABASE ===\n');

  // 1. Test RPC submit_guest_prescription_secure availability
  console.log('1. Testing RPC submit_guest_prescription_secure...');
  const testEnquiryCode = 'HE-DIAGNOSTIC-TEST';
  const { data: rpcData, error: rpcError } = await supabase.rpc('submit_guest_prescription_secure', {
    p_full_name: 'Diagnostic Test User',
    p_phone_e164: '+918305059502',
    p_city: 'Bengaluru',
    p_email: null,
    p_enquiry_code: testEnquiryCode,
    p_file_path: 'guest/HE-DIAGNOSTIC-TEST/test.pdf',
    p_file_name: 'test.pdf',
    p_file_type: 'application/pdf',
    p_file_size: 1024,
    p_notes: 'Read-only diagnostic test'
  });

  console.log('RPC Output:', JSON.stringify(rpcData, null, 2));
  console.log('RPC Error:', JSON.stringify(rpcError, null, 2));

  // 2. Query patients table for phone +918305059502
  console.log('\n2. Querying public.patients table for phone records...');
  const { data: patientRows, error: patientErr } = await supabase
    .from('patients')
    .select('id, user_id, full_name, phone_e164, is_verified, created_at')
    .or('phone_e164.eq.+918305059502,phone_e164.eq.8305059502');

  console.log('Patient records found:', patientRows);
  console.log('Patient query error:', patientErr);
}

inspectProductionDatabase();
