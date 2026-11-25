import { createClient } from '@supabase/supabase-js';

const SUPABASE_URL = 'https://lacsmipikpohchhdfzjn.supabase.co';
const SUPABASE_ANON_KEY = 'sb_publishable_-Kx62Hm3TebdU5uTaS6wRw_3zRyNsdU';

const supabase = createClient(SUPABASE_URL, SUPABASE_ANON_KEY);

async function analyzeTestNames() {
  const { data } = await supabase
    .from('services')
    .select('service_name, category_id, subcategory, specimen_type, patient_preparation, parameters_count')
    .limit(50);

  console.log('Sample 30 test names:');
  data.slice(0, 30).forEach((t, i) => console.log(`${i+1}. [${t.category_id}] ${t.service_name} | Prep: ${t.patient_preparation?.slice(0, 40)}...`));
}

analyzeTestNames();
