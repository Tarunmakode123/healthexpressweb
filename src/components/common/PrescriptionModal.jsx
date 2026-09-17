import React, { useEffect } from 'react';
import { X, MessageSquare, FileText, CheckCircle2, ShieldCheck } from 'lucide-react';
import { openWhatsApp, DEFAULT_MESSAGES } from '../../utils/whatsapp';

export default function PrescriptionModal({ isOpen, onClose }) {
  // Lock body scroll when modal is active
  useEffect(() => {
    if (isOpen) {
      document.body.style.overflow = 'hidden';
    } else {
      document.body.style.overflow = '';
    }
    return () => {
      document.body.style.overflow = '';
    };
  }, [isOpen]);

  if (!isOpen) return null;

  const handleWhatsAppClick = () => {
    openWhatsApp(DEFAULT_MESSAGES.prescription);
    onClose();
  };

  return (
    <div 
      className="fixed inset-0 z-50 flex items-center justify-center p-3 sm:p-4 bg-slate-900/60 backdrop-blur-sm transition-opacity animate-in fade-in"
      onClick={onClose}
    >
      <div 
        className="relative w-full max-w-lg bg-white rounded-3xl shadow-2xl overflow-hidden border border-purple-100 p-5 sm:p-8 max-h-[92vh] overflow-y-auto"
        onClick={(e) => e.stopPropagation()}
      >
        {/* Close Button */}
        <button
          onClick={onClose}
          className="absolute top-4 right-4 p-3 text-slate-400 hover:text-slate-700 hover:bg-slate-100 rounded-full transition-colors touch-target"
          aria-label="Close modal"
        >
          <X className="w-5 h-5" />
        </button>

        {/* Modal Header */}
        <div className="flex items-center gap-3 mb-4 pr-8">
          <div className="w-11 h-11 sm:w-12 sm:h-12 rounded-2xl bg-purple-100 text-purple-700 flex items-center justify-center shrink-0 shadow-sm">
            <FileText className="w-5 h-5 sm:w-6 sm:h-6" />
          </div>
          <div>
            <h3 className="text-lg sm:text-xl font-bold text-slate-900 leading-snug">Upload Prescription</h3>
            <p className="text-xs text-purple-700 font-semibold">Fast & Confidential Coordination</p>
          </div>
        </div>

        <p className="text-slate-600 text-xs sm:text-sm mb-5 leading-relaxed">
          Health Express simplifies your healthcare. Share your prescription or test list on WhatsApp, and our medical staff will coordinate appointments, pricing, and fulfillment.
        </p>

        {/* Steps Checklist */}
        <div className="space-y-3 bg-purple-50/60 rounded-2xl p-4 border border-purple-100/80 mb-6">
          <div className="flex items-start gap-3">
            <CheckCircle2 className="w-5 h-5 text-purple-600 shrink-0 mt-0.5" />
            <div className="text-xs text-slate-700">
              <span className="font-semibold text-slate-900">Attach Document or Photo:</span> Send a photo of your prescription, doctor recommendation, or test list.
            </div>
          </div>
          <div className="flex items-start gap-3">
            <CheckCircle2 className="w-5 h-5 text-purple-600 shrink-0 mt-0.5" />
            <div className="text-xs text-slate-700">
              <span className="font-semibold text-slate-900">Dedicated Staff Assistant:</span> Our team will verify options, partner lab availability, and best prices.
            </div>
          </div>
          <div className="flex items-start gap-3">
            <CheckCircle2 className="w-5 h-5 text-purple-600 shrink-0 mt-0.5" />
            <div className="text-xs text-slate-700">
              <span className="font-semibold text-slate-900">Easy Booking:</span> Complete your booking & payment with guidance from our care team.
            </div>
          </div>
        </div>

        {/* Call to Action */}
        <div className="space-y-3">
          <button
            onClick={handleWhatsAppClick}
            className="w-full py-4 px-6 rounded-2xl bg-emerald-600 hover:bg-emerald-700 text-white font-bold text-sm flex items-center justify-center gap-3 shadow-lg shadow-emerald-600/20 active:scale-[0.98] transition-all touch-target"
          >
            <MessageSquare className="w-5 h-5 fill-current" />
            <span>Chat & Send Prescription on WhatsApp</span>
          </button>
          
          <div className="flex items-center justify-center gap-1.5 text-[11px] text-slate-500 pt-1">
            <ShieldCheck className="w-4 h-4 text-purple-600 shrink-0" />
            <span>100% Private, Safe & Verified Healthcare Network</span>
          </div>
        </div>
      </div>
    </div>
  );
}
