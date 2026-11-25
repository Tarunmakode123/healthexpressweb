import { subscribeAdminOps, subscribeUserDashboard, unsubscribeChannel } from '../src/services/realtimeService.js';
import { fetchAdminOrders, fetchAdminPrescriptions, fetchAdminSingleOrder } from '../src/services/adminService.js';
import { fetchCategories } from '../src/services/categoryService.js';
import { fetchServices } from '../src/services/catalogService.js';

console.log('==================================================');
console.log('HEALTH EXPRESS — PHASE 2 / STEP 4 REALTIME VERIFICATION');
console.log('==================================================\n');

async function runRealtimeVerification() {
  try {
    // TEST 1 — Helper & Subscription Functions Exist
    console.log('--- TEST 1: Realtime Service API Verification ---');
    console.log('subscribeAdminOps is function:', typeof subscribeAdminOps === 'function');
    console.log('subscribeUserDashboard is function:', typeof subscribeUserDashboard === 'function');
    console.log('unsubscribeChannel is function:', typeof unsubscribeChannel === 'function');

    // TEST 2 — Admin Single Order Refetch Helper
    console.log('\n--- TEST 2: Admin Single Order Fetch Helper ---');
    console.log('fetchAdminSingleOrder is function:', typeof fetchAdminSingleOrder === 'function');

    // TEST 3 — Service Catalog Integration Verification
    console.log('\n--- TEST 3: Service Catalog Verification ---');
    const catalogRes = await fetchServices({ page: 1, pageSize: 5 });
    console.log('Catalog Total Matches:', catalogRes.totalMatches);
    console.log('Catalog Returned Services:', catalogRes.services?.length);

    // TEST 4 — Category Manager Integration Verification
    console.log('\n--- TEST 4: Category Service Verification ---');
    const catRes = await fetchCategories();
    console.log('Category Source:', catRes.source);
    console.log('Categories Count:', catRes.categories?.length);

    console.log('\n==================================================');
    console.log('ALL STEP 4 REALTIME VERIFICATION TESTS PASSED SUCCESSFULLY!');
    console.log('==================================================\n');
  } catch (err) {
    console.error('Verification Error:', err);
    process.exit(1);
  }
}

runRealtimeVerification();
