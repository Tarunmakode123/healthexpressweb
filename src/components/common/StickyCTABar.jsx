import React from 'react';
import { Phone, MessageSquare, Upload } from 'lucide-react';
import { openWhatsApp, triggerPhoneCall, DEFAULT_MESSAGES, PHONE_NUMBER_DISPLAY } from '../../utils/whatsapp';

export default function StickyCTABar({ onOpenUploadModal }) {
  return (
    <>
      {/* Desktop Floating Assistance Bar (Bottom-Right, persistent & subtle) */}
      <div className="hidden md:flex fixed bottom-6 right-6 z-40 items-center gap-3 bg-slate-900/90 backdrop-blur-md text-white px-5 py-3 rounded-full shadow-2xl border border-purple-500/30 transition-all hover:scale-[1.02] animate-in fade-in slide-in-from-bottom-5">
        <div className="flex items-center gap-2 text-xs font-semibold text-purple-200 border-r border-slate-700 pr-3.5">
          <span className="w-2 h-2 rounded-full bg-emerald-400 animate-pulse"></span>
          <span>Need healthcare assistance?</span>
        </div>

        <button
          onClick={() => openWhatsApp(DEFAULT_MESSAGES.prescription)}
          className="flex items-center gap-2 px-3.5 py-1.5 rounded-full bg-emerald-600 hover:bg-emerald-500 text-white font-bold text-xs shadow-sm transition-colors"
          aria-label="WhatsApp Us"
        >
          <MessageSquare className="w-3.5 h-3.5 fill-current" />
          <span>WhatsApp Us</span>
        </button>

        <button
          onClick={triggerPhoneCall}
          className="flex items-center gap-2 px-3.5 py-1.5 rounded-full bg-purple-700 hover:bg-purple-600 text-white font-bold text-xs shadow-sm transition-colors"
          aria-label="Call Now"
        >
          <Phone className="w-3.5 h-3.5" />
          <span>Call Now ({PHONE_NUMBER_DISPLAY})</span>
        </button>
      </div>

      {/* Mobile Fixed Bottom Sticky Bar */}
      <div className="md:hidden fixed bottom-0 inset-x-0 z-40 bg-white/95 backdrop-blur-md border-t border-purple-100 shadow-[0_-4px_20px_rgba(0,0,0,0.08)] px-3 py-2.5 flex items-center justify-between gap-2">
        <button
          onClick={() => openWhatsApp(DEFAULT_MESSAGES.prescription)}
          className="flex-1 py-3 px-3 rounded-xl bg-emerald-600 active:bg-emerald-700 text-white font-bold text-xs flex items-center justify-center gap-2 shadow-xs transition-transform active:scale-95 touch-target"
        >
          <MessageSquare className="w-4 h-4 fill-current" />
          <span>WhatsApp Us</span>
        </button>

        <button
          onClick={triggerPhoneCall}
          className="flex-1 py-3 px-3 rounded-xl bg-slate-900 active:bg-slate-800 text-white font-bold text-xs flex items-center justify-center gap-2 shadow-xs transition-transform active:scale-95 touch-target"
        >
          <Phone className="w-4 h-4 text-purple-400" />
          <span>Call Now</span>
        </button>

        <button
          onClick={onOpenUploadModal}
          className="py-3 px-3.5 rounded-xl bg-purple-700 active:bg-purple-800 text-white font-bold text-xs flex items-center justify-center gap-1.5 shadow-xs transition-transform active:scale-95 touch-target shrink-0"
        >
          <Upload className="w-4 h-4" />
          <span className="hidden sm:inline">Upload</span>
        </button>
      </div>
    </>
  );
}
