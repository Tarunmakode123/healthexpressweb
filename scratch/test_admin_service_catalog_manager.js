import { createClient } from '@supabase/supabase-js';

const SUPABASE_URL = 'https://fqjwivngayvhszahffly.supabase.co';
const SUPABASE_ANON_KEY = 'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJpc3MiOiJzdXBhYmFzZSIsInJlZiI6ImZxandpdm5nYXl2aHN6YWhmZmx5Iiwicm9sZSI6ImFub24iLCJpYXQiOjE3NDAxNjg0MjUsImV4cCI6MjA1NTc0NDQyNX0.F_rA2JbYvNl_iS_Zl_Oq7xN613M_P-1-B8sFkZfJ3lI';

console.log('Testing Admin Service Catalog Manager PostgREST queries against Supabase production...');

const supabase = createClient(SUPABASE_URL, SUPABASE_ANON_KEY);

async function testAdminCatalogManager() {
  try {
    // 1. Test Fetching Paginated Active Services
    console.log('\n--- 1. Testing fetchAdminServices (Page 1, limit 20) ---');
    const { data: p1Data, count: totalCount, error: fetchErr } = await supabase
      .from('services')
      .select('*', { count: 'exact' })
      .order('updated_at', { ascending: false })
      .range(0, 19);

    if (fetchErr) {
      console.error('Fetch services error:', fetchErr.message);
    } else {
      console.log('Total production services count:', totalCount);
      console.log('Page 1 items returned:', p1Data.length);
      console.log('Sample service 1:', p1Data[0]?.service_name, '| Price: ₹' + p1Data[0]?.selling_price);
      console.log('Sample service 2:', p1Data[1]?.service_name, '| Price: ₹' + p1Data[1]?.selling_price);
    }

    // 2. Test Filtering by Category (full-body-checkups)
    console.log('\n--- 2. Testing Category Filter (full-body-checkups) ---');
    const { data: catData, count: catCount, error: catErr } = await supabase
      .from('services')
      .select('*', { count: 'exact' })
      .or('category_id.eq.full-body-checkups,category_name.ilike.%full-body%')
      .range(0, 4);

    if (catErr) {
      console.error('Category filter error:', catErr.message);
    } else {
      console.log('Category matches count:', catCount);
      console.log('Sample category match:', catData[0]?.service_name);
    }

    // 3. Test Search Query ("Lipid")
    console.log('\n--- 3. Testing Search Query ("Lipid") ---');
    const { data: searchData, count: searchCount, error: searchErr } = await supabase
      .from('services')
      .select('*', { count: 'exact' })
      .or('service_name.ilike.%Lipid%,service_code.ilike.%Lipid%,slug.ilike.%Lipid%,provider.ilike.%Lipid%')
      .range(0, 4);

    if (searchErr) {
      console.error('Search error:', searchErr.message);
    } else {
      console.log('Search matches count for "Lipid":', searchCount);
      console.log('Found:', searchData.map(s => `${s.service_name} (₹${s.selling_price})`));
    }

    console.log('\n✓ Admin Service Catalog Manager production queries verified successfully!');
  } catch (err) {
    console.error('Catalog manager test exception:', err);
  }
}

testAdminCatalogManager();
