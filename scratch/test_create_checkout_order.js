import { createClient } from '@supabase/supabase-js';

const supabaseUrl = 'https://lacsmipikpohchhdfzjn.supabase.co';
const supabaseAnonKey = 'sb_publishable_-Kx62Hm3TebdU5uTaS6wRw_3zRyNsdU';

const supabase = createClient(supabaseUrl, supabaseAnonKey);

async function testCheckoutOrder() {
  console.log('--- TESTING RPC create_checkout_order ---');
  const res = await supabase.rpc('create_checkout_order', {
    p_customer_name: 'Test Customer',
    p_customer_phone: '+918305059502',
    p_customer_email: 'test@example.com',
    p_city: 'Bengaluru',
    p_items: [{ id: 'test-1', name: 'Test Test', discount_price: 100, price: 100 }],
    p_total_amount: 100,
    p_razorpay_order_id: null,
    p_payment_mode: 'DEMO',
    p_user_id: null,
    p_payment_method: 'ONLINE',
    p_coins_used: 0,
    p_coin_discount: 0,
    p_promo_code: null,
    p_promo_discount: 0
  });

  console.log('Result Data:', JSON.stringify(res.data, null, 2));
  console.log('Result Error:', res.error);
}

testCheckoutOrder();
