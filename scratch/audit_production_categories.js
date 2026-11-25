import { createClient } from '@supabase/supabase-js';

const SUPABASE_URL = 'https://fqjwivngayvhszahffly.supabase.co';
const SUPABASE_ANON_KEY = 'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJpc3MiOiJzdXBhYmFzZSIsInJlZiI6ImZxandpdm5nYXl2aHN6YWhmZmx5Iiwicm9sZSI6ImFub24iLCJpYXQiOjE3NDAxNjg0MjUsImV4cCI6MjA1NTc0NDQyNX0.F_rA2JbYvNl_iS_Zl_Oq7xN613M_P-1-B8sFkZfJ3lI';

const supabase = createClient(SUPABASE_URL, SUPABASE_ANON_KEY);

async function auditCategories() {
  console.log('AUDITING PRODUCTION SUPABASE public.services CATEGORY DATA...\n');

  // Fetch all service category_id and category_name values
  let allServices = [];
  let page = 0;
  const pageSize = 1000;
  let fetchMore = true;

  while (fetchMore) {
    const { data, error } = await supabase
      .from('services')
      .select('category_id, category_name, subcategory, service_type')
      .range(page * pageSize, (page + 1) * pageSize - 1);

    if (error) {
      console.error('Error fetching services:', error.message);
      break;
    }

    allServices = allServices.concat(data || []);
    if (!data || data.length < pageSize) {
      fetchMore = false;
    } else {
      page++;
    }
  }

  console.log(`Fetched total ${allServices.length} service records from public.services.\n`);

  // Aggregate unique combinations
  const catMap = {};
  allServices.forEach(s => {
    const key = `${s.category_id}|||${s.category_name}`;
    if (!catMap[key]) {
      catMap[key] = {
        category_id: s.category_id,
        category_name: s.category_name,
        service_types: new Set(),
        subcategories: new Set(),
        count: 0
      };
    }
    catMap[key].count++;
    if (s.service_type) catMap[key].service_types.add(s.service_type);
    if (s.subcategory) catMap[key].subcategories.add(s.subcategory);
  });

  console.log('--- UNIQUE CATEGORY COMBINATIONS IN PRODUCTION public.services ---');
  const uniqueCombos = Object.values(catMap);
  uniqueCombos.forEach((c, idx) => {
    console.log(`${idx + 1}. category_id: "${c.category_id}" | category_name: "${c.category_name}" | count: ${c.count} | service_types: [${Array.from(c.service_types).join(', ')}]`);
  });

  console.log('\n--- DUPLICATE CHECK ---');
  const namesSeen = {};
  const idsSeen = {};
  let duplicateNames = 0;
  let duplicateIds = 0;

  uniqueCombos.forEach(c => {
    if (namesSeen[c.category_name]) {
      console.log(`DUPLICATE NAME DETECTED: "${c.category_name}" used by category_id "${namesSeen[c.category_name]}" and "${c.category_id}"`);
      duplicateNames++;
    } else {
      namesSeen[c.category_name] = c.category_id;
    }

    if (idsSeen[c.category_id]) {
      console.log(`DUPLICATE ID DETECTED: "${c.category_id}" used by category_name "${idsSeen[c.category_id]}" and "${c.category_name}"`);
      duplicateIds++;
    } else {
      idsSeen[c.category_id] = c.category_name;
    }
  });

  if (duplicateNames === 0) console.log('No duplicate category names found.');
  if (duplicateIds === 0) console.log('No duplicate category_id values found.');

  process.exit(0);
}

auditCategories();
