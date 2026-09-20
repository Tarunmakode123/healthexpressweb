import React from 'react';
import { Link } from 'react-router-dom';
import { Upload, MessageSquare, CheckCircle } from 'lucide-react';
import { openWhatsApp, DEFAULT_MESSAGES } from '../../utils/whatsapp';

export default function FinalCTASection({ onOpenUploadModal }) {
  return (
    <section className="py-16 md:py-24 bg-white relative overflow-hidden">
      <div className="max-w-7xl mx-auto px-4 sm:px-6 lg:px-8">
        
        {/* Large Rounded Purple CTA Card */}
        <div className="relative overflow-hidden animated-gradient-bg rounded-3xl md:rounded-[2.5rem] p-8 md:p-16 text-center text-white shadow-2xl border border-purple-500/40">
          
          {/* Background Decorative Rings */}
          <div className="absolute top-1/2 left-1/2 -translate-x-1/2 -translate-y-1/2 w-[700px] h-[700px] bg-purple-500/20 rounded-full blur-3xl pointer-events-none animate-pulse-glow" />
          
          <div className="relative z-10 max-w-3xl mx-auto space-y-7">
            
            <div className="inline-block px-4 py-1.5 rounded-full bg-white/10 backdrop-blur-md border border-white/20 text-xs font-extrabold uppercase tracking-widest text-purple-200 shadow-inner">
              READY WHEN YOU ARE
            </div>

            <h2 className="text-3xl sm:text-4xl lg:text-5xl font-extrabold tracking-tight leading-tight">
              Healthcare for your family,<br />
              <span className="gradient-text-light">without the hassle.</span>
            </h2>

            <p className="text-sm sm:text-base text-purple-100 max-w-xl mx-auto font-normal leading-relaxed">
              Whether you need a diagnostic test or care at home, Health Express helps you coordinate the next step.
            </p>

            {/* CTA Dual Buttons */}
            <div className="flex flex-col sm:flex-row items-center justify-center gap-4 pt-4">
              
              <button
                onClick={onOpenUploadModal}
                className="w-full sm:w-auto px-8 py-4 rounded-2xl bg-white hover:bg-purple-50 text-purple-950 font-extrabold text-sm sm:text-base shadow-xl transition-all hover:scale-[1.03] active:scale-[0.98] flex items-center justify-center gap-3"
              >
                <Upload className="w-5 h-5 text-purple-700" />
                <span>Upload Prescription / Medical Order</span>
              </button>

              <Link
                to="/services"
                className="w-full sm:w-auto px-8 py-4 rounded-2xl bg-purple-950/60 hover:bg-purple-900/80 border border-purple-400/40 text-white font-extrabold text-sm sm:text-base shadow-xl backdrop-blur-md transition-all hover:scale-[1.03] active:scale-[0.98] flex items-center justify-center gap-2"
              >
                <span>Explore Services</span>
              </Link>

            </div>

            {/* WhatsApp direct text */}
            <div className="pt-2">
              <button
                onClick={() => openWhatsApp(DEFAULT_MESSAGES.general)}
                className="inline-flex items-center gap-2 text-xs sm:text-sm font-bold text-emerald-300 hover:text-emerald-200 transition-colors bg-black/20 hover:bg-black/30 px-4 py-2 rounded-full border border-emerald-400/30 backdrop-blur-xs"
              >
                <MessageSquare className="w-4 h-4 fill-current text-emerald-400" />
                <span>Or chat directly on WhatsApp (+91 81234 14120)</span>
              </button>
            </div>

          </div>

        </div>

      </div>
    </section>
  );
}
