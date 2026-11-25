import { createClient } from '@supabase/supabase-js';

const url = 'https://lacsmipikpohchhdfzjn.supabase.co';
const anonKey = 'sb_publishable_-Kx62Hm3TebdU5uTaS6wRw_3zRyNsdU';

const supabase = createClient(url, anonKey);

async function testAdminLogin() {
  console.log('=== TESTING ADMIN AUTH FLOW ===');
  
  // 1. Test RPC check_is_admin when unauthenticated
  const { data: unauthAdmin, error: unauthErr } = await supabase.rpc('check_is_admin');
  console.log('Unauthenticated check_is_admin:', unauthAdmin, 'Error:', unauthErr?.message || 'None');

  // 2. Check if sync_admin_user RPC exists
  const { data: syncData, error: syncErr } = await supabase.rpc('sync_admin_user');
  console.log('Unauthenticated sync_admin_user:', syncData, 'Error:', syncErr?.message || 'None');
}

testAdminLogin();
