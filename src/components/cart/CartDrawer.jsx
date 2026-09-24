import React, { useState, useEffect } from 'react';
import { 
  ShoppingBag, X, Plus, Minus, Trash2, ArrowRight, ShieldCheck, 
  CheckCircle2, Sparkles, MessageSquare, CreditCard, AlertCircle, RefreshCw, Truck
} from 'lucide-react';
import { useCart } from '../../context/CartContext';
import { useAuth } from '../../context/AuthContext';
import { openWhatsApp } from '../../utils/whatsapp';
import { 
  createInternalOrder, 
  createRazorpayOrderServer,
  verifyAndConfirmPayment, 
  loadRazorpaySDK, 
  isRazorpayLiveConfigured, 
  VITE_RAZORPAY_KEY_ID 
} from '../../services/paymentService';
import RazorpayDemoModal from '../common/RazorpayDemoModal';

export default function CartDrawer() {
  const { 
    cartItems, 
    isCartOpen, 
    closeCart, 
    removeFromCart, 
    updateQuantity, 
    clearCart, 
    subtotal, 
    originalSubtotal, 
    totalSavings, 
    itemCount 
  } = useCart();

  const { user, isLoggedIn } = useAuth();

  const [checkoutStep, setCheckoutStep] = useState('cart'); // 'cart' | 'checkout' | 'success'
  const [paymentMethodChoice, setPaymentMethodChoice] = useState('online'); // 'online' | 'cod'
  const [isProcessingPayment, setIsProcessingPayment] = useState(false);
  const [errorMessage, setErrorMessage] = useState(null);
  const [confirmedOrder, setConfirmedOrder] = useState(null);
  const [isDemoModalOpen, setIsDemoModalOpen] = useState(false);
  const [pendingDemoOrder, setPendingDemoOrder] = useState(null);

  const [patientData, setPatientData] = useState({
    name: '',
    phone: '',
    email: '',
    address: 'Bengaluru'
  });

  // Pre-fill user details if logged in
  useEffect(() => {
    if (user) {
      setPatientData((prev) => ({
        ...prev,
        name: user.name || prev.name,
        phone: user.phone || prev.phone,
        email: user.email || prev.email
      }));
    }
  }, [user]);

  if (!isCartOpen) return null;

  // Handle Order Submit (COD or Online Payment)
  const handleSubmitCheckout = async (e) => {
    if (e) e.preventDefault();
    setErrorMessage(null);

    if (cartItems.length === 0) {
      setErrorMessage('Your basket is empty.');
      return;
    }

    if (!patientData.name.trim()) {
      setErrorMessage('Please enter the patient full name.');
      return;
    }

    if (!patientData.phone.trim()) {
      setErrorMessage('Please enter a valid phone number.');
      return;
    }

    setIsProcessingPayment(true);

    try {
      // ----------------------------------------------------
      // COD (CASH ON DELIVERY / PAY ON COLLECTION) FLOW
      // ----------------------------------------------------
      if (paymentMethodChoice === 'cod') {
        const codOrderRes = await createInternalOrder({
          customerName: patientData.name,
          customerPhone: patientData.phone,
          customerEmail: patientData.email,
          city: patientData.address,
          items: cartItems,
          userId: user?.id || null,
          paymentMethod: 'COD'
        });

        if (!codOrderRes.success) {
          setErrorMessage(codOrderRes.error || 'Failed to place Cash on Delivery order.');
          setIsProcessingPayment(false);
          return;
        }

        setConfirmedOrder({
          ...codOrderRes,
          payment_status: 'PENDING',
          order_status: 'CONFIRMED',
          payment_method: 'COD',
          payment_mode: 'COD'
        });
        clearCart();
        setIsProcessingPayment(false);
        setCheckoutStep('success');
        return;
      }

      // ----------------------------------------------------
      // ONLINE PAYMENT FLOW (RAZORPAY LIVE OR DEMO MODE)
      // ----------------------------------------------------
      // 1. Create official Razorpay Order via server API endpoint (/api/create-razorpay-order)
      const rzpServerRes = await createRazorpayOrderServer({
        items: cartItems,
        customerName: patientData.name,
        customerPhone: patientData.phone,
        customerEmail: patientData.email
      });

      let realRzpOrderId = null;
      let isLiveServerOrder = false;

      if (rzpServerRes.success && rzpServerRes.mode === 'LIVE' && rzpServerRes.razorpay_order_id && rzpServerRes.razorpay_order_id.startsWith('order_')) {
        realRzpOrderId = rzpServerRes.razorpay_order_id;
        isLiveServerOrder = true;
      }

      // 2. Create internal order in Supabase database
      const orderRes = await createInternalOrder({
        customerName: patientData.name,
        customerPhone: patientData.phone,
        customerEmail: patientData.email,
        city: patientData.address,
        items: cartItems,
        userId: user?.id || null,
        paymentMethod: 'ONLINE',
        razorpayOrderId: realRzpOrderId
      });

      if (!orderRes.success) {
        setErrorMessage(orderRes.error || 'Failed to initialize online order.');
        setIsProcessingPayment(false);
        return;
      }

      if (isRazorpayLiveConfigured() && isLiveServerOrder) {
        const sdkLoaded = await loadRazorpaySDK();
        if (!sdkLoaded) {
          setErrorMessage('Could not load Razorpay SDK. Please check your internet connection.');
          setIsProcessingPayment(false);
          return;
        }

        const options = {
          key: VITE_RAZORPAY_KEY_ID,
          amount: Math.round(orderRes.total_amount * 100),
          currency: orderRes.currency || 'INR',
          name: 'Health Express',
          description: `Order ${orderRes.order_code} (${orderRes.items.length} items)`,
          image: '/logo.png',
          order_id: realRzpOrderId,
          handler: async function (response) {
            // Server-side Payment Verification
            const verifyRes = await verifyAndConfirmPayment({
              orderId: orderRes.order_id,
              razorpayOrderId: response.razorpay_order_id,
              razorpayPaymentId: response.razorpay_payment_id,
              razorpaySignature: response.razorpay_signature,
              paymentMethod: response.razorpay_payment_method || 'online',
              paymentMode: 'LIVE'
            });

            if (verifyRes.success) {
              setConfirmedOrder({
                ...orderRes,
                payment_status: 'PAID',
                order_status: 'CONFIRMED',
                payment_method: 'ONLINE',
                razorpay_payment_id: response.razorpay_payment_id,
                payment_mode: 'LIVE'
              });
              clearCart();
              setCheckoutStep('success');
            } else {
              setErrorMessage(verifyRes.error || 'Payment verification failed on server.');
            }
            setIsProcessingPayment(false);
          },
          prefill: {
            name: patientData.name,
            email: patientData.email || '',
            contact: patientData.phone
          },
          theme: { color: '#7e22ce' },
          modal: {
            ondismiss: function () {
              setIsProcessingPayment(false);
              setErrorMessage('Payment process was cancelled by user. No money was charged.');
            }
          }
        };

        const razorpayInstance = new window.Razorpay(options);
        razorpayInstance.on('payment.failed', function (resp) {
          console.error('Razorpay Payment Failed:', resp.error);
          setErrorMessage(`Payment Failed: ${resp.error.description || 'Transaction declined.'}`);
          setIsProcessingPayment(false);
        });
        razorpayInstance.open();

      } else {
        // DEMO MODE CHECKOUT
        setIsProcessingPayment(false);
        setPendingDemoOrder(orderRes);
        setIsDemoModalOpen(true);
      }

    } catch (err) {
      console.error('Checkout error:', err);
      setErrorMessage(`Checkout error: ${err.message || 'An unexpected error occurred.'}`);
      setIsProcessingPayment(false);
    }
  };

  // Callback when Demo Payment succeeds inside RazorpayDemoModal
  const handleDemoPaymentSuccess = async (demoPayload) => {
    if (!pendingDemoOrder) return;

    setIsProcessingPayment(true);
    setIsDemoModalOpen(false);

    const verifyRes = await verifyAndConfirmPayment({
      orderId: pendingDemoOrder.order_id,
      razorpayOrderId: demoPayload.razorpay_order_id,
      razorpayPaymentId: demoPayload.razorpay_payment_id,
      razorpaySignature: demoPayload.razorpay_signature,
      paymentMethod: 'online_demo',
      paymentMode: 'DEMO'
    });

    if (verifyRes.success) {
      setConfirmedOrder({
        ...pendingDemoOrder,
        payment_status: 'PAID',
        order_status: 'CONFIRMED',
        payment_method: 'ONLINE',
        razorpay_payment_id: demoPayload.razorpay_payment_id,
        payment_mode: 'DEMO'
      });
      clearCart();
      setCheckoutStep('success');
    } else {
      setErrorMessage(verifyRes.error || 'Demo payment verification failed.');
    }

    setIsProcessingPayment(false);
  };

  return (
    <>
      <div className="fixed inset-0 z-[99999] overflow-hidden pointer-events-auto">
        {/* Dark Overlay Backdrop */}
        <div 
          onClick={closeCart}
          className="absolute inset-0 bg-slate-950/60 backdrop-blur-xs transition-opacity animate-in fade-in duration-300" 
        />

        <div className="fixed inset-y-0 right-0 max-w-full flex pl-0 sm:pl-10">
          <div className="w-screen max-w-md bg-white shadow-2xl flex flex-col justify-between border-l border-purple-100">
            
            {/* Header Bar */}
            <div className="p-6 bg-gradient-to-r from-purple-900 to-slate-900 text-white flex items-center justify-between shadow-md">
              <div className="flex items-center gap-3">
                <div className="w-10 h-10 rounded-2xl bg-purple-700/80 border border-purple-500/50 flex items-center justify-center text-white relative">
                  <ShoppingBag className="w-5 h-5" />
                  {itemCount > 0 && (
                    <span className="absolute -top-1.5 -right-1.5 w-5 h-5 rounded-full bg-emerald-500 text-slate-950 text-[10px] font-black flex items-center justify-center border-2 border-slate-900">
                      {itemCount}
                    </span>
                  )}
                </div>
                <div>
                  <h3 className="text-lg font-extrabold text-white">Your Health Basket</h3>
                  <p className="text-xs text-purple-200 font-medium">
                    {itemCount === 0 ? 'Basket is empty' : `${itemCount} service${itemCount > 1 ? 's' : ''} selected`}
                  </p>
                </div>
              </div>

              <button
                onClick={closeCart}
                className="w-9 h-9 rounded-full bg-slate-800/80 hover:bg-purple-700 text-slate-300 hover:text-white flex items-center justify-center transition-colors cursor-pointer"
              >
                <X className="w-5 h-5" />
              </button>
            </div>

            {/* Drawer Body Area */}
            <div className="flex-1 overflow-y-auto p-6 space-y-6">
              
              {/* Error Banner */}
              {errorMessage && (
                <div className="bg-rose-50 border border-rose-200 p-3.5 rounded-2xl flex items-start gap-2 text-rose-900 text-xs font-semibold animate-in fade-in duration-200">
                  <AlertCircle className="w-4 h-4 text-rose-600 shrink-0 mt-0.5" />
                  <div className="flex-1">{errorMessage}</div>
                  <button onClick={() => setErrorMessage(null)} className="text-rose-400 hover:text-rose-700">
                    <X className="w-4 h-4" />
                  </button>
                </div>
              )}

              {checkoutStep === 'success' ? (
                /* ORDER SUCCESS RECEIPT SCREEN */
                <div className="bg-white border border-emerald-200 rounded-3xl p-6 text-center space-y-4 my-auto shadow-xl text-left">
                  <div className="w-12 h-12 rounded-full bg-emerald-100 text-emerald-600 flex items-center justify-center mx-auto border border-emerald-200">
                    <CheckCircle2 className="w-8 h-8" />
                  </div>
                  
                  <div className="text-center space-y-1">
                    <h4 className="text-xl font-extrabold text-slate-900">
                      {confirmedOrder?.payment_method === 'COD' ? 'Order Confirmed (Cash on Delivery)' : 'Payment & Order Confirmed!'}
                    </h4>
                    <p className="text-xs text-slate-500 font-medium">
                      Order Code: <strong className="text-purple-900 font-black">{confirmedOrder?.order_code || 'HEX-ORD-CONFIRMED'}</strong>
                    </p>
                  </div>

                  <div className="bg-slate-50 p-4 rounded-2xl border border-slate-200 text-xs space-y-2.5">
                    <div className="flex justify-between items-center pb-2 border-b border-slate-200">
                      <span className="text-slate-500 font-semibold">Payment Method:</span>
                      <span className="font-extrabold text-purple-950 uppercase">
                        {confirmedOrder?.payment_method === 'COD' ? 'Cash on Delivery (COD)' : 'Online Payment (Razorpay)'}
                      </span>
                    </div>

                    <div className="flex justify-between items-center">
                      <span className="text-slate-500 font-semibold">Payment Status:</span>
                      <span className={`px-2.5 py-0.5 rounded-full text-[10px] font-black uppercase tracking-wider ${
                        confirmedOrder?.payment_status === 'PAID' ? 'bg-emerald-100 text-emerald-800' : 'bg-amber-100 text-amber-800'
                      }`}>
                        {confirmedOrder?.payment_status === 'PAID' ? 'PAID & CONFIRMED' : 'PENDING (PAY ON COLLECTION)'}
                      </span>
                    </div>

                    <div className="flex justify-between text-slate-700 font-semibold">
                      <span>Customer Name:</span>
                      <span className="font-bold">{confirmedOrder?.customer_name || patientData.name}</span>
                    </div>

                    <div className="flex justify-between text-slate-700 font-semibold">
                      <span>Phone:</span>
                      <span className="font-bold">{confirmedOrder?.customer_phone || patientData.phone}</span>
                    </div>

                    <div className="flex justify-between items-baseline pt-2 border-t border-slate-200">
                      <span className="font-extrabold text-slate-900">Total Amount:</span>
                      <span className="text-xl font-black text-purple-950">₹{confirmedOrder?.total_amount || subtotal}</span>
                    </div>
                  </div>

                  <div className="pt-2 flex flex-col gap-2">
                    <button
                      onClick={() => {
                        const msg = `Hello Health Express! I placed Order *${confirmedOrder?.order_code || 'HEX-ORD'}* (${confirmedOrder?.payment_method === 'COD' ? 'Cash on Delivery' : 'Paid Online'}) for ₹${confirmedOrder?.total_amount || subtotal}. Please confirm phlebotomist/nurse slot details.`;
                        openWhatsApp(msg);
                      }}
                      className="w-full py-3.5 rounded-2xl bg-emerald-600 hover:bg-emerald-700 text-white font-extrabold text-xs flex items-center justify-center gap-2 shadow-md cursor-pointer"
                    >
                      <MessageSquare className="w-4 h-4 fill-current" />
                      <span>Send Order Receipt to Care Manager on WhatsApp</span>
                    </button>

                    <button
                      onClick={() => {
                        clearCart();
                        setCheckoutStep('cart');
                        setConfirmedOrder(null);
                        closeCart();
                      }}
                      className="w-full py-3 rounded-2xl bg-slate-100 hover:bg-slate-200 text-slate-700 font-extrabold text-xs"
                    >
                      Done & Close Basket
                    </button>
                  </div>
                </div>
              ) : cartItems.length === 0 ? (
                <div className="text-center py-16 space-y-4 my-auto">
                  <div className="w-16 h-16 rounded-full bg-purple-50 text-purple-600 flex items-center justify-center mx-auto border border-purple-100">
                    <ShoppingBag className="w-8 h-8" />
                  </div>
                  <div className="space-y-1">
                    <h4 className="text-lg font-extrabold text-slate-900">Your Basket is Empty</h4>
                    <p className="text-xs text-slate-500 max-w-xs mx-auto leading-relaxed">
                      Add blood tests, health packages, home nursing, or scans from our directory to schedule care.
                    </p>
                  </div>
                  <button
                    onClick={closeCart}
                    className="px-6 py-3 rounded-2xl bg-purple-700 text-white font-extrabold text-xs shadow-md hover:bg-purple-800 transition-colors"
                  >
                    Browse Healthcare Services
                  </button>
                </div>
              ) : checkoutStep === 'checkout' ? (
                /* Checkout Form Step */
                <form onSubmit={handleSubmitCheckout} className="space-y-5 text-left">
                  <div className="flex items-center justify-between border-b border-slate-100 pb-3">
                    <span className="text-xs font-extrabold text-purple-900 uppercase tracking-wider">
                      STEP 2 OF 2 • PATIENT & PAYMENT DETAILS
                    </span>
                    <button 
                      type="button"
                      onClick={() => setCheckoutStep('cart')}
                      className="text-xs text-purple-700 font-bold hover:underline"
                    >
                      ← Back to Basket
                    </button>
                  </div>

                  <div>
                    <label className="block text-xs font-bold text-slate-800 mb-1">Patient Full Name *</label>
                    <input
                      type="text"
                      required
                      value={patientData.name}
                      onChange={(e) => setPatientData({ ...patientData, name: e.target.value })}
                      placeholder="e.g., Rajesh Sharma"
                      className="w-full px-4 py-3 rounded-xl border border-purple-200 text-xs font-medium focus:outline-none focus:ring-2 focus:ring-purple-600 bg-white"
                    />
                  </div>

                  <div>
                    <label className="block text-xs font-bold text-slate-800 mb-1">Phone / WhatsApp Number *</label>
                    <input
                      type="tel"
                      required
                      value={patientData.phone}
                      onChange={(e) => setPatientData({ ...patientData, phone: e.target.value })}
                      placeholder="+91 98765 43210"
                      className="w-full px-4 py-3 rounded-xl border border-purple-200 text-xs font-medium focus:outline-none focus:ring-2 focus:ring-purple-600 bg-white"
                    />
                  </div>

                  <div>
                    <label className="block text-xs font-bold text-slate-800 mb-1">Email Address (Optional)</label>
                    <input
                      type="email"
                      value={patientData.email}
                      onChange={(e) => setPatientData({ ...patientData, email: e.target.value })}
                      placeholder="rajesh@example.com"
                      className="w-full px-4 py-3 rounded-xl border border-purple-200 text-xs font-medium focus:outline-none focus:ring-2 focus:ring-purple-600 bg-white"
                    />
                  </div>

                  <div>
                    <label className="block text-xs font-bold text-slate-800 mb-1">Locality / Address (Bengaluru) *</label>
                    <input
                      type="text"
                      required
                      value={patientData.address}
                      onChange={(e) => setPatientData({ ...patientData, address: e.target.value })}
                      placeholder="e.g., Indiranagar, Bengaluru"
                      className="w-full px-4 py-3 rounded-xl border border-purple-200 text-xs font-medium focus:outline-none focus:ring-2 focus:ring-purple-600 bg-white"
                    />
                  </div>

                  {/* CHOOSE PAYMENT METHOD */}
                  <div className="space-y-1.5 pt-1">
                    <label className="block text-xs font-bold text-slate-800">Choose Payment Method *</label>
                    <div className="grid grid-cols-2 gap-2.5">
                      
                      {/* Option 1: Cash on Delivery / Pay on Collection */}
                      <div
                        onClick={() => setPaymentMethodChoice('cod')}
                        className={`p-3.5 rounded-2xl border cursor-pointer transition-all flex flex-col justify-between gap-1.5 ${
                          paymentMethodChoice === 'cod'
                            ? 'bg-purple-50/90 border-purple-600 ring-2 ring-purple-600/30 text-purple-950'
                            : 'bg-white border-slate-200 hover:border-purple-200 text-slate-700'
                        }`}
                      >
                        <div className="flex items-center justify-between">
                          <span className="text-xs font-extrabold flex items-center gap-1.5">
                            <Truck className="w-4 h-4 text-purple-700" />
                            <span>Cash on Delivery</span>
                          </span>
                          <span className={`w-4 h-4 rounded-full border flex items-center justify-center ${paymentMethodChoice === 'cod' ? 'border-purple-700 bg-purple-700' : 'border-slate-300'}`}>
                            {paymentMethodChoice === 'cod' && <span className="w-1.5 h-1.5 rounded-full bg-white"></span>}
                          </span>
                        </div>
                        <p className="text-[10px] text-slate-500 font-medium leading-tight">Pay Cash / UPI at sample collection</p>
                      </div>

                      {/* Option 2: Pay Online via Razorpay */}
                      <div
                        onClick={() => setPaymentMethodChoice('online')}
                        className={`p-3.5 rounded-2xl border cursor-pointer transition-all flex flex-col justify-between gap-1.5 ${
                          paymentMethodChoice === 'online'
                            ? 'bg-purple-50/90 border-purple-600 ring-2 ring-purple-600/30 text-purple-950'
                            : 'bg-white border-slate-200 hover:border-purple-200 text-slate-700'
                        }`}
                      >
                        <div className="flex items-center justify-between">
                          <span className="text-xs font-extrabold flex items-center gap-1.5">
                            <CreditCard className="w-4 h-4 text-purple-700" />
                            <span>Pay Online</span>
                          </span>
                          <span className={`w-4 h-4 rounded-full border flex items-center justify-center ${paymentMethodChoice === 'online' ? 'border-purple-700 bg-purple-700' : 'border-slate-300'}`}>
                            {paymentMethodChoice === 'online' && <span className="w-1.5 h-1.5 rounded-full bg-white"></span>}
                          </span>
                        </div>
                        <p className="text-[10px] text-slate-500 font-medium leading-tight">UPI, GPay, PhonePe, Cards, Net Banking</p>
                      </div>

                    </div>
                  </div>

                  {/* Summary Mini Box */}
                  <div className="bg-purple-50/80 p-4 rounded-2xl border border-purple-100 text-xs space-y-2">
                    <div className="flex justify-between font-bold text-slate-700">
                      <span>Selected Services ({itemCount})</span>
                      <span>₹{subtotal}</span>
                    </div>
                    {totalSavings > 0 && (
                      <div className="flex justify-between text-emerald-700 font-extrabold text-[11px]">
                        <span>Total Discount Savings</span>
                        <span>-₹{totalSavings}</span>
                      </div>
                    )}
                    <div className="flex justify-between text-slate-600 text-[11px]">
                      <span>Home Sample Collection</span>
                      <span className="font-bold text-emerald-600">FREE</span>
                    </div>
                  </div>

                  <div className="space-y-2 pt-1">
                    <button
                      type="submit"
                      disabled={isProcessingPayment}
                      className="w-full py-4 rounded-2xl bg-purple-700 hover:bg-purple-800 disabled:opacity-50 text-white font-extrabold text-xs sm:text-sm shadow-lg shadow-purple-900/20 transition-all flex items-center justify-center gap-2 cursor-pointer"
                    >
                      {isProcessingPayment ? (
                        <span className="flex items-center gap-2">
                          <RefreshCw className="w-4 h-4 animate-spin" />
                          Processing Order...
                        </span>
                      ) : paymentMethodChoice === 'cod' ? (
                        <span className="flex items-center gap-2">
                          <Truck className="w-4 h-4" />
                          <span>Place Cash on Delivery Order (₹{subtotal})</span>
                        </span>
                      ) : (
                        <span className="flex items-center gap-2">
                          <CreditCard className="w-4 h-4" />
                          <span>Pay Online via Razorpay (₹{subtotal})</span>
                        </span>
                      )}
                    </button>
                  </div>
                </form>
              ) : (
                /* Cart Items List */
                <div className="space-y-4">
                  <div className="flex items-center justify-between text-xs font-bold text-slate-500">
                    <span>SELECTED SERVICES ({cartItems.length})</span>
                    <button 
                      onClick={clearCart} 
                      className="text-rose-600 hover:underline flex items-center gap-1 text-[11px]"
                    >
                      <Trash2 className="w-3.5 h-3.5" />
                      <span>Clear Basket</span>
                    </button>
                  </div>

                  <div className="space-y-3">
                    {cartItems.map((item) => (
                      <div 
                        key={item.id}
                        className="p-4 rounded-2xl bg-white border border-slate-200/80 shadow-2xs hover:border-purple-200 transition-all space-y-3 text-left"
                      >
                        <div className="flex items-start justify-between gap-3">
                          <div>
                            <span className="text-[10px] font-black uppercase text-purple-700 bg-purple-50 px-2 py-0.5 rounded border border-purple-100">
                              {item.category}
                            </span>
                            <h4 className="text-sm font-extrabold text-slate-900 mt-1">{item.name}</h4>
                          </div>
                          <button
                            onClick={() => removeFromCart(item.id)}
                            className="text-slate-400 hover:text-rose-600 p-1 transition-colors"
                          >
                            <X className="w-4 h-4" />
                          </button>
                        </div>

                        <div className="flex items-center justify-between pt-2 border-t border-slate-100">
                          <div className="flex items-center gap-2">
                            <span className="text-base font-extrabold text-slate-900">₹{item.price * item.quantity}</span>
                            {item.originalPrice > item.price && (
                              <span className="text-xs text-slate-400 line-through">₹{item.originalPrice * item.quantity}</span>
                            )}
                          </div>

                          {/* Quantity Counter */}
                          <div className="flex items-center gap-2 bg-slate-100 p-1 rounded-xl border border-slate-200">
                            <button
                              onClick={() => updateQuantity(item.id, -1)}
                              className="w-6 h-6 rounded-lg bg-white text-slate-700 font-bold flex items-center justify-center hover:bg-purple-100 transition-colors"
                            >
                              <Minus className="w-3 h-3" />
                            </button>
                            <span className="text-xs font-black px-1.5">{item.quantity}</span>
                            <button
                              onClick={() => updateQuantity(item.id, 1)}
                              className="w-6 h-6 rounded-lg bg-white text-slate-700 font-bold flex items-center justify-center hover:bg-purple-100 transition-colors"
                            >
                              <Plus className="w-3 h-3" />
                            </button>
                          </div>
                        </div>
                      </div>
                    ))}
                  </div>
                </div>
              )}

            </div>

            {/* Drawer Footer Summary (Only in Cart step) */}
            {cartItems.length > 0 && checkoutStep === 'cart' && (
              <div className="p-6 bg-slate-50 border-t border-slate-200/80 space-y-4 text-left">
                
                <div className="space-y-2 text-xs">
                  <div className="flex justify-between text-slate-600 font-semibold">
                    <span>Total MRP</span>
                    <span>₹{originalSubtotal}</span>
                  </div>
                  {totalSavings > 0 && (
                    <div className="flex justify-between text-emerald-700 font-extrabold">
                      <span>Special Discount Savings</span>
                      <span>-₹{totalSavings}</span>
                    </div>
                  )}
                  <div className="flex justify-between text-slate-600 font-semibold">
                    <span>Home Sample Collection Fee</span>
                    <span className="text-emerald-700 font-bold uppercase">FREE</span>
                  </div>

                  <div className="pt-2 border-t border-slate-200 flex justify-between items-baseline">
                    <span className="text-sm font-extrabold text-slate-900">Total Amount Payable</span>
                    <span className="text-2xl font-black text-purple-900">₹{subtotal}</span>
                  </div>
                </div>

                <div className="flex flex-col gap-2">
                  <button
                    onClick={() => setCheckoutStep('checkout')}
                    className="w-full py-4 rounded-2xl bg-purple-700 hover:bg-purple-800 text-white font-extrabold text-xs sm:text-sm shadow-lg shadow-purple-700/25 transition-all flex items-center justify-center gap-2 cursor-pointer"
                  >
                    <span>Proceed to Checkout</span>
                    <ArrowRight className="w-4 h-4" />
                  </button>
                </div>

                <div className="flex items-center justify-center gap-1.5 text-[10px] font-bold text-slate-500 pt-1">
                  <ShieldCheck className="w-3.5 h-3.5 text-purple-700" />
                  <span>NABL Partner Lab Verification • Zero Setup Fees</span>
                </div>
              </div>
            )}

          </div>
        </div>
      </div>

      {/* Demo Payment Modal */}
      <RazorpayDemoModal
        isOpen={isDemoModalOpen}
        onClose={() => setIsDemoModalOpen(false)}
        orderDetails={pendingDemoOrder}
        onDemoPaymentSuccess={handleDemoPaymentSuccess}
      />
    </>
  );
}
