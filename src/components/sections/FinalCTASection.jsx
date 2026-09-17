import React from 'react';
import { Upload, MessageSquare, CheckCircle } from 'lucide-react';
import { openWhatsApp, DEFAULT_MESSAGES } from '../../utils/whatsapp';

export default function FinalCTASection({ onOpenUploadModal }) {
  return (
    <section className="py-16 md:py-24 bg-white">
      <div className="max-w-7xl mx-auto px-4 sm:px-6 lg:px-8">
        
        {/* Large Rounded Purple CTA Card */}
        <div className="relative overflow-hidden bg-gradient-to-br from-purple-900 via-purple-800 to-indigo-950 rounded-3xl md:rounded-[2.5rem] p-8 md:p-16 text-center text-white shadow-2xl border border-purple-700/50">
          
          {/* Background Decorative Rings */}
          <div className="absolute top-0 left-1/2 -translate-x-1/2 w-[600px] h-[600px] bg-purple-500/10 rounded-full blur-3xl pointer-events-none" />
          
          <div className="relative z-10 max-w-3xl mx-auto space-y-6">
            
            <div className="inline-block px-3.5 py-1 rounded-full bg-purple-700/60 border border-purple-500/40 text-[11px] font-extrabold uppercase tracking-widest text-purple-200">
              READY WHEN YOU ARE
            </div>

            <h2 className="text-3xl sm:text-4xl lg:text-5xl font-extrabold tracking-tight leading-tight">
              Tell us what you need.<br />
              <span className="text-purple-300">We'll take it from there.</span>
            </h2>

            <p className="text-sm sm:text-base text-purple-100 max-w-xl mx-auto font-normal leading-relaxed">
              Upload your prescription, share your medical requirement or simply start a conversation. Health Express will help you navigate the next step.
            </p>

            {/* CTA Dual Buttons */}
            <div className="flex flex-col sm:flex-row items-center justify-center gap-4 pt-4">
              
              <button
                onClick={onOpenUploadModal}
                className="w-full sm:w-auto px-8 py-4 rounded-2xl bg-white hover:bg-purple-50 text-purple-900 font-bold text-base shadow-lg transition-all hover:scale-[1.02] active:scale-[0.98] flex items-center justify-center gap-3"
              >
                <Upload className="w-5 h-5 text-purple-700" />
                <span>Upload Prescription / Medical Order</span>
              </button>

              <button
                onClick={() => openWhatsApp(DEFAULT_MESSAGES.prescription)}
                className="w-full sm:w-auto px-8 py-4 rounded-2xl bg-emerald-600 hover:bg-emerald-700 text-white font-bold text-base shadow-lg transition-all hover:scale-[1.02] active:scale-[0.98] flex items-center justify-center gap-3"
              >
                <MessageSquare className="w-5 h-5 fill-current" />
                <span>Chat on WhatsApp</span>
              </button>

            </div>

            {/* Supporting line */}
            <div className="flex items-center justify-center gap-2 text-xs text-purple-200 pt-2 font-medium">
              <CheckCircle className="w-4 h-4 text-emerald-400" />
              <span>One simple step. Healthcare, simplified.</span>
            </div>

          </div>

        </div>

      </div>
    </section>
  );
}
