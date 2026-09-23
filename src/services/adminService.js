import { supabase, isSupabaseConfigured } from '../lib/supabase.js';

/**
 * Fetch all orders and payments for Admin Panel
 */
export async function fetchAdminOrders() {
  if (isSupabaseConfigured) {
    try {
      const { data: orders, error } = await supabase
        .from('orders')
        .select(`
          *,
          payments (*)
        `)
        .order('created_at', { ascending: false });

      if (error) {
        console.warn('Fetch admin orders warning:', error.message);
      } else if (orders && orders.length > 0) {
        return { success: true, data: orders };
      }
    } catch (err) {
      console.warn('Fetch admin orders exception:', err);
    }
  }

  // Fallback demo data for immediate testing
  const demoOrders = [
    {
      id: 'ord_101',
      order_code: 'HEX-ORD-9281',
      customer_name: 'Rajesh Sharma',
      customer_phone: '+91 98765 43210',
      customer_email: 'rajesh.sharma@example.com',
      total_amount: 1298,
      currency: 'INR',
      order_status: 'CONFIRMED',
      payment_status: 'PAID',
      created_at: new Date(Date.now() - 3600000).toISOString(),
      items: [
        { id: 'cbc', name: 'Complete Blood Count (CBC)', quantity: 2, unit_price: 299, total_price: 598 },
        { id: 'thyroid', name: 'Thyroid Profile Total', quantity: 1, unit_price: 700, total_price: 700 }
      ],
      payments: [
        {
          id: 'pay_101',
          razorpay_order_id: 'order_Lzp9281',
          razorpay_payment_id: 'pay_Lzp882193',
          payment_method: 'ONLINE',
          payment_mode: 'LIVE',
          payment_status: 'PAID',
          amount: 1298
        }
      ]
    },
    {
      id: 'ord_102',
      order_code: 'HEX-ORD-4820',
      customer_name: 'Priya Sundaram',
      customer_phone: '+91 98450 12345',
      customer_email: 'priya.sundaram@example.com',
      total_amount: 499,
      currency: 'INR',
      order_status: 'CONFIRMED',
      payment_status: 'PENDING',
      created_at: new Date(Date.now() - 7200000).toISOString(),
      items: [
        { id: 'lipid', name: 'Lipid Profile Screen', quantity: 1, unit_price: 499, total_price: 499 }
      ],
      payments: [
        {
          id: 'pay_102',
          razorpay_order_id: 'cod_ord_4820',
          razorpay_payment_id: null,
          payment_method: 'COD',
          payment_mode: 'COD',
          payment_status: 'PENDING',
          amount: 499
        }
      ]
    },
    {
      id: 'ord_103',
      order_code: 'HEX-ORD-3190',
      customer_name: 'Amit Patel',
      customer_phone: '+91 97123 99887',
      customer_email: 'amit.patel@example.com',
      total_amount: 2499,
      currency: 'INR',
      order_status: 'PENDING',
      payment_status: 'FAILED',
      created_at: new Date(Date.now() - 14400000).toISOString(),
      items: [
        { id: 'full-body', name: 'Master Health Checkup Package', quantity: 1, unit_price: 2499, total_price: 2499 }
      ],
      payments: [
        {
          id: 'pay_103',
          razorpay_order_id: 'order_Lzp3190',
          razorpay_payment_id: 'pay_failed_192',
          payment_method: 'ONLINE',
          payment_mode: 'DEMO',
          payment_status: 'FAILED',
          amount: 2499
        }
      ]
    }
  ];

  return { success: true, data: demoOrders };
}

/**
 * Update Order status in database
 */
export async function updateAdminOrderStatus(orderId, newOrderStatus) {
  if (isSupabaseConfigured) {
    try {
      const { error } = await supabase
        .from('orders')
        .update({ order_status: newOrderStatus, updated_at: new Date().toISOString() })
        .eq('id', orderId);

      if (error) {
        return { success: false, error: error.message };
      }
      return { success: true };
    } catch (err) {
      return { success: false, error: err.message };
    }
  }

  return { success: true };
}

