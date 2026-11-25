import { createClient } from '@supabase/supabase-js';

const supabaseUrl = 'https://lacsmipikpohchhdfzjn.supabase.co';
const supabaseAnonKey = 'sb_publishable_-Kx62Hm3TebdU5uTaS6wRw_3zRyNsdU';

const supabase = createClient(supabaseUrl, supabaseAnonKey);

async function testOtpRequest() {
  console.log('--- TESTING OTP REQUEST FOR +918305059502 ---');

  const { data, error } = await supabase.auth.signInWithOtp({
    phone: '+918305059502'
  });

  console.log('OTP Request Error:', error);
  console.log('OTP Request Data:', data);
}

testOtpRequest();
