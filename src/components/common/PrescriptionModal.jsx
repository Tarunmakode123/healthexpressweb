import React from 'react';
import { X, MessageSquare, FileText, CheckCircle2, ShieldCheck } from 'lucide-react';
import { openWhatsApp, DEFAULT_MESSAGES } from '../../utils/whatsapp';

export default function PrescriptionModal({ isOpen, onClose }) {
  if (!isOpen) return null;

  const handleWhatsAppClick = () => {
    openWhatsApp(DEFAULT_MESSAGES.prescription);
    onClose();
  };

  return (
    <div className="fixed inset-0 z-50 flex items-center justify-center p-4 bg-slate-900/60 backdrop-blur-sm transition-opacity animate-in fade-in">
      <div 
        className="relative w-full max-w-lg bg-white rounded-3xl shadow-2xl overflow-hidden border border-purple-100 p-6 md:p-8"
        onClick={(e) => e.stopPropagation()}
      >
        {/* Close Button */}
        <button
          onClick={onClose}
          className="absolute top-5 right-5 p-2 text-slate-400 hover:text-slate-700 hover:bg-slate-100 rounded-full transition-colors"
          aria-label="Close modal"
        >
          <X className="w-5 h-5" />
        </button>

        {/* Modal Header */}
        <div className="flex items-center gap-3 mb-4">
          <div className="w-12 h-12 rounded-2xl bg-purple-100 text-purple-700 flex items-center justify-center shadow-sm">
            <FileText className="w-6 h-6" />
          </div>
          <div>
            <h3 className="text-xl font-bold text-slate-900">Upload Prescription</h3>
            <p className="text-xs text-purple-700 font-medium">Fast & Confidential Coordination</p>
          </div>
        </div>

        <p className="text-slate-600 text-sm mb-6 leading-relaxed">
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

        {/* Call to action */}
        <div className="space-y-3">
          <button
            onClick={handleWhatsAppClick}
            className="w-full py-3.5 px-6 rounded-2xl bg-emerald-600 hover:bg-emerald-700 text-white font-semibold flex items-center justify-center gap-3 shadow-lg shadow-emerald-600/20 transition-all hover:scale-[1.01] active:scale-[0.99]"
          >
            <MessageSquare className="w-5 h-5 fill-current" />
            <span>Chat & Send Prescription on WhatsApp</span>
          </button>
          
          <div className="flex items-center justify-center gap-2 text-[11px] text-slate-500">
            <ShieldCheck className="w-4 h-4 text-purple-600" />
            <span>100% Private, Safe & Verified Healthcare Network</span>
          </div>
        </div>
      </div>
    </div>
  );
}
