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

async function verifyServicesSetup() {
  console.log('=== VERIFYING PUBLIC.SERVICES TABLE & RLS SETUP ===');

  const { data, count, error } = await supabase
    .from('services')
    .select('*', { count: 'exact' });

  if (error) {
    console.error('Query Error:', error);
  } else {
    console.log('✓ Table public.services query successful!');
    console.log('✓ Current service row count:', count);
    console.log('✓ Sample data returned:', data);
  }
}

verifyServicesSetup();
