import { createClient } from '@supabase/supabase-js';

const url = "https://lacsmipikpohchhdfzjn.supabase.co";
const key = "sb_publishable_-Kx62Hm3TebdU5uTaS6wRw_3zRyNsdU";

const supabase = createClient(url, key);

async function debugLiveDB() {
  console.log('=== DEBUGGING LIVE SUPABASE ===');

  // Test calling link_guest_records_on_otp_login RPC unauthenticated
  const { data: rpcRes, error: rpcErr } = await supabase.rpc('link_guest_records_on_otp_login');
  console.log('RPC unauthenticated call:', { rpcRes, rpcErr });

  // Test signup/signin to get an auth token
  const testEmail = `test_debug_${Date.now()}@healthexpress.in`;
  const testPassword = 'TestPassword123!';

  const { data: authData, error: authErr } = await supabase.auth.signUp({
    email: testEmail,
    password: testPassword,
    options: {
      data: { phone: '91830509502', full_name: 'Debug Test User' }
    }
  });

  if (authErr) {
    console.log('SignUp Error:', authErr.message);
  } else {
    console.log('SignUp Success, User ID:', authData?.user?.id);
    const authedClient = supabase;

    // Call RPC as authenticated user!
    const { data: authedRpcRes, error: authedRpcErr } = await authedClient.rpc('link_guest_records_on_otp_login');
    console.log('Authenticated RPC Call Result:', { authedRpcRes, authedRpcErr });

    // Query patients table as authenticated user
    const { data: pats, error: patErr } = await authedClient.from('patients').select('*');
    console.log('Authenticated Patients Query:', { patsCount: pats?.length, patErr: patErr?.message, pats });

    // Query prescriptions table as authenticated user
    const { data: rxs, error: rxErr } = await authedClient.from('prescriptions').select('*');
    console.log('Authenticated Prescriptions Query:', { rxsCount: rxs?.length, rxErr: rxErr?.message, rxs });
  }
}

debugLiveDB();
