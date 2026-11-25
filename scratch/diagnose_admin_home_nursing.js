import { createClient } from '@supabase/supabase-js';

const supabaseUrl = 'https://lacsmipikpohchhdfzjn.supabase.co';
const supabaseKey = 'sb_publishable_-Kx62Hm3TebdU5uTaS6wRw_3zRyNsdU';

const supabase = createClient(supabaseUrl, supabaseKey);

async function runDiagnosis() {
  console.log('=== 1. TOTAL SERVICES COUNT ===');
  const { count: totalCount, error: err1 } = await supabase
    .from('services')
    .select('*', { count: 'exact', head: true });
  console.log('Total services count:', totalCount, err1 || '');

  console.log('\n=== 2. SERVICES BY CATEGORY_ID ===');
  const { data: catData, error: err2 } = await supabase
    .from('services')
    .select('category_id, category_name');
  if (err2) {
    console.error('Err 2:', err2);
  } else {
    const counts = {};
    catData.forEach(row => {
      const key = `${row.category_id || 'NULL'} | ${row.category_name || 'NULL'}`;
      counts[key] = (counts[key] || 0) + 1;
    });
    console.table(Object.entries(counts).map(([cat, cnt]) => ({ category: cat, count: cnt })));
  }

  console.log('\n=== 3. HOME NURSING SPECIFIC SERVICES ===');
  const { data: hnServices, error: err3 } = await supabase
    .from('services')
    .select('id, slug, service_code, service_name, category_id, category_name, service_type, active, selling_price')
    .or('category_id.ilike.home-nursing,category_name.ilike.home nursing');
  console.log('Home Nursing services found:', hnServices ? hnServices.length : 0);
  console.log(JSON.stringify(hnServices, null, 2));

  console.log('\n=== 4. SPECIFIC HOME NURSING SERVICE NAMES CHECK ===');
  const names = [
    'injection administration',
    'iv drip / infusion',
    'dressing change',
    'catheter-related care',
    'nebulization',
    'vital checks',
    'blood sugar check',
    'blood pressure check',
    'sample collection',
    'medication administration'
  ];
  const { data: nameServices, error: err4 } = await supabase
    .from('services')
    .select('service_name, category_id, category_name, service_type, active');
  
  if (nameServices) {
    const matched = nameServices.filter(s => s.service_name && names.includes(s.service_name.toLowerCase()));
    console.log('Matched service names count:', matched.length);
    console.log(JSON.stringify(matched, null, 2));
  }

  console.log('\n=== 5. CHECK CATEGORIES TABLE FOR HOME NURSING ===');
  const { data: catRow, error: err5 } = await supabase
    .from('categories')
    .select('*')
    .eq('slug', 'home-nursing');
  console.log('Category row for home-nursing:', JSON.stringify(catRow, null, 2));
}

runDiagnosis().catch(console.error);
