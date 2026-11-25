import { createClient } from '@supabase/supabase-js';

const supabaseUrl = 'https://lacsmipikpohchhdfzjn.supabase.co';
const supabaseAnonKey = 'sb_publishable_-Kx62Hm3TebdU5uTaS6wRw_3zRyNsdU';

const supabase = createClient(supabaseUrl, supabaseAnonKey);

async function testNewGuestRpc() {
  console.log('--- TESTING NEW ATOMIC GUEST SUBMISSION RPC ---');

  const enquiryCode = 'HE-2026-TEST' + Math.floor(Math.random() * 1000);
  const { data, error } = await supabase.rpc('submit_guest_prescription_secure', {
    p_full_name: 'Tarun Production Test',
    p_phone_e164: '+918305059502',
    p_city: 'Bengaluru',
    p_email: null,
    p_enquiry_code: enquiryCode,
    p_file_path: `guest/${enquiryCode}/prescription_test.pdf`,
    p_file_name: 'prescription_test.pdf',
    p_file_type: 'application/pdf',
    p_file_size: 2048,
    p_notes: 'Production E2E verification test'
  });

  console.log('RPC submit_guest_prescription_secure Error:', error);
  console.log('RPC submit_guest_prescription_secure Output:', JSON.stringify(data, null, 2));
}

testNewGuestRpc();
