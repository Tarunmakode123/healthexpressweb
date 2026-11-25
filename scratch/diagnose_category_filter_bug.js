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
  console.log('HEALTH EXPRESS — CATEGORY FILTER BUG DIAGNOSTIC');
  console.log('==================================================\n');

  // A. Inspect public.categories
  console.log('--- A. Inspecting public.categories ---');
  const { data: categories, error: catErr } = await supabase
    .from('categories')
    .select('id, slug, name, display_order, active')
    .order('display_order', { ascending: true });

  if (catErr) {
    console.error('Error fetching categories:', catErr.message);
  } else {
    console.table(categories);
  }

  // B. Inspect representative rows from public.services
  console.log('\n--- B & C. Inspecting category_id and category_name values in public.services ---');
  const { data: servicesSample, error: servErr } = await supabase
    .from('services')
    .select('id, service_name, slug, category_id, category_name, active')
    .limit(20);

  if (servErr) {
    console.error('Error fetching services sample:', servErr.message);
  } else {
    console.log('Sample 20 services:');
    console.table(servicesSample);
  }

  // D. Group services count by category_id
  console.log('\n--- D & I. Service count grouped by services.category_id ---');
  const { data: allServices, error: allErr } = await supabase
    .from('services')
    .select('id, category_id, category_name');

  if (allErr) {
    console.error('Error fetching all services for count:', allErr.message);
    return;
  }

  console.log(`Total services retrieved for group analysis: ${allServices.length}`);

  const categoryIdCounts = {};
  const categoryNameCounts = {};
  const categoryPairCounts = {};

  allServices.forEach(s => {
    const catId = s.category_id;
    const catName = s.category_name;
    const pair = `${catId} | ${catName}`;

    categoryIdCounts[catId] = (categoryIdCounts[catId] || 0) + 1;
    categoryNameCounts[catName] = (categoryNameCounts[catName] || 0) + 1;
    categoryPairCounts[pair] = (categoryPairCounts[pair] || 0) + 1;
  });

  console.log('\nService counts by services.category_id:');
  console.table(categoryIdCounts);

  console.log('\nService counts by services.category_name:');
  console.table(categoryNameCounts);

  console.log('\nService counts by (category_id | category_name):');
  console.table(categoryPairCounts);

  // Compare categories.id (UUID) vs services.category_id (String/Slug)
  console.log('\n--- COMPARISON OF categories TABLE vs services.category_id ---');
  (categories || []).forEach(c => {
    const matchByUuid = allServices.filter(s => String(s.category_id) === String(c.id)).length;
    const matchBySlug = allServices.filter(s => String(s.category_id) === String(c.slug)).length;
    const matchByName = allServices.filter(s => String(s.category_name).toLowerCase() === String(c.name).toLowerCase()).length;

    console.log(`Category: "${c.name}"`);
    console.log(`  - DB Category UUID (c.id): ${c.id}`);
    console.log(`  - DB Category Slug (c.slug): ${c.slug}`);
    console.log(`  - Services matching category_id = UUID (${c.id}): ${matchByUuid}`);
    console.log(`  - Services matching category_id = Slug (${c.slug}): ${matchBySlug}`);
    console.log(`  - Services matching category_name = Name (${c.name}): ${matchByName}`);
  });
}

runDiagnostic();
