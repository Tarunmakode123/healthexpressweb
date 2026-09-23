import React, { useState } from 'react';
import { 
  ShoppingBag, X, Plus, Minus, Trash2, ArrowRight, ShieldCheck, 
  CheckCircle2, Sparkles, MessageSquare, PhoneCall, Calendar
} from 'lucide-react';
import { useCart } from '../../context/CartContext';
import { openWhatsApp } from '../../utils/whatsapp';

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

  const [checkoutStep, setCheckoutStep] = useState('cart'); // 'cart' or 'checkout' or 'success'
  const [patientData, setPatientData] = useState({
    name: '',
    phone: '',
    address: 'Bengaluru',
    preferredDate: ''
  });

  if (!isCartOpen) return null;

  const handleWhatsAppCheckout = () => {
    if (cartItems.length === 0) return;

    const itemListText = cartItems
      .map((item, idx) => `${idx + 1}. ${item.name} (${item.quantity}x) - ₹${item.price * item.quantity}`)
      .join('\n');

    const message = 
      `Hello Health Express!\n\nI would like to confirm & schedule my Health Basket Order:\n\n` +
      `*SERVICES ORDERED:*\n${itemListText}\n\n` +
      `*TOTAL PAYABLE:* ₹${subtotal} (Saved ₹${totalSavings})\n` +
      (patientData.name ? `*PATIENT NAME:* ${patientData.name}\n` : '') +
      (patientData.phone ? `*PHONE:* ${patientData.phone}\n` : '') +
      (patientData.address ? `*CITY/ADDRESS:* ${patientData.address}\n` : '') +
      `\nPlease help me confirm slot booking and phlebotomist / nurse dispatch.`;

    openWhatsApp(message);
    setCheckoutStep('success');
  };

  const handleDirectSubmit = (e) => {
    e.preventDefault();
    handleWhatsAppCheckout();
  };

  return (
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
            
            {checkoutStep === 'success' ? (
              <div className="bg-emerald-50 border border-emerald-200 rounded-3xl p-8 text-center space-y-4 my-auto">
                <CheckCircle2 className="w-12 h-12 text-emerald-600 mx-auto" />
                <h4 className="text-xl font-extrabold text-slate-900">Booking Request Initiated!</h4>
                <p className="text-xs text-slate-600 leading-relaxed font-medium">
                  Your order details have been prepared for Health Express Care Desk. Our care manager will confirm your home sample collection or nursing slot immediately.
                </p>
                <div className="pt-2 flex flex-col gap-2">
                  <button
                    onClick={() => {
                      clearCart();
                      setCheckoutStep('cart');
                      closeCart();
                    }}
                    className="w-full py-3 rounded-2xl bg-purple-700 text-white font-extrabold text-xs shadow-md"
                  >
                    Done & Return to Site
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
              <form onSubmit={handleDirectSubmit} className="space-y-5 text-left">
                <div className="flex items-center justify-between border-b border-slate-100 pb-3">
                  <span className="text-xs font-extrabold text-purple-900 uppercase tracking-wider">
                    STEP 2 OF 2 • PATIENT DETAILS
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

                {/* Summary Mini Box */}
                <div className="bg-purple-50/80 p-4 rounded-2xl border border-purple-100 text-xs space-y-2">
                  <div className="flex justify-between font-bold text-slate-700">
                    <span>Selected Services ({itemCount})</span>
                    <span>₹{subtotal}</span>
                  </div>
                  <div className="flex justify-between text-emerald-700 font-extrabold text-[11px]">
                    <span>Total Discount Savings</span>
                    <span>-₹{totalSavings}</span>
                  </div>
                  <div className="flex justify-between text-slate-600 text-[11px]">
                    <span>Home Sample Collection</span>
                    <span className="font-bold text-emerald-600">FREE</span>
                  </div>
                </div>

                <button
                  type="submit"
                  className="w-full py-4 rounded-2xl bg-gradient-to-r from-emerald-600 to-teal-600 hover:from-emerald-500 hover:to-teal-500 text-white font-extrabold text-xs sm:text-sm shadow-lg shadow-emerald-900/20 transition-all flex items-center justify-center gap-2 cursor-pointer"
                >
                  <MessageSquare className="w-4 h-4 fill-current" />
                  <span>Confirm Order via WhatsApp (₹{subtotal})</span>
                </button>
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

                <button
                  onClick={handleWhatsAppCheckout}
                  className="w-full py-3.5 rounded-2xl bg-emerald-600 hover:bg-emerald-700 text-white font-extrabold text-xs shadow-md transition-all flex items-center justify-center gap-2 cursor-pointer"
                >
                  <MessageSquare className="w-4 h-4 fill-current" />
                  <span>Instant Booking via WhatsApp</span>
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
  );
}
