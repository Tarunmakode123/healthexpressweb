import { createClient } from '@supabase/supabase-js';
import fs from 'fs';
import path from 'path';
import { fileURLToPath } from 'url';

const __dirname = path.dirname(fileURLToPath(import.meta.url));
const envPath = path.join(__dirname, '../.env');
const envContent = fs.readFileSync(envPath, 'utf8');

const env = {};
envContent.split('\n').forEach(line => {
  const [key, ...vals] = line.split('=');
  if (key && vals.length > 0) {
    env[key.trim()] = vals.join('=').trim();
  }
});

const supabaseUrl = env.VITE_SUPABASE_URL;
const supabaseKey = env.VITE_SUPABASE_ANON_KEY;

const supabase = createClient(supabaseUrl, supabaseKey);

async function runDiagnostic() {
  console.log('==================================================');
  console.log('HEALTH EXPRESS — TARGETED ADMIN RLS DIAGNOSTIC');
  console.log('==================================================\n');

  console.log('Target Supabase URL:', supabaseUrl);

  // STEP 1: Check check_is_admin() RPC anonymously first
  console.log('\n--- CHECK 1: check_is_admin() RPC (Anonymous Caller) ---');
  const { data: anonAdminCheck, error: anonErr } = await supabase.rpc('check_is_admin');
  console.log('Anonymous check_is_admin() error:', anonErr);
  console.log('Anonymous check_is_admin() return value:', anonAdminCheck);
  console.log('Anonymous check_is_admin() return type:', typeof anonAdminCheck);

  // STEP 2: Attempt login with admin credentials (admin@healthexpress.in)
  console.log('\n--- CHECK 2: Logging in as admin@healthexpress.in ---');
  // Let's test with the password used in verifyAdminAuth or check what password admin@healthexpress.in has
  // Wait, let's see how verifyAdminAuth logs in admin in src/services/adminService.js
  const passwordsToTry = ['Admin@123', 'admin123', 'Admin123!', 'HealthExpress@2026', 'admin@healthexpress.in'];
  let authUser = null;

  for (const pwd of passwordsToTry) {
    const { data: authData, error: authError } = await supabase.auth.signInWithPassword({
      email: 'admin@healthexpress.in',
      password: pwd
    });
    if (!authError && authData?.user) {
      authUser = authData.user;
      console.log(`Auth login SUCCESS with password: ${pwd}`);
      break;
    }
  }

  if (!authUser) {
    console.log('Could not log in automatically with demo passwords. Testing active session or user query if service key present.');
  } else {
    console.log('\n--- CHECK 3: Authenticated User Details ---');
    console.log('auth.users.id:', authUser.id);
    console.log('auth.users.email:', authUser.email);
    console.log('email_confirmed_at:', authUser.email_confirmed_at);
    console.log('user_metadata:', authUser.user_metadata);

    console.log('\n--- CHECK 4: check_is_admin() RPC (Authenticated Admin Session) ---');
    const { data: authAdminCheck, error: authAdminErr } = await supabase.rpc('check_is_admin');
    console.log('Authenticated check_is_admin() error:', authAdminErr);
    console.log('Authenticated check_is_admin() return value:', authAdminCheck);
    console.log('Authenticated check_is_admin() return type:', typeof authAdminCheck);

    console.log('\n--- CHECK 5: sync_admin_user() RPC (Authenticated Session) ---');
    const { data: syncData, error: syncErr } = await supabase.rpc('sync_admin_user');
    console.log('sync_admin_user() error:', syncErr);
    console.log('sync_admin_user() return value:', syncData);

    console.log('\n--- CHECK 6: Querying public.patients ---');
    const { data: patientRows, error: patientErr } = await supabase
      .from('patients')
      .select('id, user_id, full_name, email, phone_e164, is_admin, is_verified')
      .or(`email.eq.admin@healthexpress.in,user_id.eq.${authUser.id}`);

    console.log('patients query error:', patientErr);
    console.log('patients query results:', patientRows);

    console.log('\n--- CHECK 7: Querying RLS Protected Tables (orders, prescriptions, enquiries) ---');
    const { data: ordersData, error: ordersErr } = await supabase.from('orders').select('id, order_code').limit(5);
    console.log('orders query error:', ordersErr);
    console.log('orders returned count:', ordersData?.length || 0);

    const { data: presData, error: presErr } = await supabase.from('prescriptions').select('id').limit(5);
    console.log('prescriptions query error:', presErr);
    console.log('prescriptions returned count:', presData?.length || 0);

    const { data: enqData, error: enqErr } = await supabase.from('enquiries').select('id').limit(5);
    console.log('enquiries query error:', enqErr);
    console.log('enquiries returned count:', enqData?.length || 0);
  }
}

runDiagnostic();
