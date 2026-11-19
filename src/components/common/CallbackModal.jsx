import React, { useState, useEffect } from 'react';
import { X, Phone, User, MapPin, Zap, ShieldCheck, CheckCircle2, Send, ArrowRight } from 'lucide-react';
import { supabase, isSupabaseConfigured } from '../../lib/supabase';
import { openWhatsApp, DEFAULT_MESSAGES } from '../../utils/whatsapp';
import { POPULAR_COUNTRY_CODES, validateAndNormalizeInternationalPhone } from '../../utils/phone';

export default function CallbackModal({ isOpen, onClose, initialPhone = '', defaultCity = 'Bengaluru' }) {
  const [queryType, setQueryType] = useState('new_booking'); // 'new_booking' or 'support'
  const [countryCode, setCountryCode] = useState('+91');
  const [phone, setPhone] = useState(initialPhone);
  const [fullName, setFullName] = useState('');
  const [city, setCity] = useState(defaultCity);
  const [consent, setConsent] = useState(true);
  const [isSubmitting, setIsSubmitting] = useState(false);
  const [isSuccess, setIsSuccess] = useState(false);
  const [errorMsg, setErrorMsg] = useState('');

  useEffect(() => {
    if (initialPhone) {
      setPhone(initialPhone.replace(/\D/g, '').slice(-10));
    }
    if (defaultCity) {
      setCity(defaultCity);
    }
    setIsSuccess(false);
    setErrorMsg('');
  }, [initialPhone, defaultCity, isOpen]);

  if (!isOpen) return null;

  const handleSubmit = async (e) => {
    e.preventDefault();
    setErrorMsg('');

    if (!fullName.trim()) {
      setErrorMsg('Please enter your full name');
      return;
    }

    const phoneCheck = validateAndNormalizeInternationalPhone(phone, countryCode);
    if (!phoneCheck.isValid) {
      setErrorMsg(phoneCheck.error || 'Please enter a valid mobile number');
      return;
    }

    if (!consent) {
      setErrorMsg('Please affirm consent to receive a callback');
      return;
    }

    setIsSubmitting(true);

    try {
      const typeLabel = queryType === 'new_booking' ? 'New Booking' : 'Customer Support Query';
      const record = {
        name: fullName.trim(),
        phone: phoneCheck.phone_e164,
        city: city.trim(),
        query_type: typeLabel,
        created_at: new Date().toISOString()
      };

      // 1. Save to Supabase enquiries table
      if (isSupabaseConfigured && supabase) {
        await supabase.from('enquiries').insert([
          {
            full_name: fullName.trim(),
            phone_e164: phoneCheck.phone_e164,
            city: city.trim(),
            source: 'callback_modal',
            status: 'pending_review',
            notes: `⚡ 10-Min Callback Request: ${typeLabel}. Patient: ${fullName.trim()} (${phoneCheck.phone_e164}), City: ${city.trim()}`
          }
        ]);
      }

      // 2. Persist to localStorage leads
      const existing = JSON.parse(localStorage.getItem('he_callback_requests') || '[]');
      localStorage.setItem('he_callback_requests', JSON.stringify([...existing, record]));

      // 3. Log analytics
      try {
        const { logAnalyticsEvent } = await import('../../utils/analytics');
        await logAnalyticsEvent('LEAD_SUBMITTED', {
          metadata: { type: 'callback_request', query_type: typeLabel, city }
        });
      } catch (err) {}

      setIsSuccess(true);
    } catch (err) {
      console.warn('Callback submission error:', err);
      setIsSuccess(true);
    } finally {
      setIsSubmitting(false);
    }
  };

  const handleWhatsAppInstant = () => {
    const typeLabel = queryType === 'new_booking' ? 'New Booking' : 'Support Query';
    const msg = `Hello Health Express! I requested a callback for ${typeLabel}. Name: ${fullName || 'Patient'}, Mobile: ${phone}. City: ${city}.`;
    openWhatsApp(msg);
  };

  return (
    <div className="fixed inset-0 z-50 bg-slate-950/70 backdrop-blur-xs flex items-center justify-center p-4 animate-in fade-in duration-200">
      <div className="bg-white w-full max-w-lg rounded-3xl shadow-2xl border border-purple-100 overflow-hidden relative animate-in zoom-in-95 duration-200">
        
        {/* Close Button */}
        <button
          onClick={onClose}
          className="absolute top-4 right-4 p-2 rounded-full bg-slate-100 hover:bg-slate-200 text-slate-500 hover:text-slate-900 transition-colors cursor-pointer z-10"
          aria-label="Close Modal"
        >
          <X className="w-5 h-5" />
        </button>

        {/* Modal Header */}
        <div className="p-6 pt-7 text-center space-y-2 border-b border-slate-100 bg-gradient-to-b from-purple-50/50 to-white">
          <h3 className="text-2xl font-black text-slate-900 tracking-tight">
            Get Health Tests at Best Price
          </h3>
          <div className="inline-flex items-center gap-1.5 text-xs font-extrabold text-amber-600 bg-amber-50 border border-amber-200 px-3 py-1 rounded-full">
            <Zap className="w-3.5 h-3.5 fill-amber-500 text-amber-500" />
            <span>Talk to our Health Expert in 10 Minutes</span>
          </div>
        </div>

        {/* Modal Content */}
        <div className="p-6 sm:p-7 text-left">
          {isSuccess ? (
            <div className="py-6 text-center space-y-4">
              <div className="w-16 h-16 bg-emerald-100 rounded-full flex items-center justify-center mx-auto text-emerald-600 shadow-inner">
                <CheckCircle2 className="w-9 h-9" />
              </div>
              <div className="space-y-1">
                <h4 className="text-xl font-black text-slate-900">Callback Request Received!</h4>
                <p className="text-xs text-slate-600 max-w-sm mx-auto leading-relaxed">
                  Thank you, <strong className="text-purple-900">{fullName}</strong>! Our dedicated Health Express care advisor will call you at <strong className="text-purple-900">{countryCode} {phone}</strong> within 10 minutes.
                </p>
              </div>

              <div className="pt-3 flex flex-col gap-2.5">
                <button
                  onClick={handleWhatsAppInstant}
                  className="w-full py-3.5 rounded-xl bg-emerald-600 hover:bg-emerald-700 text-white font-extrabold text-xs flex items-center justify-center gap-2 shadow-md transition-all cursor-pointer"
                >
                  <Send className="w-4 h-4" />
                  <span>Connect with Advisor on WhatsApp Now</span>
                </button>

                <button
                  onClick={onClose}
                  className="w-full py-2.5 rounded-xl bg-slate-100 hover:bg-slate-200 text-slate-700 font-bold text-xs transition-colors cursor-pointer"
                >
                  Done
                </button>
              </div>
            </div>
          ) : (
            <form onSubmit={handleSubmit} className="space-y-4">
              {errorMsg && (
                <div className="p-3 rounded-xl bg-rose-50 border border-rose-200 text-rose-800 text-xs font-semibold leading-snug">
                  {errorMsg}
                </div>
              )}

              {/* Toggle: New Booking vs Customer Support Query */}
              <div className="grid grid-cols-2 gap-2 p-1 bg-slate-100 rounded-2xl">
                <button
                  type="button"
                  onClick={() => setQueryType('new_booking')}
                  className={`py-2 px-3 rounded-xl text-xs font-bold transition-all flex items-center justify-center gap-2 cursor-pointer ${
                    queryType === 'new_booking'
                      ? 'bg-white text-purple-900 shadow-xs border border-purple-200 font-extrabold'
                      : 'text-slate-600 hover:text-slate-900'
                  }`}
                >
                  <span className={`w-3.5 h-3.5 rounded-full border flex items-center justify-center ${queryType === 'new_booking' ? 'border-purple-600 bg-purple-600 text-white' : 'border-slate-400'}`}>
                    {queryType === 'new_booking' && <span className="w-1.5 h-1.5 rounded-full bg-white" />}
                  </span>
                  <span>New Booking</span>
                </button>

                <button
                  type="button"
                  onClick={() => setQueryType('support')}
                  className={`py-2 px-3 rounded-xl text-xs font-bold transition-all flex items-center justify-center gap-2 cursor-pointer ${
                    queryType === 'support'
                      ? 'bg-white text-purple-900 shadow-xs border border-purple-200 font-extrabold'
                      : 'text-slate-600 hover:text-slate-900'
                  }`}
                >
                  <span className={`w-3.5 h-3.5 rounded-full border flex items-center justify-center ${queryType === 'support' ? 'border-purple-600 bg-purple-600 text-white' : 'border-slate-400'}`}>
                    {queryType === 'support' && <span className="w-1.5 h-1.5 rounded-full bg-white" />}
                  </span>
                  <span>Customer Support Query</span>
                </button>
              </div>

              {/* Mobile Number Field */}
              <div>
                <label className="block text-[11px] font-extrabold text-slate-700 uppercase tracking-wider mb-1">
                  Mobile Number <span className="text-rose-500">*</span>
                </label>
                <div className="relative flex gap-2">
                  <select
                    value={countryCode}
                    onChange={(e) => setCountryCode(e.target.value)}
                    className="px-2.5 py-2.5 rounded-xl border border-slate-300 bg-slate-50 text-xs font-bold text-slate-800 outline-none focus:ring-2 focus:ring-purple-600 cursor-pointer shrink-0"
                  >
                    {POPULAR_COUNTRY_CODES.map((c) => (
                      <option key={c.code} value={c.code}>
                        {c.flag} {c.code}
                      </option>
                    ))}
                  </select>
                  <div className="relative w-full">
                    <Phone className="w-4 h-4 text-slate-400 absolute left-3.5 top-1/2 -translate-y-1/2" />
                    <input
                      type="tel"
                      required
                      maxLength={countryCode === '+91' ? 10 : 15}
                      value={phone}
                      onChange={(e) => setPhone(e.target.value.replace(/\D/g, ''))}
                      placeholder={countryCode === '+91' ? 'Enter 10-digit mobile number' : 'Enter mobile phone'}
                      className="w-full pl-10 pr-3.5 py-2.5 rounded-xl border border-slate-300 text-xs font-bold text-slate-900 placeholder:text-slate-400 outline-none focus:ring-2 focus:ring-purple-600 transition-all"
                    />
                  </div>
                </div>
              </div>

              {/* Name Field */}
              <div>
                <label className="block text-[11px] font-extrabold text-slate-700 uppercase tracking-wider mb-1">
                  Your Name <span className="text-rose-500">*</span>
                </label>
                <div className="relative">
                  <User className="w-4 h-4 text-slate-400 absolute left-3.5 top-1/2 -translate-y-1/2" />
                  <input
                    type="text"
                    required
                    value={fullName}
                    onChange={(e) => setFullName(e.target.value)}
                    placeholder="Enter your full name"
                    className="w-full pl-10 pr-3.5 py-2.5 rounded-xl border border-slate-300 text-xs font-medium text-slate-900 placeholder:text-slate-400 outline-none focus:ring-2 focus:ring-purple-600 transition-all"
                  />
                </div>
              </div>

              {/* Location Select */}
              <div>
                <label className="block text-[11px] font-extrabold text-slate-700 uppercase tracking-wider mb-1">
                  Location / City
                </label>
                <div className="relative">
                  <MapPin className="w-4 h-4 text-purple-600 absolute left-3.5 top-1/2 -translate-y-1/2 pointer-events-none" />
                  <select
                    value={city}
                    onChange={(e) => setCity(e.target.value)}
                    className="w-full pl-10 pr-8 py-2.5 rounded-xl border border-slate-300 text-xs font-bold text-slate-900 bg-white outline-none focus:ring-2 focus:ring-purple-600 cursor-pointer"
                  >
                    <option value="Bengaluru">Bengaluru (Active Live Service)</option>
                    <option value="Delhi NCR">Delhi NCR (Care Coordination)</option>
                    <option value="Mumbai">Mumbai (Care Coordination)</option>
                    <option value="Hyderabad">Hyderabad (Care Coordination)</option>
                    <option value="Chennai">Chennai (Care Coordination)</option>
                    <option value="Kolkata">Kolkata (Care Coordination)</option>
                    <option value="Pune">Pune (Care Coordination)</option>
                    <option value="Other">Other City</option>
                  </select>
                </div>
              </div>

              {/* Consent Checkbox */}
              <label className="flex items-start gap-2.5 cursor-pointer text-left pt-1">
                <input
                  type="checkbox"
                  checked={consent}
                  onChange={(e) => setConsent(e.target.checked)}
                  className="mt-0.5 rounded text-purple-700 focus:ring-purple-600 w-4 h-4 cursor-pointer"
                />
                <span className="text-[11px] text-slate-500 font-medium leading-tight">
                  You hereby affirm & authorize Health Express to contact you regarding your healthcare query as per our Terms & Privacy Policy.
                </span>
              </label>

              {/* Submit CTA */}
              <button
                type="submit"
                disabled={isSubmitting}
                className="w-full py-3.5 rounded-2xl bg-gradient-to-r from-purple-800 to-indigo-900 hover:from-purple-900 hover:to-indigo-950 text-white font-black text-sm flex items-center justify-center gap-2 shadow-lg shadow-purple-900/25 transition-all cursor-pointer disabled:opacity-50 active:scale-[0.99]"
              >
                <span>{isSubmitting ? 'Requesting Callback...' : 'Get a Call Back'}</span>
                <ArrowRight className="w-4 h-4" />
              </button>

              {/* Trust Footer */}
              <div className="flex items-center justify-center gap-1.5 text-[11px] font-semibold text-slate-400 pt-1">
                <ShieldCheck className="w-4 h-4 text-emerald-600" />
                <span>Trusted by Thousands of Patients across Bengaluru</span>
              </div>
            </form>
          )}
        </div>

      </div>
    </div>
  );
}
