import { createClient } from '@supabase/supabase-js';

const url = 'https://lacsmipikpohchhdfzjn.supabase.co';
const anonKey = 'sb_publishable_-Kx62Hm3TebdU5uTaS6wRw_3zRyNsdU';

const supabase = createClient(url, anonKey);

async function testFullAdminServices() {
  console.log('=== TESTING ADMIN SERVICES DATA FETCH ===');

  try {
    // 1. Fetch Orders
    const { data: orders, error: ordErr } = await supabase.from('orders').select('*, payments(*)').order('created_at', { ascending: false });
    console.log('Orders fetch:', orders?.length, 'Error:', ordErr?.message || 'None');

    // 2. Fetch Payments
    const { data: payments, error: payErr } = await supabase.from('payments').select('*, orders(*), patients(*)').order('created_at', { ascending: false });
    console.log('Payments fetch:', payments?.length, 'Error:', payErr?.message || 'None');

    // 3. Fetch Enquiries / Prescriptions
    const { data: enquiries, error: enqErr } = await supabase.from('enquiries').select('*, patients(*), prescriptions(*)').order('created_at', { ascending: false });
    console.log('Enquiries fetch:', enquiries?.length, 'Error:', enqErr?.message || 'None');

    // 4. Fetch Patients
    const { data: patients, error: patErr } = await supabase.from('patients').select('*').order('created_at', { ascending: false });
    console.log('Patients fetch:', patients?.length, 'Error:', patErr?.message || 'None');

    // 5. Fetch Promo Codes
    const { data: promos, error: promoErr } = await supabase.from('promo_codes').select('*').order('created_at', { ascending: false });
    console.log('Promos fetch:', promos?.length, 'Error:', promoErr?.message || 'None');

    // 6. Fetch Wallet Settings
    const { data: wSet, error: wSetErr } = await supabase.from('wallet_settings').select('*').limit(1).maybeSingle();
    console.log('Wallet Settings fetch:', wSet, 'Error:', wSetErr?.message || 'None');

    // 7. Fetch Wallet Accounts
    const { data: wAcc, error: wAccErr } = await supabase.from('wallet_accounts').select('*, patients(*)').order('coin_balance', { ascending: false });
    console.log('Wallet Accounts fetch:', wAcc?.length, 'Error:', wAccErr?.message || 'None');

    // 8. Fetch Wallet Transactions
    const { data: wTx, error: wTxErr } = await supabase.from('wallet_transactions').select('*, patients(*)').order('created_at', { ascending: false });
    console.log('Wallet Transactions fetch:', wTx?.length, 'Error:', wTxErr?.message || 'None');
  } catch (err) {
    console.error('Service test exception:', err);
  }
}

testFullAdminServices();
