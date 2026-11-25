import React from 'react';
import { MessageSquare, Plus } from 'lucide-react';
import { openWhatsApp } from '../../utils/whatsapp';

export default function CareManagerBookingCard({ className = "" }) {
  return (
    <div className={`relative bg-gradient-to-br from-[#e8faf8] via-[#f0fdfa] to-[#dcf8f6] rounded-3xl p-6 sm:p-7 border border-teal-200/80 shadow-md text-left overflow-hidden ${className}`}>
      
      {/* Subtle Background Watermark Crosses */}
      <Plus className="absolute -top-3 -right-3 w-16 h-16 text-teal-300/30 stroke-[3] pointer-events-none" />
      <Plus className="absolute top-12 right-10 w-6 h-6 text-teal-300/25 stroke-[3] pointer-events-none" />
      <Plus className="absolute bottom-4 right-4 w-10 h-10 text-teal-300/25 stroke-[3] pointer-events-none" />

      <div className="relative z-10 space-y-4">
        
        {/* WhatsApp Icon Circle */}
        <div className="w-12 h-12 rounded-full bg-[#25D366] text-white flex items-center justify-center shadow-md shadow-emerald-600/20">
          <svg className="w-7 h-7 fill-current" viewBox="0 0 24 24">
            <path d="M12.031 6.172c-3.181 0-5.767 2.586-5.768 5.766-.001 1.298.38 2.27 1.019 3.287l-.582 2.128 2.182-.573c.978.58 1.911.928 3.145.929 3.178 0 5.767-2.587 5.768-5.766.001-3.187-2.575-5.77-5.764-5.771zm3.392 8.244c-.144.405-.837.774-1.17.824-.299.045-.677.063-1.092-.069-.252-.08-.575-.187-.988-.365-1.739-.751-2.874-2.502-2.961-2.617-.087-.116-.708-.94-.708-1.793s.448-1.273.607-1.446c.159-.173.346-.217.462-.217l.332.006c.106.005.249-.04.39.298.144.347.491 1.2.534 1.287.043.087.072.188.014.304-.058.116-.087.188-.173.289l-.26.304c-.087.086-.177.18-.076.354.101.174.449.741.964 1.201.662.591 1.221.774 1.394.86.173.086.275.072.376-.044.101-.116.433-.506.549-.68.116-.173.231-.145.39-.086s1.011.477 1.184.564.289.13.332.202c.045.072.045.419-.099.824zm-3.392-12.416c-5.518 0-10 4.482-10 10 0 1.761.458 3.418 1.26 4.869l-1.339 4.887 5.011-1.314c1.399.761 2.998 1.198 4.698 1.198 5.518 0 10-4.482 10-10s-4.482-10-10-10z"/>
          </svg>
        </div>

        {/* Title */}
        <h3 className="text-xl sm:text-2xl font-black text-slate-900 tracking-tight leading-tight">
          Hassle-Free Healthcare Booking
        </h3>

        {/* Pill Badge */}
        <div className="inline-block px-3 py-1 rounded-full bg-[#d7f5f0] text-teal-900 font-bold text-xs">
          Don't feel like booking it yourself?
        </div>

        {/* Description */}
        <p className="text-xs sm:text-sm text-slate-700 font-medium leading-relaxed">
          Just say "Hi" on WhatsApp. Your Personal Health Manager will take care of everything.
        </p>

        {/* Action Button */}
        <button
          onClick={() => openWhatsApp("Hello Health Express, please assist me with booking healthcare services.")}
          className="w-full py-3 px-5 rounded-xl bg-[#25D366] hover:bg-[#20ba59] text-white font-extrabold text-sm flex items-center justify-center gap-2 shadow-sm transition-all active:scale-95 cursor-pointer"
        >
          <span>WhatsApp Us</span>
        </button>

      </div>

    </div>
  );
}
