import { createClient } from '@supabase/supabase-js';

const SUPABASE_URL = 'https://lacsmipikpohchhdfzjn.supabase.co';
const SUPABASE_ANON_KEY = 'sb_publishable_-Kx62Hm3TebdU5uTaS6wRw_3zRyNsdU';

const supabase = createClient(SUPABASE_URL, SUPABASE_ANON_KEY);

async function checkServices() {
  const { data, error } = await supabase
    .from('services')
    .select('id, slug, service_name, description, overview, patient_preparation, parameters, parameters_count')
    .limit(10);

  if (error) {
    console.error('Error:', error);
    return;
  }

  console.log('Total sample rows:', data.length);
  data.forEach((row, idx) => {
    console.log(`\n--- Test ${idx + 1}: ${row.service_name} (${row.slug}) ---`);
    console.log('Description:', row.description ? row.description.substring(0, 100) : null);
    console.log('Overview:', row.overview ? row.overview.substring(0, 100) : null);
    console.log('Patient Preparation:', row.patient_preparation);
    console.log('Parameters:', row.parameters);
  });

  const { count: descCount } = await supabase
    .from('services')
    .select('id', { count: 'exact', head: true })
    .not('description', 'is', null);

  const { count: overviewCount } = await supabase
    .from('services')
    .select('id', { count: 'exact', head: true })
    .not('overview', 'is', null);

  const { count: prepCount } = await supabase
    .from('services')
    .select('id', { count: 'exact', head: true })
    .not('patient_preparation', 'is', null);

  const { count: totalCount } = await supabase
    .from('services')
    .select('id', { count: 'exact', head: true });

  console.log('\n=== STATS ===');
  console.log('Total services:', totalCount);
  console.log('Services with description:', descCount);
  console.log('Services with overview:', overviewCount);
  console.log('Services with patient_preparation:', prepCount);
}

checkServices();
