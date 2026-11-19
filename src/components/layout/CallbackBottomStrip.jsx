import React, { useState } from 'react';
import { PhoneCall, X, ArrowRight, Zap, ShieldCheck } from 'lucide-react';

export default function CallbackBottomStrip({ onOpenCallbackModal }) {
  const [phoneNumber, setPhoneNumber] = useState('');
  const [isDismissed, setIsDismissed] = useState(false);

  if (isDismissed) return null;

  const handleSubmit = (e) => {
    e.preventDefault();
    if (onOpenCallbackModal) {
      onOpenCallbackModal(phoneNumber);
    }
  };

  return (
    <aside 
      aria-label="Request Callback from Health Advisor"
      className="fixed bottom-0 inset-x-0 z-30 bg-gradient-to-r from-purple-950 via-purple-900 to-indigo-950 text-white shadow-2xl border-t border-purple-700/40 py-2.5 px-4 backdrop-blur-md animate-in slide-in-from-bottom-5 duration-300"
    >
      <div className="max-w-7xl mx-auto flex flex-col sm:flex-row items-center justify-between gap-3 text-center sm:text-left relative">
        
        {/* Left Side: Headline & Badge */}
        <div className="flex items-center gap-2.5 shrink-0">
          <div className="w-8 h-8 rounded-full bg-amber-400 text-purple-950 flex items-center justify-center shrink-0 shadow-sm font-bold">
            <Zap className="w-4 h-4 fill-purple-950" />
          </div>
          <div>
            <div className="text-xs sm:text-sm font-black tracking-tight text-white flex items-center gap-2 justify-center sm:justify-start">
              <span>Get a Callback from our Health Advisor</span>
              <span className="hidden md:inline-block text-[10px] bg-emerald-500/30 text-emerald-300 border border-emerald-400/30 px-2 py-0.5 rounded-full font-bold">
                10-Min Response
              </span>
            </div>
            <p className="text-[11px] text-purple-200/90 font-medium hidden lg:block">
              Free expert guidance on blood tests, scans, doctor consults & home nursing in Bengaluru.
            </p>
          </div>
        </div>

        {/* Center / Right: Quick 10-Digit Mobile Input & Action Button */}
        <form onSubmit={handleSubmit} className="flex items-center gap-2 w-full sm:w-auto justify-center">
          <div className="relative w-full sm:w-64 max-w-xs">
            <input
              type="tel"
              maxLength={10}
              value={phoneNumber}
              onChange={(e) => setPhoneNumber(e.target.value.replace(/\D/g, ''))}
              placeholder="Enter your 10 digit mobile no."
              className="w-full px-3.5 py-2 rounded-xl bg-white text-slate-900 text-xs font-bold placeholder:text-slate-400 placeholder:font-medium outline-none focus:ring-2 focus:ring-amber-400 shadow-inner"
            />
          </div>

          <button
            type="submit"
            className="px-4 sm:px-6 py-2 rounded-xl bg-rose-600 hover:bg-rose-500 text-white font-black text-xs shrink-0 flex items-center gap-1.5 shadow-md shadow-rose-600/30 transition-all cursor-pointer active:scale-95 whitespace-nowrap"
          >
            <span>Get a Call Back</span>
            <ArrowRight className="w-3.5 h-3.5 stroke-[2.5]" />
          </button>
        </form>

        {/* Dismiss Button */}
        <button
          onClick={() => setIsDismissed(true)}
          className="absolute right-0 sm:right-2 top-0 sm:top-1/2 sm:-translate-y-1/2 p-1 text-purple-300 hover:text-white transition-colors cursor-pointer"
          title="Dismiss banner"
          aria-label="Dismiss banner"
        >
          <X className="w-4 h-4" />
        </button>

      </div>
    </aside>
  );
}
