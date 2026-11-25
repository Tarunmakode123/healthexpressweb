import React from 'react';
import { Upload, MessageSquare, ClipboardCheck, Home, FileText, ArrowRight } from 'lucide-react';
import { openWhatsApp, DEFAULT_MESSAGES } from '../../utils/whatsapp';

const JOURNEY_STEPS = [
  {
    step: '01',
    title: 'Book Services',
    description: 'Upload your prescription file, doctor order, or select a diagnostic test or home care service from our catalog in seconds.',
    icon: ClipboardCheck
  },
  {
    step: '02',
    title: 'Home Collection & Testing',
    description: 'Doorstep pickup by trained phlebotomist with temperature-controlled sample logistics and verified NABL processing.',
    icon: Home
  },
  {
    step: '03',
    title: 'Express Digital Report',
    description: 'Get instant report generation and accurate diagnostics delivered faster than ever with a single click.',
    icon: FileText
  }
];

export default function HealthCheckupJourney({ onOpenUploadModal }) {
  return (
    <section className="bg-slate-50/60 border-b border-slate-200/70 py-8 sm:py-10 font-sans">
      <div className="max-w-7xl mx-auto px-4 sm:px-6 lg:px-8 space-y-6 text-center">
        
        {/* Concise Header */}
        <div className="max-w-3xl mx-auto space-y-2">
          <span className="text-[10px] font-bold uppercase tracking-widest px-2.5 py-0.5 rounded-full bg-purple-100 text-purple-900 border border-purple-200 inline-block">
            PATIENT HEALTH CHECKUP JOURNEY
          </span>
          <p className="text-xs sm:text-sm text-slate-600 font-medium leading-relaxed">
            Experience healthcare built around absolute speed and precision. Book your diagnostic tests instantly, enjoy seamless doorstep sample collection, and trust verified reports every single time.
          </p>
        </div>

        {/* Healthians-Style Connected 3-Step Journey Path */}
        <div className="relative pt-2">
          
          {/* Subtle connecting dotted line (Desktop only) */}
          <div className="hidden md:block absolute top-1/2 left-[15%] right-[15%] -translate-y-5 border-t-2 border-dashed border-purple-200 z-0" />

          <div className="grid grid-cols-1 md:grid-cols-3 gap-4 sm:gap-6 relative z-10">
            {JOURNEY_STEPS.map((step, idx) => {
              const StepIcon = step.icon;
              return (
                <div 
                  key={idx}
                  className="bg-white rounded-2xl p-5 border border-slate-200/80 hover:border-purple-300 shadow-2xs hover:shadow-sm transition-all text-left space-y-2.5 flex flex-col justify-between"
                >
                  <div className="flex items-center justify-between">
                    <div className="w-10 h-10 rounded-xl bg-purple-50 text-purple-700 border border-purple-100 flex items-center justify-center">
                      <StepIcon className="w-5 h-5 text-purple-700" />
                    </div>
                    <span className="text-xs font-black text-purple-800 bg-purple-50 px-2 py-0.5 rounded-md border border-purple-100">
                      Step {step.step}
                    </span>
                  </div>

                  <div className="space-y-1">
                    <h3 className="text-sm font-bold text-slate-900 leading-snug">
                      {step.title}
                    </h3>
                    <p className="text-xs text-slate-500 leading-relaxed font-medium">
                      {step.description}
                    </p>
                  </div>
                </div>
              );
            })}
          </div>

        </div>

        {/* Compact Action CTAs */}
        <div className="pt-2 flex flex-col sm:flex-row items-center justify-center gap-3">
          <button
            onClick={onOpenUploadModal}
            className="w-full sm:w-auto px-5 py-2.5 rounded-xl bg-purple-700 hover:bg-purple-800 text-white font-bold text-xs flex items-center justify-center gap-2 shadow-sm transition-all active:scale-95 cursor-pointer"
          >
            <Upload className="w-3.5 h-3.5 text-purple-200" />
            <span>Upload Doctor's Prescription</span>
          </button>

          <button
            onClick={() => openWhatsApp(DEFAULT_MESSAGES.general)}
            className="w-full sm:w-auto px-5 py-2.5 rounded-xl bg-emerald-600 hover:bg-emerald-700 text-white font-bold text-xs flex items-center justify-center gap-2 shadow-sm transition-all active:scale-95 cursor-pointer"
          >
            <MessageSquare className="w-3.5 h-3.5 fill-current text-emerald-200" />
            <span>Connect on WhatsApp</span>
          </button>
        </div>

      </div>
    </section>
  );
}
