import { createClient } from '@supabase/supabase-js';

const url = 'https://lacsmipikpohchhdfzjn.supabase.co';
const anonKey = 'sb_publishable_-Kx62Hm3TebdU5uTaS6wRw_3zRyNsdU';

const supabase = createClient(url, anonKey);

async function checkCategories() {
  console.log('=== CHECKING PRODUCTION CATEGORIES TABLE ===');

  const { data: categories, error } = await supabase
    .from('categories')
    .select('*');

  console.log('Categories:', categories);
  if (error) console.error('Error:', error.message);
}

checkCategories();
