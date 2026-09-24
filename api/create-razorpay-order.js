import crypto from 'crypto';
import { validateCartTotal } from '../src/services/catalogPriceValidator.js';

/**
 * SERVER-SIDE ONLY ENDPOINT: Create Razorpay Order
 * Uses server-side environment variables: RAZORPAY_KEY_ID & RAZORPAY_KEY_SECRET
 * NEVER EXPOSES RAZORPAY_KEY_SECRET TO BROWSER
 */
export async function handleCreateRazorpayOrder(reqBody) {
  const { items, customerName, customerPhone, customerEmail, isTestModePayment } = reqBody || {};

  // 1. Validate Cart & calculate trusted amount on server
  const cartValidation = validateCartTotal(items);
  if (!cartValidation.isValid) {
    return {
      status: 400,
      body: { error: cartValidation.error || 'Invalid cart data' }
    };
  }

  const { verifiedTotal, validatedItems } = cartValidation;

  const keyId = process.env.RAZORPAY_KEY_ID || process.env.VITE_RAZORPAY_KEY_ID;
  const keySecret = process.env.RAZORPAY_KEY_SECRET;

  // STRICT TEST MODE CHECK: Only allow ₹1 test amount override if Razorpay key starts with rzp_test_
  const isTestKey = keyId && keyId.startsWith('rzp_test_');
  const finalAmount = (isTestKey && isTestModePayment === true) ? 1 : verifiedTotal;
  const amountInPaise = Math.round(finalAmount * 100);

  // Check if live Razorpay secret credentials exist
  if (!keyId || !keySecret || !keyId.startsWith('rzp_')) {
    // Return DEMO mode order parameters if live credentials are not available
    const demoRzpOrderId = 'demo_rzp_ord_' + Date.now();
    return {
      status: 200,
      body: {
        mode: 'DEMO',
        razorpay_order_id: demoRzpOrderId,
        amount: verifiedTotal,
        currency: 'INR',
        items: validatedItems,
        message: 'Demo Payment — No real money will be charged.'
      }
    };
  }

  // Live/Test Razorpay REST API Order creation call
  try {
    const authHeader = 'Basic ' + Buffer.from(`${keyId}:${keySecret}`).toString('base64');
    const response = await fetch('https://api.razorpay.com/v1/orders', {
      method: 'POST',
      headers: {
        'Content-Type': 'application/json',
        'Authorization': authHeader
      },
      body: JSON.stringify({
        amount: amountInPaise,
        currency: 'INR',
        receipt: 'receipt_' + Date.now(),
        notes: {
          customer_name: customerName || 'Guest',
          customer_phone: customerPhone || '',
          item_count: validatedItems.length
        }
      })
    });

    const rzpData = await response.json();

    if (!response.ok) {
      console.error('Razorpay API Order Error:', rzpData);
      return {
        status: response.status,
        body: { error: rzpData.error?.description || 'Razorpay order creation failed.' }
      };
    }

    return {
      status: 200,
      body: {
        mode: 'LIVE',
        razorpay_order_id: rzpData.id,
        amount: finalAmount,
        currency: 'INR',
        items: validatedItems,
        key_id: keyId
      }
    };
  } catch (err) {
    console.error('Razorpay API exception:', err);
    return {
      status: 500,
      body: { error: 'Internal server error creating Razorpay order.' }
    };
  }
}

/**
 * VERCEL SERVERLESS FUNCTION DEFAULT EXPORT
 */
export default async function handler(req, res) {
  if (req.method !== 'POST') {
    return res.status(405).json({ error: 'Method Not Allowed' });
  }
  const result = await handleCreateRazorpayOrder(req.body);
  return res.status(result.status).json(result.body);
}

