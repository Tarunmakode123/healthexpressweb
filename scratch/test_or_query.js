import { createClient } from '@supabase/supabase-js';

const supabaseUrl = 'https://lacsmipikpohchhdfzjn.supabase.co';
const supabaseAnonKey = 'sb_publishable_-Kx62Hm3TebdU5uTaS6wRw_3zRyNsdU';

const supabase = createClient(supabaseUrl, supabaseAnonKey);

const userId = '3525bf62-f7c4-482f-bf9c-9e5936ce106f';
const patientId = '9d6b5336-1d86-4137-a5b6-ebdb3adbb974';

async function testQuerySyntax() {
  console.log('--- TESTING VARIOUS POSTGREST QUERY SYNTAXES ---');

  // Test 1: or with patient_id.in.(...)
  const q1 = `user_id.eq.${userId},patient_id.in.(${patientId})`;
  const res1 = await supabase.from('prescriptions').select('*').or(q1);
  console.log('Q1 (patient_id.in.(...)):', res1.error, 'Count:', res1.data?.length);

  // Test 2: or with patient_id.eq(...)
  const q2 = `user_id.eq.${userId},patient_id.eq.${patientId}`;
  const res2 = await supabase.from('prescriptions').select('*').or(q2);
  console.log('Q2 (patient_id.eq(...)):', res2.error, 'Count:', res2.data?.length);

  // Test 3: simple eq('user_id', ...)
  const res3 = await supabase.from('prescriptions').select('*').eq('user_id', userId);
  console.log('Q3 (eq user_id):', res3.error, 'Count:', res3.data?.length);

  // Test 4: simple eq('patient_id', ...)
  const res4 = await supabase.from('prescriptions').select('*').eq('patient_id', patientId);
  console.log('Q4 (eq patient_id):', res4.error, 'Count:', res4.data?.length);
}

testQuerySyntax();
