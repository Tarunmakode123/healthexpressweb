import { createClient } from '@supabase/supabase-js';

const supabaseUrl = 'https://lacsmipikpohchhdfzjn.supabase.co';
const supabaseAnonKey = 'sb_publishable_-Kx62Hm3TebdU5uTaS6wRw_3zRyNsdU';

const supabase = createClient(supabaseUrl, supabaseAnonKey);

async function checkWalletTables() {
  console.log('=== TESTING PRODUCTION WALLET TABLES ===');

  const { data: setRes, error: setErr } = await supabase.from('wallet_settings').select('*').limit(1);
  console.log('\n[wallet_settings table]:', setErr ? `ERROR ${setErr.code}: ${setErr.message}` : `OK (${setRes?.length} rows)`);

  const { data: accRes, error: accErr } = await supabase.from('wallet_accounts').select('*').limit(1);
  console.log('\n[wallet_accounts table]:', accErr ? `ERROR ${accErr.code}: ${accErr.message}` : `OK (${accRes?.length} rows)`);

  const { data: txRes, error: txErr } = await supabase.from('wallet_transactions').select('*').limit(1);
  console.log('\n[wallet_transactions table]:', txErr ? `ERROR ${txErr.code}: ${txErr.message}` : `OK (${txRes?.length} rows)`);

  const { data: rpcRes, error: rpcErr } = await supabase.rpc('get_or_create_wallet', { p_patient_id: '9d6b5336-1d86-4137-a5b6-ebdb3adbb974' });
  console.log('\n[get_or_create_wallet RPC]:', rpcErr ? `ERROR ${rpcErr.code}: ${rpcErr.message}` : 'OK');
}

checkWalletTables();
