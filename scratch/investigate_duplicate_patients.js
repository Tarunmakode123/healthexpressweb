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

async function investigateDuplicatePatients() {
  console.log('==================================================');
  console.log('HEALTH EXPRESS — DUPLICATE PATIENTS FORENSIC AUDIT');
  console.log('==================================================\n');

  // Query all patients records
  const { data: allPatients, error: pErr } = await supabase
    .from('patients')
    .select('*');

  if (pErr) {
    console.error('Error fetching patients:', pErr.message);
    return;
  }

  console.log(`Total patient records in public.patients: ${allPatients?.length || 0}`);

  // Find grouped by user_id
  const userIdMap = {};
  (allPatients || []).forEach(p => {
    if (p.user_id) {
      if (!userIdMap[p.user_id]) userIdMap[p.user_id] = [];
      userIdMap[p.user_id].push(p);
    }
  });

  console.log('\n--- Duplicate user_id instances in public.patients ---');
  for (const [uid, rows] of Object.entries(userIdMap)) {
    if (rows.length > 1) {
      console.log(`\nUser ID ${uid} has ${rows.length} linked patient records:`);
      rows.forEach(r => {
        console.log(`  - Patient ID: ${r.id} | Name: "${r.full_name}" | Email: "${r.email}" | Phone: "${r.phone_e164}" | is_admin: ${r.is_admin} | Created: ${r.created_at}`);
      });

      // Check references in orders, prescriptions, enquiries
      for (const r of rows) {
        const { count: ordCount } = await supabase.from('orders').select('*', { count: 'exact', head: true }).eq('patient_id', r.id);
        const { count: presCount } = await supabase.from('prescriptions').select('*', { count: 'exact', head: true }).eq('patient_id', r.id);
        const { count: enqCount } = await supabase.from('enquiries').select('*', { count: 'exact', head: true }).eq('patient_id', r.id);
        const { count: payCount } = await supabase.from('payments').select('*', { count: 'exact', head: true }).eq('patient_id', r.id);
        
        console.log(`    --> Patient ID ${r.id} References: ${ordCount || 0} orders, ${presCount || 0} prescriptions, ${enqCount || 0} enquiries, ${payCount || 0} payments`);
      }
    }
  }
}

investigateDuplicatePatients();
