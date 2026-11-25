import { createClient } from '@supabase/supabase-js';

const supabaseUrl = 'https://lacsmipikpohchhdfzjn.supabase.co';
const supabaseKey = 'sb_publishable_-Kx62Hm3TebdU5uTaS6wRw_3zRyNsdU';

const supabase = createClient(supabaseUrl, supabaseKey);

async function inspectAllServices() {
  const { count } = await supabase.from('services').select('*', { count: 'exact', head: true });
  console.log('Total services in DB:', count);

  let allRows = [];
  let pageSize = 1000;
  let page = 0;

  while (allRows.length < count) {
    const { data, error } = await supabase
      .from('services')
      .select('id, slug, service_code, service_name, category_id, category_name, service_type, active')
      .range(page * pageSize, (page + 1) * pageSize - 1);
    
    if (error) {
      console.error('Fetch error:', error);
      break;
    }
    if (!data || data.length === 0) break;
    allRows.push(...data);
    page++;
  }

  console.log('Fetched total rows:', allRows.length);

  const categoryIdCounts = {};
  const categoryNameCounts = {};
  const serviceTypeCounts = {};

  allRows.forEach(row => {
    const cid = String(row.category_id);
    categoryIdCounts[cid] = (categoryIdCounts[cid] || 0) + 1;

    const cname = String(row.category_name);
    categoryNameCounts[cname] = (categoryNameCounts[cname] || 0) + 1;

    const stype = String(row.service_type);
    serviceTypeCounts[stype] = (serviceTypeCounts[stype] || 0) + 1;
  });

  console.log('\n--- CATEGORY_ID BREAKDOWN ---');
  console.table(categoryIdCounts);

  console.log('\n--- CATEGORY_NAME BREAKDOWN ---');
  console.table(categoryNameCounts);

  console.log('\n--- SERVICE_TYPE BREAKDOWN ---');
  console.table(serviceTypeCounts);

  // Check if any row has category_id or category_name containing 'nursing' or 'home'
  const matchingNursing = allRows.filter(r => 
    (r.category_id && r.category_id.toLowerCase().includes('nursing')) ||
    (r.category_name && r.category_name.toLowerCase().includes('nursing')) ||
    (r.service_name && r.service_name.toLowerCase().includes('nursing'))
  );

  console.log('\n--- ROWS WITH "NURSING" IN ID, CATEGORY, OR NAME ---');
  console.log('Count:', matchingNursing.length);
  console.log(JSON.stringify(matchingNursing, null, 2));
}

inspectAllServices().catch(console.error);
