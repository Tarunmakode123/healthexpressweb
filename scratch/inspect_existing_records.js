import { createClient } from '@supabase/supabase-js';

const supabaseUrl = 'https://lacsmipikpohchhdfzjn.supabase.co';
const supabaseAnonKey = 'sb_publishable_-Kx62Hm3TebdU5uTaS6wRw_3zRyNsdU';

const supabase = createClient(supabaseUrl, supabaseAnonKey);

async function inspectExactRecords() {
  console.log('--- INSPECTING EXACT DATABASE RECORDS ---');

  // Query patient f3ae6a0c-df7c-41b2-9f9a-4d21dfd7348c
  const { data: patient, error: patErr } = await supabase
    .from('patients')
    .select('*')
    .eq('id', 'f3ae6a0c-df7c-41b2-9f9a-4d21dfd7348c');

  console.log('\n[PATIENT ROW]:', patErr, JSON.stringify(patient, null, 2));

  // Query enquiry HE-2026-FWKF2
  const { data: enquiry, error: enqErr } = await supabase
    .from('enquiries')
    .select('*')
    .eq('enquiry_code', 'HE-2026-FWKF2');

  console.log('\n[ENQUIRY ROW]:', enqErr, JSON.stringify(enquiry, null, 2));

  // Query all prescriptions for this enquiry or patient
  if (enquiry && enquiry.length > 0) {
    const { data: rx, error: rxErr } = await supabase
      .from('prescriptions')
      .select('*')
      .eq('enquiry_id', enquiry[0].id);

    console.log('\n[PRESCRIPTION ROW BY ENQUIRY_ID]:', rxErr, JSON.stringify(rx, null, 2));
  }

  const { data: rxPat, error: rxPatErr } = await supabase
    .from('prescriptions')
    .select('*')
    .eq('patient_id', 'f3ae6a0c-df7c-41b2-9f9a-4d21dfd7348c');

  console.log('\n[PRESCRIPTION ROW BY PATIENT_ID]:', rxPatErr, JSON.stringify(rxPat, null, 2));
}

inspectExactRecords();
