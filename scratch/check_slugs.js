import { createClient } from '@supabase/supabase-js';

const SUPABASE_URL = 'https://lacsmipikpohchhdfzjn.supabase.co';
const SUPABASE_ANON_KEY = 'sb_publishable_-Kx62Hm3TebdU5uTaS6wRw_3zRyNsdU';

const supabase = createClient(SUPABASE_URL, SUPABASE_ANON_KEY);

async function testSlugs() {
  const testSlugs = ['cbc-test', 'thyroid-profile-total', 'lipid-profile', 'liver-function-test', 'hex-basic-health-check-preventive'];
  for (const s of testSlugs) {
    const { data } = await supabase.from('services').select('slug, service_name').eq('slug', s).maybeSingle();
    console.log(`Slug "${s}":`, data ? `Found: ${data.service_name}` : 'NOT FOUND IN DB');
  }

  // Find 5 random slugs in DB
  const { data: randoms } = await supabase.from('services').select('slug, service_name').limit(5);
  console.log('Sample DB slugs:', randoms);
}

testSlugs();
