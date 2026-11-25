import { createClient } from '@supabase/supabase-js';

const supabaseUrl = 'https://lacsmipikpohchhdfzjn.supabase.co';
const supabaseAnonKey = 'sb_publishable_-Kx62Hm3TebdU5uTaS6wRw_3zRyNsdU';

const supabase = createClient(supabaseUrl, supabaseAnonKey);

const targetUserId = '3525bf62-f7c4-482f-bf9c-9e5936ce106f';
const targetPatientId = '9d6b5336-1d86-4137-a5b6-ebdb3adbb974';

async function testQueries() {
  console.log('=== STEP 1: SUPABASE URL ===');
  console.log('URL Hostname:', new URL(supabaseUrl).hostname);

  console.log('\n=== STEP 3: RAW PATIENT QUERY ===');
  const patRes = await supabase
    .from('patients')
    .select('id,user_id,phone_e164,full_name,is_verified,created_at')
    .eq('user_id', targetUserId);

  console.log('Patient Query Error:', patRes.error);
  console.log('Patient Query Data Count:', patRes.data ? patRes.data.length : null);
  console.log('Patient Query Data:', patRes.data);

  console.log('\n=== STEP 4: RAW PRESCRIPTION QUERY BY USER_ID ===');
  const rxUserRes = await supabase
    .from('prescriptions')
    .select('*')
    .eq('user_id', targetUserId)
    .order('created_at', { ascending: false });

  console.log('Rx User Query Error:', rxUserRes.error);
  console.log('Rx User Query Data Count:', rxUserRes.data ? rxUserRes.data.length : null);
  if (rxUserRes.data && rxUserRes.data.length > 0) {
    console.log('First Rx ID:', rxUserRes.data[0].id);
    console.log('First Rx User ID:', rxUserRes.data[0].user_id);
    console.log('First Rx Patient ID:', rxUserRes.data[0].patient_id);
  }

  console.log('\n=== STEP 5: RAW PRESCRIPTION QUERY BY PATIENT_ID ===');
  const rxPatRes = await supabase
    .from('prescriptions')
    .select('*')
    .eq('patient_id', targetPatientId)
    .order('created_at', { ascending: false });

  console.log('Rx Patient Query Error:', rxPatRes.error);
  console.log('Rx Patient Query Data Count:', rxPatRes.data ? rxPatRes.data.length : null);

  console.log('\n=== STEP 5b: PRESCRIPTION QUERY WITH OR CLAUSE ===');
  const rxOrRes = await supabase
    .from('prescriptions')
    .select('*')
    .or(`user_id.eq.${targetUserId},patient_id.eq.${targetPatientId}`)
    .order('created_at', { ascending: false });

  console.log('Rx OR Query Error:', rxOrRes.error);
  console.log('Rx OR Query Data Count:', rxOrRes.data ? rxOrRes.data.length : null);

  console.log('\n=== STEP 5c: PRESCRIPTION QUERY WITH JOIN enquiries(*) ===');
  const rxJoinRes = await supabase
    .from('prescriptions')
    .select('*, enquiries(*)')
    .or(`user_id.eq.${targetUserId},patient_id.eq.${targetPatientId}`)
    .order('created_at', { ascending: false });

  console.log('Rx JOIN Query Error:', rxJoinRes.error);
  console.log('Rx JOIN Query Data Count:', rxJoinRes.data ? rxJoinRes.data.length : null);
}

testQueries();
