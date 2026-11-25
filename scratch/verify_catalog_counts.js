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

async function verifyCatalogCounts() {
  console.log('=== VERIFYING PRODUCTION CATALOG SEED COUNTS ===');

  const { data: allData, count: totalServices, error } = await supabase
    .from('services')
    .select('slug, active', { count: 'exact' });

  if (error) {
    console.error('Error fetching services counts:', error);
    return;
  }

  const slugs = new Set((allData || []).map(s => s.slug));
  const uniqueSlugs = slugs.size;
  const activeServices = (allData || []).filter(s => s.active === true).length;
  const inactiveServices = (allData || []).filter(s => s.active === false).length;

  console.log('--------------------------------------------------');
  console.log(`Total Services Count : ${totalServices}`);
  console.log(`Unique Slugs Count   : ${uniqueSlugs}`);
  console.log(`Active Services      : ${activeServices}`);
  console.log(`Inactive Services    : ${inactiveServices}`);
  console.log('--------------------------------------------------');
}

verifyCatalogCounts();
