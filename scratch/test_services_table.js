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

console.log('Testing Supabase URL:', supabaseUrl);
const supabase = createClient(supabaseUrl, supabaseKey);

async function testServices() {
  console.log('--- Testing Query: supabase.from("services").select("*", { count: "exact" }).limit(5) ---');
  const { data, count, error } = await supabase.from('services').select('*', { count: 'exact' }).limit(5);

  if (error) {
    console.error('Error querying services table:', error);
  } else {
    console.log('Success! Total count of services in DB:', count);
    console.log('Sample data (first 2):', data.slice(0, 2));
  }
}

testServices();
