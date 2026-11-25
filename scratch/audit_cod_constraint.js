import { createClient } from '@supabase/supabase-js';

const supabaseUrl = 'https://lacsmipikpohchhdfzjn.supabase.co';
const supabaseAnonKey = 'sb_publishable_-Kx62Hm3TebdU5uTaS6wRw_3zRyNsdU';

const supabase = createClient(supabaseUrl, supabaseAnonKey);

async function inspectCodConstraint() {
  console.log('=== READ-ONLY FORENSIC DIAGNOSTIC OF COD CHECKOUT CONSTRAINT ===\n');

  // Test 1: Call create_checkout_order with p_payment_method='COD', p_payment_mode='COD'
  console.log('Test 1: Calling create_checkout_order with p_payment_method="COD", p_payment_mode="COD"...');
  const { data: data1, error: error1 } = await supabase.rpc('create_checkout_order', {
    p_customer_name: 'Diagnostic Test',
    p_customer_phone: '+919999988888',
    p_customer_email: null,
    p_city: 'Bengaluru',
    p_items: [{ id: 'test', name: 'Test', price: 100, quantity: 1 }],
    p_total_amount: 100,
    p_razorpay_order_id: `cod_test_${Date.now()}`,
    p_payment_mode: 'COD',
    p_user_id: null,
    p_payment_method: 'COD',
    p_coins_used: 0,
    p_coin_discount: 0,
    p_promo_code: null,
    p_promo_discount: 0
  });

  console.log('Test 1 Error:', JSON.stringify(error1, null, 2));
  console.log('Test 1 Data:', JSON.stringify(data1, null, 2));

  // Test 2: Call create_checkout_order with p_payment_method='COD', p_payment_mode='DEMO'
  console.log('\nTest 2: Calling create_checkout_order with p_payment_method="COD", p_payment_mode="DEMO"...');
  const { data: data2, error: error2 } = await supabase.rpc('create_checkout_order', {
    p_customer_name: 'Diagnostic Test 2',
    p_customer_phone: '+919999988887',
    p_customer_email: null,
    p_city: 'Bengaluru',
    p_items: [{ id: 'test', name: 'Test', price: 100, quantity: 1 }],
    p_total_amount: 100,
    p_razorpay_order_id: `cod_test_2_${Date.now()}`,
    p_payment_mode: 'DEMO',
    p_user_id: null,
    p_payment_method: 'COD',
    p_coins_used: 0,
    p_coin_discount: 0,
    p_promo_code: null,
    p_promo_discount: 0
  });

  console.log('Test 2 Error:', JSON.stringify(error2, null, 2));
  console.log('Test 2 Data:', JSON.stringify(data2, null, 2));

  // Test 3: Call create_checkout_order with p_payment_method='COD', p_payment_mode='LIVE'
  console.log('\nTest 3: Calling create_checkout_order with p_payment_method="COD", p_payment_mode="LIVE"...');
  const { data: data3, error: error3 } = await supabase.rpc('create_checkout_order', {
    p_customer_name: 'Diagnostic Test 3',
    p_customer_phone: '+919999988886',
    p_customer_email: null,
    p_city: 'Bengaluru',
    p_items: [{ id: 'test', name: 'Test', price: 100, quantity: 1 }],
    p_total_amount: 100,
    p_razorpay_order_id: `cod_test_3_${Date.now()}`,
    p_payment_mode: 'LIVE',
    p_user_id: null,
    p_payment_method: 'COD',
    p_coins_used: 0,
    p_coin_discount: 0,
    p_promo_code: null,
    p_promo_discount: 0
  });

  console.log('Test 3 Error:', JSON.stringify(error3, null, 2));
  console.log('Test 3 Data:', JSON.stringify(data3, null, 2));
}

inspectCodConstraint();
