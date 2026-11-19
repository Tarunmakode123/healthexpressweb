import React, { useState, useEffect } from 'react';
import { PhoneCall, MessageSquare } from 'lucide-react';
import { openWhatsApp, DEFAULT_MESSAGES } from '../../utils/whatsapp';
import { HEALTH_MANAGER_PHONE, HEALTH_MANAGER_DISPLAY_PHONE } from '../../config/constants';

export default function CareManagerCTA() {
  const [isVisible, setIsVisible] = useState(false);

  useEffect(() => {
    const handleScroll = () => {
      // Show floating Care Manager CTA after initial scroll
      setIsVisible(window.scrollY > 150);
    };

    handleScroll();
    window.addEventListener('scroll', handleScroll, { passive: true });
    return () => window.removeEventListener('scroll', handleScroll);
  }, []);

  if (!isVisible) return null;

  const handleWhatsAppClick = () => {
    openWhatsApp('Hello Health Express, I would like to speak with a Health Advisor regarding tests, scans, or doctor consultation.');
  };

  return (
    <aside 
      aria-label="Talk to our Health Advisor" 
      className="fixed bottom-16 sm:bottom-16 left-3 sm:left-6 z-40 animate-in slide-in-from-bottom-3 duration-300"
    >
      <div className="flex items-center gap-1.5">
        
        {/* Primary WhatsApp Health Advisor Widget (Healthians style) */}
        <button
          onClick={handleWhatsAppClick}
          title="Chat with our Health Advisor on WhatsApp"
          className="group relative flex items-center gap-2.5 px-3.5 py-2.5 sm:px-4 sm:py-3 rounded-full bg-emerald-600 hover:bg-emerald-700 text-white shadow-xl shadow-emerald-900/30 border-2 border-white/80 transition-all duration-300 hover:scale-105 active:scale-95 text-xs font-extrabold cursor-pointer"
        >
          {/* Animated Online Pulse Indicator */}
          <span className="relative flex h-3 w-3 shrink-0">
            <span className="animate-ping absolute inline-flex h-full w-full rounded-full bg-emerald-300 opacity-75"></span>
            <span className="relative inline-flex rounded-full h-3 w-3 bg-white"></span>
          </span>

          {/* WhatsApp Icon */}
          <div className="w-5 h-5 flex items-center justify-center shrink-0">
            <svg viewBox="0 0 24 24" className="w-5 h-5 fill-current" aria-hidden="true">
              <path d="M17.472 14.382c-.297-.149-1.758-.867-2.03-.967-.273-.099-.471-.148-.67.15-.197.297-.767.966-.94 1.164-.173.199-.347.223-.644.075-.297-.15-1.255-.463-2.39-1.475-.883-.788-1.48-1.761-1.653-2.059-.173-.297-.018-.458.13-.606.134-.133.298-.347.446-.52.149-.174.198-.298.298-.497.099-.198.05-.371-.025-.52-.075-.149-.669-1.612-.916-2.207-.242-.579-.487-.5-.669-.51-.173-.008-.371-.01-.57-.01-.198 0-.52.074-.792.372-.272.297-1.04 1.016-1.04 2.479 0 1.462 1.065 2.875 1.213 3.074.149.198 2.096 3.2 5.077 4.487.709.306 1.262.489 1.694.625.712.227 1.36.195 1.871.118.571-.085 1.758-.719 2.006-1.413.248-.694.248-1.289.173-1.413-.074-.124-.272-.198-.57-.347m-5.421 7.403h-.004a9.87 9.87 0 01-5.031-1.378l-.361-.214-3.741.982.998-3.648-.235-.374a9.86 9.86 0 01-1.51-5.26c.001-5.45 4.436-9.884 9.888-9.884 2.64 0 5.122 1.03 6.988 2.898a9.825 9.825 0 012.893 6.994c-.003 5.45-4.437 9.885-9.888 9.885m8.413-18.297A11.815 11.815 0 0012.05 0C5.495 0 .16 5.335.157 11.892c0 2.096.547 4.142 1.588 5.945L.057 24l6.305-1.654a11.882 11.882 0 005.683 1.448h.005c6.554 0 11.89-5.335 11.893-11.893a11.82 11.82 0 00-3.48-8.413z" />
            </svg>
          </div>

          <div className="text-left leading-tight">
            <span className="text-[10px] text-emerald-100 font-extrabold uppercase tracking-wider block">Online Now</span>
            <span className="text-xs font-black tracking-tight block">Talk to our Health Advisor</span>
          </div>
        </button>

        {/* Quick Phone Call Pill alongside */}
        <a
          href={`tel:${HEALTH_MANAGER_PHONE}`}
          title={`Direct Call: ${HEALTH_MANAGER_DISPLAY_PHONE}`}
          className="p-3 rounded-full bg-slate-900/90 hover:bg-slate-950 text-white shadow-xl shadow-slate-900/25 border-2 border-white/80 transition-all duration-300 hover:scale-110 active:scale-95 flex items-center justify-center shrink-0"
        >
          <PhoneCall className="w-4 h-4 text-purple-300" />
        </a>

      </div>
    </aside>
  );
}
