import { createClient } from '@supabase/supabase-js';

const SUPABASE_URL = 'https://lacsmipikpohchhdfzjn.supabase.co';
const SUPABASE_ANON_KEY = 'sb_publishable_-Kx62Hm3TebdU5uTaS6wRw_3zRyNsdU';

const supabase = createClient(SUPABASE_URL, SUPABASE_ANON_KEY);

async function checkDetails() {
  // Check rows where overview is present
  const { data: withOverview } = await supabase
    .from('services')
    .select('id, slug, service_name, description, overview, parameters, parameters_count')
    .not('overview', 'is', null)
    .limit(3);

  console.log('Sample with overview:');
  console.log(JSON.stringify(withOverview, null, 2));

  // Check how many have parameters non empty
  const { data: withParams } = await supabase
    .from('services')
    .select('id, slug, service_name, parameters, parameters_count')
    .gt('parameters_count', 0)
    .limit(3);

  console.log('Sample with parameters > 0:');
  console.log(JSON.stringify(withParams, null, 2));

  // Check columns of services table again
  const { data: sampleOne } = await supabase
    .from('services')
    .select('*')
    .limit(1);

  console.log('Columns in services table:', Object.keys(sampleOne[0]));
}

checkDetails();
