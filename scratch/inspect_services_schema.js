import { createClient } from '@supabase/supabase-js';

const url = 'https://lacsmipikpohchhdfzjn.supabase.co';
const anonKey = 'sb_publishable_-Kx62Hm3TebdU5uTaS6wRw_3zRyNsdU';

const supabase = createClient(url, anonKey);

async function inspectServicesSchema() {
  const { data, error } = await supabase
    .from('services')
    .select('*')
    .limit(1);

  console.log('Sample service row columns:', Object.keys(data[0] || {}));
  console.log('Sample row:', data[0]);
}

inspectServicesSchema();
