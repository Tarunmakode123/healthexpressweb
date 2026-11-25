import { createClient } from '@supabase/supabase-js';

const supabaseUrl = 'https://lacsmipikpohchhdfzjn.supabase.co';
const supabaseAnonKey = 'sb_publishable_-Kx62Hm3TebdU5uTaS6wRw_3zRyNsdU';

const supabase = createClient(supabaseUrl, supabaseAnonKey);

const activeUserId = '3525bf62-f7c4-482f-bf9c-9e5936ce106f';
const patientId = '9d6b5336-1d86-4137-a5b6-ebdb3adbb974';

async function testOrSyntax() {
  console.log('=== TEST 1: or("user_id.eq.xxx,patient_id.in.(yyy)") ===');
  const rxOrClause1 = `user_id.eq.${activeUserId},patient_id.in.(${patientId})`;
  const res1 = await supabase.from('prescriptions').select('*').or(rxOrClause1);
  console.log('Res1 Error:', res1.error);
  console.log('Res1 Data:', res1.data);

  console.log('=== TEST 2: or("user_id.eq.xxx,patient_id.eq.yyy") ===');
  const rxOrClause2 = `user_id.eq.${activeUserId},patient_id.eq.${patientId}`;
  const res2 = await supabase.from('prescriptions').select('*').or(rxOrClause2);
  console.log('Res2 Error:', res2.error);
  console.log('Res2 Data:', res2.data);
}

testOrSyntax();
