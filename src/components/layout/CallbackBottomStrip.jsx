import React, { useState } from 'react';
import { X, ArrowRight, Zap } from 'lucide-react';

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
      className="fixed bottom-0 left-1/2 -translate-x-1/2 z-30 w-[94%] sm:w-auto sm:min-w-[540px] md:min-w-[620px] max-w-xl bg-gradient-to-r from-purple-950 via-purple-900 to-indigo-950 text-white shadow-2xl rounded-t-2xl sm:rounded-t-3xl border-t-2 border-x border-purple-400/30 px-5 pt-3 pb-3 backdrop-blur-md animate-in slide-in-from-bottom-5 duration-300"
    >
      <div className="relative flex flex-col items-center justify-center gap-2 text-center">
        
        {/* Close / Dismiss Button */}
        <button
          onClick={() => setIsDismissed(true)}
          className="absolute -right-1 -top-1 p-1 text-purple-300 hover:text-white transition-colors cursor-pointer"
          title="Dismiss callback bar"
          aria-label="Dismiss callback bar"
        >
          <X className="w-4 h-4" />
        </button>

        {/* Center Title & 10-Min Badge */}
        <div className="flex items-center gap-2 text-xs sm:text-sm font-black tracking-tight text-white">
          <Zap className="w-3.5 h-3.5 fill-amber-400 text-amber-400 shrink-0" />
          <span>Get a Callback from our Health Advisor</span>
          <span className="text-[10px] bg-emerald-500/30 text-emerald-300 border border-emerald-400/30 px-2 py-0.5 rounded-full font-bold hidden sm:inline-block">
            10-Min Response
          </span>
        </div>

        {/* Form: Input + Button */}
        <form onSubmit={handleSubmit} className="w-full max-w-lg">
          <div className="flex items-stretch overflow-hidden rounded-xl bg-white shadow-lg border border-white/20">
            <input
              type="tel"
              maxLength={10}
              value={phoneNumber}
              onChange={(e) => setPhoneNumber(e.target.value.replace(/\D/g, ''))}
              placeholder="Enter your 10 digit mobile no."
              className="flex-1 min-w-0 px-3.5 py-2 sm:py-2.5 text-slate-900 text-xs sm:text-sm font-semibold placeholder:text-slate-400 placeholder:font-normal outline-none bg-white"
            />
            <button
              type="submit"
              className="px-4 sm:px-6 py-2 sm:py-2.5 bg-rose-600 hover:bg-rose-500 active:bg-rose-700 text-white font-black text-xs sm:text-sm shrink-0 flex items-center gap-1.5 transition-colors cursor-pointer whitespace-nowrap"
            >
              <span>Get a Call Back</span>
              <ArrowRight className="w-3.5 h-3.5 stroke-[2.5]" />
            </button>
          </div>
        </form>

      </div>
    </aside>
  );
}
