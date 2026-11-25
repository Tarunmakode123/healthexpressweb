import { createClient } from '@supabase/supabase-js';

const supabaseUrl = 'https://lacsmipikpohchhdfzjn.supabase.co';
const supabaseAnonKey = 'sb_publishable_-Kx62Hm3TebdU5uTaS6wRw_3zRyNsdU';

const supabase = createClient(supabaseUrl, supabaseAnonKey);

async function runDiagnostic() {
  console.log('--- TESTING SECURITY DEFINER DEBUG RPC ---');
  
  try {
    const { data, error } = await supabase.rpc('debug_get_all_records');
    console.log('RPC debug_get_all_records error:', error);
    console.log('RPC debug_get_all_records data:', JSON.stringify(data, null, 2));
  } catch (e) {
    console.log('RPC exception:', e.message);
  }
}

runDiagnostic();
