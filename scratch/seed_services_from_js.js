import { createClient } from '@supabase/supabase-js';
import fs from 'fs';
import path from 'path';
import { fileURLToPath } from 'url';
import { ALL_SERVICES } from '../src/data/services.js';

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

async function seedCatalog() {
  console.log(`Starting catalog seed of ${ALL_SERVICES.length} records to Supabase...`);

  // Transform records to match public.services schema
  const dbRecords = ALL_SERVICES.map(s => ({
    slug: s.slug,
    service_code: s.service_code || null,
    service_name: s.name || s.service_name || 'Healthcare Service',
    category_id: s.category_id || 'lab-tests',
    category_name: s.category_name || s.category || 'Lab Tests',
    subcategory: s.subcategory || null,
    provider: s.provider || null,
    description: s.description || null,
    overview: s.overview || null,
    mrp: Number(s.mrp || s.price || s.selling_price || 299),
    selling_price: Number(s.selling_price || s.discount_price || s.price || 299),
    b2b_price: Number(s.b2b_price || 0) || null,
    discount_percentage: s.discount_percentage || null,
    turnaround_time: s.turnaround_time || s.turnaround || null,
    patient_preparation: s.patient_preparation || s.preparation || null,
    specimen_type: s.specimen_type || s.sample_type || null,
    home_collection_available: Boolean(s.home_collection_available),
    centre_visit_required: Boolean(s.centre_visit_required),
    parameters: s.parameters || [],
    parameters_count: (s.parameters && Array.isArray(s.parameters)) ? s.parameters.length : 0,
    service_type: s.is_home_nursing ? 'home_nursing' : 'lab',
    source: s.source || 'catalog',
    active: true
  }));

  const BATCH_SIZE = 100;
  let successCount = 0;
  let errorCount = 0;

  for (let i = 0; i < dbRecords.length; i += BATCH_SIZE) {
    const batch = dbRecords.slice(i, i + BATCH_SIZE);
    const { data, error } = await supabase.from('services').upsert(batch, { onConflict: 'slug' });

    if (error) {
      console.error(`Error seeding batch ${i / BATCH_SIZE + 1}:`, error.message);
      errorCount += batch.length;
    } else {
      successCount += batch.length;
      console.log(`Seeded ${successCount} / ${dbRecords.length} services...`);
    }
  }

  console.log(`\n=== CATALOG SEED COMPLETE ===`);
  console.log(`Successfully seeded: ${successCount} records.`);
  console.log(`Errors: ${errorCount}`);
}

seedCatalog();
