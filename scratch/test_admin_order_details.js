import { createClient } from '@supabase/supabase-js';

const supabaseUrl = 'https://lacsmipikpohchhdfzjn.supabase.co';
const supabaseKey = 'sb_publishable_-Kx62Hm3TebdU5uTaS6wRw_3zRyNsdU';

const supabase = createClient(supabaseUrl, supabaseKey);

async function testOrderDetails() {
  console.log('=== VERIFYING ADMIN ORDERS DATA & DETAILS SHAPE ===');
  
  const { data: orders, error } = await supabase
    .from('orders')
    .select(`
      *,
      payments (*)
    `)
    .order('created_at', { ascending: false })
    .limit(10);

  if (error) {
    console.error('Fetch admin orders error:', error);
    return;
  }

  console.log(`Fetched ${orders.length} orders for details audit:`);

  orders.forEach((ord, i) => {
    const payObj = ord.payments?.[0] || {};
    const payMethod = (payObj.payment_method || ord.payment_method || 'ONLINE').toUpperCase();
    const payMode = (payObj.payment_mode || ord.payment_mode || 'LIVE').toUpperCase();
    const isCod = payMethod === 'COD' || payMode === 'COD';

    console.log(`\nOrder #${i + 1}: ${ord.order_code || ord.id}`);
    console.log(`- Type: ${isCod ? 'COD ORDER 🚚' : 'ONLINE ORDER 💳'}`);
    console.log(`- Customer: ${ord.customer_name} (${ord.customer_phone})`);
    console.log(`- Total Amount: ₹${ord.total_amount}`);
    console.log(`- Payment Status: ${ord.payment_status}`);
    console.log(`- Order Status: ${ord.order_status}`);
    console.log(`- Items Count: ${Array.isArray(ord.items) ? ord.items.length : 0}`);
  });
}

testOrderDetails().catch(console.error);
