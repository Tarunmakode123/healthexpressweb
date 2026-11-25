import { createClient } from '@supabase/supabase-js';

const supabase = createClient('https://lacsmipikpohchhdfzjn.supabase.co', 'sb_publishable_-Kx62Hm3TebdU5uTaS6wRw_3zRyNsdU');

async function test() {
  const { data, count, error } = await supabase
    .from('services')
    .select('id, service_name, category_id', { count: 'exact' })
    .eq('active', true)
    .or('home_collection_available.eq.true,category_id.in.("lab-tests","health-packages")')
    .limit(5);

  console.log('Home collection count:', count, 'Error:', error);
  if (data) {
    console.log('Sample rows:', data.map(d => ({ name: d.service_name, cat: d.category_id })));
  }

  const { count: centreCount, error: centreError } = await supabase
    .from('services')
    .select('id', { count: 'exact', head: true })
    .eq('active', true)
    .or('centre_visit_required.eq.true,category_id.eq.imaging');

  console.log('Centre visit count:', centreCount, 'Error:', centreError);
}

test();
