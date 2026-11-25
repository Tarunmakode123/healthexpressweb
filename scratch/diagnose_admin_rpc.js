import { createClient } from '@supabase/supabase-js';

const url = 'https://lacsmipikpohchhdfzjn.supabase.co';
const anonKey = 'sb_publishable_-Kx62Hm3TebdU5uTaS6wRw_3zRyNsdU';

const supabase = createClient(url, anonKey);

async function runDiagnosis() {
  console.log('=== ADMIN RLS DIAGNOSTIC AUDIT ===\n');

  // 1. Fetch all rows in public.patients that have email set or is_admin true
  const { data: adminPatients, error: pErr } = await supabase
    .from('patients')
    .select('id, user_id, email, full_name, phone_e164, is_admin, is_verified, created_at')
    .or('email.ilike.%admin%,is_admin.eq.true');

  console.log('1. Patients table matching admin or is_admin=true:');
  console.log(JSON.stringify(adminPatients, null, 2));
  if (pErr) console.error('Patient Query Error:', pErr.message);

  // 2. Fetch all rows in public.patients to see all records
  const { data: allPatients, error: allErr } = await supabase
    .from('patients')
    .select('id, user_id, email, full_name, phone_e164, is_admin, is_verified, created_at');

  console.log('\n2. All Patients table records (total count:', allPatients?.length, '):');
  console.log(JSON.stringify(allPatients, null, 2));
  if (allErr) console.error('All Patients Error:', allErr.message);

  // 3. Test check_is_admin RPC unauthenticated
  const { data: rpcRes, error: rpcErr } = await supabase.rpc('check_is_admin');
  console.log('\n3. RPC check_is_admin (unauthenticated call):', rpcRes, 'Error:', rpcErr?.message || 'None');
}

runDiagnosis();
