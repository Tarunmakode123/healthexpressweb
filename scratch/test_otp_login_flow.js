import { createClient } from '@supabase/supabase-js';

const supabaseUrl = 'https://lacsmipikpohchhdfzjn.supabase.co';
const supabaseAnonKey = 'sb_publishable_-Kx62Hm3TebdU5uTaS6wRw_3zRyNsdU';

const supabase = createClient(supabaseUrl, supabaseAnonKey);

async function testRpcGuestPatient() {
  console.log('--- TESTING RPC get_or_create_guest_patient ---');

  try {
    const { data, error } = await supabase.rpc('get_or_create_guest_patient', {
      p_full_name: 'Tarun Test',
      p_phone_e164: '+918305059502',
      p_city: 'Bengaluru',
      p_email: null
    });

    console.log('RPC get_or_create_guest_patient Error:', error);
    console.log('RPC get_or_create_guest_patient Returned Patient ID:', data);
  } catch (e) {
    console.log('RPC Exception:', e.message);
  }
}

testRpcGuestPatient();
