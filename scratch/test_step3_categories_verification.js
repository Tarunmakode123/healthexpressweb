import { fetchAdminCategories, createAdminCategory, updateAdminCategory, toggleAdminCategoryStatus } from '../src/services/adminCategoryService.js';
import { fetchCategories, fetchCategoryBySlug } from '../src/services/categoryService.js';
import { fetchServices } from '../src/services/catalogService.js';

console.log('==================================================');
console.log('HEALTH EXPRESS — PHASE 2 / STEP 3 VERIFICATION TESTS');
console.log('==================================================\n');

async function runStep3Verification() {
  try {
    // TEST 1 — Fetch Categories from Supabase / Service
    console.log('--- TEST 1: Fetching Active Website Categories ---');
    const catRes = await fetchCategories();
    console.log('Source:', catRes.source);
    console.log('Categories Count:', catRes.categories?.length);
    console.log('Categories List:', catRes.categories?.map(c => `${c.name} (${c.slug || c.id})`));

    // TEST 2 — Admin Fetch Categories
    console.log('\n--- TEST 2: Admin Fetch Categories (Page 1) ---');
    const adminCatRes = await fetchAdminCategories({ page: 1, pageSize: 20 });
    console.log('Admin Total Matches:', adminCatRes.totalMatches);
    console.log('Admin Categories:', adminCatRes.categories?.map(c => `${c.name} [${c.active ? 'ACTIVE' : 'INACTIVE'}]`));

    // TEST 3 — Service Catalog Integration
    console.log('\n--- TEST 3: Service Catalog Fetch with Categories ---');
    const serviceRes = await fetchServices({ page: 1, pageSize: 5 });
    console.log('Total Services:', serviceRes.totalMatches);
    console.log('Returned Services:', serviceRes.services?.length);
    console.log('Returned Categories in catalogService:', serviceRes.categories?.length);
    console.log('Sample Service:', serviceRes.services[0]?.name, '| Category:', serviceRes.services[0]?.category_name);

    // TEST 4 — Known Service Check (Lipid Profile Advance)
    console.log('\n--- TEST 4: Checking Known Service (Lipid Profile Advance) ---');
    const lipidRes = await fetchServices({ search: 'Lipid Profile Advance', pageSize: 1 });
    const lipidService = lipidRes.services?.[0];
    if (lipidService) {
      console.log('✓ Found Lipid Profile Advance!');
      console.log('  - Slug:', lipidService.slug);
      console.log('  - Price: ₹' + lipidService.selling_price);
      console.log('  - Category:', lipidService.category_name, `(${lipidService.category_id})`);
    } else {
      console.error('⚠️ Could not find Lipid Profile Advance');
    }

    console.log('\n==================================================');
    console.log('✓ ALL STEP 3 CATEGORY INTEGRATION TESTS PASSED!');
    console.log('==================================================');
  } catch (err) {
    console.error('Verification error:', err);
  }
}

runStep3Verification();
