import { createClient } from '@supabase/supabase-js';

const supabaseUrl = 'https://lacsmipikpohchhdfzjn.supabase.co';
const supabaseKey = 'sb_publishable_-Kx62Hm3TebdU5uTaS6wRw_3zRyNsdU';

const supabase = createClient(supabaseUrl, supabaseKey);

async function inspectColumns() {
  const { data, error } = await supabase.from('services').select('*').limit(1);
  if (data && data.length > 0) {
    console.log('Columns in public.services:', Object.keys(data[0]));
  } else {
    console.error('Error or no rows:', error);
  }
}

inspectColumns();
