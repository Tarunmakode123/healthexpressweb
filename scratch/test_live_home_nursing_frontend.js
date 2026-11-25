import { createClient } from '@supabase/supabase-js';

const supabaseUrl = 'https://lacsmipikpohchhdfzjn.supabase.co';
const supabaseKey = 'sb_publishable_-Kx62Hm3TebdU5uTaS6wRw_3zRyNsdU';

const supabase = createClient(supabaseUrl, supabaseKey);

async function verifyHomeNursing() {
  console.log('=== VERIFYING HOME NURSING IN PRODUCTION SUPABASE ===');
  
  const { data: services, count, error } = await supabase
    .from('services')
    .select('id, slug, service_code, service_name, category_id, category_name, service_type, selling_price, mrp, active', { count: 'exact' })
    .eq('category_id', 'home-nursing');

  if (error) {
    console.error('Fetch error:', error);
    return;
  }

  console.log(`Found ${count} services under category_id = 'home-nursing':`);
  console.table(services.map(s => ({
    code: s.service_code,
    name: s.service_name,
    category_id: s.category_id,
    service_type: s.service_type,
    price: s.selling_price,
    active: s.active
  })));

  // Test dynamic whatsapp message generation
  console.log('\n=== DYNAMIC WHATSAPP MESSAGES VERIFICATION ===');
  services.forEach(s => {
    const msg = `Hi Health Express, I am interested in ${s.service_name}. Please share more details.`;
    const encoded = encodeURIComponent(msg);
    console.log(`[${s.service_code}] "${s.service_name}" -> https://wa.me/917676558809?text=${encoded}`);
  });
}

verifyHomeNursing().catch(console.error);
