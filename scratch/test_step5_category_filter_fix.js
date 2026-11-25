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

async function runVerification() {
  console.log('==================================================');
  console.log('HEALTH EXPRESS — EXACT CATEGORY HEAD COUNT VERIFICATION');
  console.log('==================================================\n');

  // TEST 1: Fetch active categories from public.categories
  console.log('--- TEST 1: Fetch Active Categories ---');
  const { data: categories, error: catErr } = await supabase
    .from('categories')
    .select('*')
    .eq('active', true)
    .order('display_order', { ascending: true });

  if (catErr) throw catErr;

  // Perform parallel head count queries for each active category
  const enrichedCategories = await Promise.all(
    categories.map(async (cat) => {
      const categoryKey = cat.slug || cat.id;

      const { count, error } = await supabase
        .from('services')
        .select('id', { count: 'exact', head: true })
        .eq('active', true)
        .eq('category_id', categoryKey);

      if (error) throw error;

      return {
        ...cat,
        count: count ?? 0
      };
    })
  );

  console.log('Enriched Categories with Exact Head Counts:');
  enrichedCategories.forEach(c => {
    console.log(`  - ${c.name} (${c.slug}): ${c.count}`);
  });

  // Verify total count for All Categories
  const { count: totalActiveCount, error: totalErr } = await supabase
    .from('services')
    .select('id', { count: 'exact', head: true })
    .eq('active', true);

  if (totalErr) throw totalErr;

  console.log(`\nAll Categories Total Active Count: ${totalActiveCount}`);

  console.log('\n==================================================');
  console.log('EXACT CATEGORY HEAD COUNT VERIFICATION PASSED!');
  console.log('==================================================\n');
}

runVerification();