/**
 * Fetch Guest Prescriptions & Enquiries
 */
export async function fetchAdminPrescriptions() {
  if (isSupabaseConfigured) {
    try {
      const { data: enquiries, error } = await supabase
        .from('enquiries')
        .select(`
          *,
          patients (*),
          prescriptions (*)
        `)
        .order('created_at', { ascending: false });

      if (error) {
        console.warn('Fetch enquiries warning:', error.message);
      } else if (enquiries && enquiries.length > 0) {
        return { success: true, data: enquiries };
      }
    } catch (err) {
      console.warn('Fetch enquiries exception:', err);
    }
  }

  // Fallback demo dataset
  const demoPrescriptions = [
    {
      id: 'enq_201',
      enquiry_code: 'HEX-ENQ-8812',
      status: 'pending_review',
      notes: 'Doctor prescribed blood tests for fever and thyroid check.',
      created_at: new Date(Date.now() - 5400000).toISOString(),
      patients: {
        full_name: 'Meena Kulkarni',
        phone_e164: '+91 98220 55443',
        city: 'Bengaluru',
        email: 'meena.kulkarni@example.com'
      },
      prescriptions: [
        {
          id: 'pres_101',
          file_name: 'prescription_meena_fever.pdf',
          file_path: 'guest/HEX-ENQ-8812/prescription.pdf',
          file_type: 'application/pdf',
          file_size: 1024500
        }
      ]
    },
    {
      id: 'enq_202',
      enquiry_code: 'HEX-ENQ-7102',
      status: 'contacted',
      notes: 'Please quote price for lipid profile and vitamin D home test.',
      created_at: new Date(Date.now() - 18000000).toISOString(),
      patients: {
        full_name: 'Anil Kumar',
        phone_e164: '+91 99001 22334',
        city: 'Bengaluru',
        email: null
      },
      prescriptions: [
        {
          id: 'pres_102',
          file_name: 'rx_anil_lab.png',
          file_path: 'guest/HEX-ENQ-7102/rx_anil.png',
          file_type: 'image/png',
          file_size: 512000
        }
      ]
    }
  ];

  return { success: true, data: demoPrescriptions };
}

/**
 * Update Enquiry status
 */
export async function updateAdminEnquiryStatus(enquiryId, newStatus) {
  if (isSupabaseConfigured) {
    try {
      const { error } = await supabase
        .from('enquiries')
        .update({ status: newStatus, updated_at: new Date().toISOString() })
        .eq('id', enquiryId);

      if (error) return { success: false, error: error.message };
      return { success: true };
    } catch (err) {
      return { success: false, error: err.message };
    }
  }
  return { success: true };
}

/**
 * Fetch Registered Patients Directory
 */
export async function fetchAdminPatients() {
  if (isSupabaseConfigured) {
    try {
      const { data: patients, error } = await supabase
        .from('patients')
        .select('*')
        .order('created_at', { ascending: false });

      if (error) {
        console.warn('Fetch patients warning:', error.message);
      } else if (patients && patients.length > 0) {
        return { success: true, data: patients };
      }
    } catch (err) {
      console.warn('Fetch patients exception:', err);
    }
  }

  const demoPatients = [
    { id: 'pat_1', full_name: 'Rajesh Sharma', phone_e164: '+91 98765 43210', email: 'rajesh.sharma@example.com', city: 'Bengaluru', is_verified: true, created_at: '2026-09-01T10:00:00.000Z' },
    { id: 'pat_2', full_name: 'Priya Sundaram', phone_e164: '+91 98450 12345', email: 'priya.sundaram@example.com', city: 'Bengaluru', is_verified: true, created_at: '2026-09-05T14:30:00.000Z' },
    { id: 'pat_3', full_name: 'Meena Kulkarni', phone_e164: '+91 98220 55443', email: 'meena.kulkarni@example.com', city: 'Bengaluru', is_verified: false, created_at: '2026-09-12T09:15:00.000Z' }
  ];

  return { success: true, data: demoPatients };
}
