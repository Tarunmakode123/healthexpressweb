import { createClient } from '@supabase/supabase-js';

const url = 'https://lacsmipikpohchhdfzjn.supabase.co';
const anonKey = 'sb_publishable_-Kx62Hm3TebdU5uTaS6wRw_3zRyNsdU';

const supabase = createClient(url, anonKey);

async function inspectAdminPatients() {
  console.log('=== AUDITING PUBLIC.PATIENTS ROWS FOR admin@healthexpress.in ===');

  // Querying using RPC / PostgREST query on patients
  const { data: rows, error } = await supabase
    .from('patients')
    .select('id, user_id, email, is_admin, is_verified, created_at')
    .eq('email', 'admin@healthexpress.in');

  if (error) {
    console.error('Error fetching admin patient rows:', error.message);
  } else {
    console.log('Matching rows count:', rows ? rows.length : 0);
    console.log('Rows:', JSON.stringify(rows, null, 2));
  }
}

inspectAdminPatients();
