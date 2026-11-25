import { createClient } from '@supabase/supabase-js';

const url = 'https://lacsmipikpohchhdfzjn.supabase.co';
const anonKey = 'sb_publishable_-Kx62Hm3TebdU5uTaS6wRw_3zRyNsdU';

const supabase = createClient(url, anonKey);

async function checkHomeNursing() {
  console.log('=== CHECKING PRODUCTION SERVICES TABLE FOR HOME NURSING ===');

  const { data: services, count, error } = await supabase
    .from('services')
    .select('*', { count: 'exact' })
    .eq('category_id', 'home-nursing');

  console.log('Services count with category_id = "home-nursing":', count);
  console.log('Services:', services?.map(s => s.service_name));
  if (error) console.error('Error:', error.message);
}

checkHomeNursing();
