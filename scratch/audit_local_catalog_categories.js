import { CATEGORIES, ALL_SERVICES } from '../src/data/services.js';

console.log('==================================================');
console.log('STEP 1 — CATEGORY DATA AUDIT REPORT');
console.log('==================================================\n');

console.log('1. STATIC CATEGORIES ARRAY (CATEGORIES in src/data/services.js):');
console.table(CATEGORIES);

console.log('\n2. UNIQUE CATEGORIES FOUND IN 2,207 SERVICES (src/data/services.js):');
const categoryMap = {};
ALL_SERVICES.forEach((s) => {
  const catId = s.category_id || 'uncategorized';
  const catName = s.category_name || s.category || 'Uncategorized';
  const key = `${catId}|||${catName}`;

  if (!categoryMap[key]) {
    categoryMap[key] = {
      category_id: catId,
      category_name: catName,
      count: 0,
      subcategories: new Set(),
      providers: new Set()
    };
  }

  categoryMap[key].count++;
  if (s.subcategory) categoryMap[key].subcategories.add(s.subcategory);
  if (s.provider) categoryMap[key].providers.add(s.provider);
});

const uniqueCategories = Object.values(categoryMap);
uniqueCategories.forEach((cat, idx) => {
  console.log(`\nCategory ${idx + 1}:`);
  console.log(`  - category_id: "${cat.category_id}"`);
  console.log(`  - category_name: "${cat.category_name}"`);
  console.log(`  - service count: ${cat.count}`);
  console.log(`  - subcategories: [${Array.from(cat.subcategories).join(', ')}]`);
});

console.log('\n3. DUPLICATE CHECK:');
const nameCheck = {};
const idCheck = {};
let dupNames = 0;
let dupIds = 0;

uniqueCategories.forEach((c) => {
  if (nameCheck[c.category_name]) {
    console.log(`  - DUPLICATE NAME: "${c.category_name}" used by category_id "${nameCheck[c.category_name]}" and "${c.category_id}"`);
    dupNames++;
  } else {
    nameCheck[c.category_name] = c.category_id;
  }

  if (idCheck[c.category_id]) {
    console.log(`  - DUPLICATE ID: "${c.category_id}" used by category_name "${idCheck[c.category_id]}" and "${c.category_name}"`);
    dupIds++;
  } else {
    idCheck[c.category_id] = c.category_name;
  }
});

if (dupNames === 0) console.log('  - Duplicate category names: 0 (NONE)');
if (dupIds === 0) console.log('  - Duplicate category_id values: 0 (NONE)');

console.log('\n4. COMPONENT USAGE SEARCH & AUDIT SUMMARY:');
console.log('  - src/data/services.js: Defines static CATEGORIES array and ALL_SERVICES dataset.');
console.log('  - src/pages/HomePage.jsx: Renders Category Grid using CATEGORIES.');
console.log('  - src/pages/ServicesPage.jsx: Uses CATEGORIES for navigation chips and filters.');
console.log('  - src/pages/ServiceDetailPage.jsx: Queries services by category and slug.');
console.log('  - src/pages/AdminDashboardPage.jsx: Uses CATEGORIES for filter dropdowns and promo code category selection.');
console.log('  - category_id type in public.services: TEXT (strings like "lab-tests", "imaging", "genetics", "home-nursing", "health-packages").');
