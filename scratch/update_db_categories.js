import { createClient } from '@supabase/supabase-js';

const url = 'https://lacsmipikpohchhdfzjn.supabase.co';
const anonKey = 'sb_publishable_-Kx62Hm3TebdU5uTaS6wRw_3zRyNsdU';

const supabase = createClient(url, anonKey);

async function updateCategories() {
  console.log('=== UPDATING PRODUCTION CATEGORIES IN SUPABASE DB ===');

  // 1. Fetch current categories
  const { data: beforeCats, error: err1 } = await supabase.from('categories').select('*');
  console.log('Before update categories:', beforeCats, err1);

  // 2. Upsert updated category names
  const { data: catRes, error: catErr } = await supabase
    .from('categories')
    .upsert([
      {
        id: 'd5fc46e9-3e21-4fbf-aa2d-edc41bc07f16',
        slug: 'imaging',
        name: 'Radiology',
        description: 'Radiology, imaging and diagnostic scans',
        icon: 'Scan',
        display_order: 2,
        active: true
      },
      {
        id: '4dae7745-94e5-4fa3-9cfc-396931211d00',
        slug: 'genetics',
        name: 'Genomics',
        description: 'Genetic and genomic diagnostic services',
        icon: 'Dna',
        display_order: 4,
        active: true
      }
    ], { onConflict: 'slug' })
    .select();

  console.log('Category upsert output:', catRes, catErr);

  // 3. Update services table category_name
  const { data: s1, error: se1 } = await supabase
    .from('services')
    .update({ category_name: 'Radiology' })
    .eq('category_id', 'imaging')
    .select('id, category_name');

  console.log('Updated imaging services count:', s1?.length, se1);

  const { data: s2, error: se2 } = await supabase
    .from('services')
    .update({ category_name: 'Genomics' })
    .eq('category_id', 'genetics')
    .select('id, category_name');

  console.log('Updated genetics services count:', s2?.length, se2);

  // 4. Verify categories table after update
  const { data: afterCats } = await supabase.from('categories').select('*');
  console.log('After update categories:', afterCats);
}

updateCategories();
