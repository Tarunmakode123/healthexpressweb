import React, { useState, useEffect } from 'react';
import { MessageSquare, Upload, ArrowRight } from 'lucide-react';
import { openWhatsApp, DEFAULT_MESSAGES } from '../../utils/whatsapp';

export default function StickyMobileCTA({ onOpenUploadModal }) {
  const [isVisible, setIsVisible] = useState(false);

  useEffect(() => {
    const handleScroll = () => {
      // Show sticky CTA after scrolling past hero section (approx 300px)
      setIsVisible(window.scrollY > 300);
    };

    window.addEventListener('scroll', handleScroll, { passive: true });
    return () => window.removeEventListener('scroll', handleScroll);
  }, []);

  if (!isVisible) return null;

  return (
    <div className="md:hidden fixed bottom-4 inset-x-4 z-40 animate-in slide-in-from-bottom-5 duration-300">
      <div className="bg-slate-900/95 backdrop-blur-md text-white p-3 rounded-2xl shadow-2xl border border-purple-500/30 flex items-center justify-between gap-3">
        <div className="flex items-center gap-2.5 min-w-0 pl-1">
          <div className="w-8 h-8 rounded-full bg-emerald-500/20 text-emerald-400 flex items-center justify-center shrink-0 border border-emerald-500/40">
            <MessageSquare className="w-4 h-4 fill-emerald-400/20" />
          </div>
          <div className="min-w-0">
            <div className="text-[11px] font-bold text-white truncate">Send Prescription on WhatsApp</div>
            <div className="text-[10px] text-purple-200 truncate">Instant Care Coordinator Response</div>
          </div>
        </div>

        <button
          onClick={() => openWhatsApp(DEFAULT_MESSAGES.prescription)}
          className="px-4 py-2.5 rounded-xl bg-emerald-500 hover:bg-emerald-600 text-slate-950 font-extrabold text-xs shrink-0 flex items-center gap-1.5 shadow-md active:scale-95 transition-transform"
        >
          <span>Chat Now</span>
          <ArrowRight className="w-3.5 h-3.5 stroke-[2.5]" />
        </button>
      </div>
    </div>
  );
}
