import React from 'react';
import { Upload, FileText, UserCheck, HeartHandshake, ArrowRight } from 'lucide-react';
import { openWhatsApp, DEFAULT_MESSAGES } from '../../utils/whatsapp';

export default function HowItWorksSection({ onOpenUploadModal }) {
  const steps = [
    {
      num: '01',
      title: 'Upload',
      desc: 'Share your prescription, medical order, or tell us what health service you need (no account required).',
      icon: Upload
    },
    {
      num: '02',
      title: 'Tell us what you need',
      desc: 'Confirm patient details and preferred location or timing for home sample collection or care.',
      icon: FileText
    },
    {
      num: '03',
      title: 'We coordinate',
      desc: 'Our care team verifies requirements and coordinates with trusted diagnostic or nursing partners.',
      icon: UserCheck
    },
    {
      num: '04',
      title: 'Continue with care',
      desc: 'Receive your sample collection, digital reports, or home nursing service with zero friction.',
      icon: HeartHandshake
    }
  ];

  return (
    <section className="py-16 md:py-24 bg-mesh-purple border-y border-purple-100/60 relative overflow-hidden" id="how-it-works">
      <div className="max-w-7xl mx-auto px-4 sm:px-6 lg:px-8 space-y-12 relative z-10">
        
        {/* Section Header */}
        <div className="text-center max-w-2xl mx-auto space-y-3">
          <div className="inline-flex items-center gap-2 px-3.5 py-1.5 rounded-full bg-purple-100 border border-purple-200 text-xs font-extrabold uppercase tracking-wider text-purple-800 shadow-2xs">
            SIMPLE WORKFLOW
          </div>
          <h2 className="text-3xl sm:text-4xl font-extrabold text-slate-900 tracking-tight">
            From request to care, <span className="gradient-text-purple">made simple.</span>
          </h2>
          <p className="text-sm sm:text-base text-slate-600">
            Healthcare coordination designed to save you time and confusion.
          </p>
        </div>

        {/* 4 Step Grid */}
        <div className="grid grid-cols-1 sm:grid-cols-2 lg:grid-cols-4 gap-6">
          {steps.map((step, idx) => {
            const IconComp = step.icon;
            return (
              <div 
                key={idx}
                className="bento-card rounded-3xl p-6 flex flex-col justify-between text-left group relative space-y-4"
              >
                <div className="space-y-4">
                  <div className="flex items-center justify-between">
                    <span className="w-10 h-10 rounded-2xl bg-purple-700 text-white font-extrabold text-xs flex items-center justify-center shadow-xs">
                      {step.num}
                    </span>
                    <div className="w-10 h-10 rounded-2xl bg-purple-50 text-purple-700 flex items-center justify-center group-hover:bg-purple-700 group-hover:text-white transition-colors">
                      <IconComp className="w-5 h-5 transition-transform group-hover:scale-110" />
                    </div>
                  </div>

                  <div>
                    <h3 className="text-lg font-extrabold text-slate-900 group-hover:text-purple-950 transition-colors">
                      {step.title}
                    </h3>
                    <p className="text-xs text-slate-600 mt-2 leading-relaxed">
                      {step.desc}
                    </p>
                  </div>
                </div>

                {idx < steps.length - 1 && (
                  <div className="hidden lg:block absolute -right-3 top-1/2 -translate-y-1/2 z-20 text-purple-300">
                    →
                  </div>
                )}
              </div>
            );
          })}
        </div>

        {/* CTA Banner */}
        <div className="text-center pt-4">
          <button
            onClick={onOpenUploadModal}
            className="inline-flex items-center gap-2.5 px-8 py-4 rounded-2xl bg-purple-700 hover:bg-purple-800 text-white font-extrabold text-sm shadow-md shadow-purple-700/20 transition-all hover:scale-[1.02] active:scale-[0.98] cursor-pointer"
          >
            <Upload className="w-4 h-4 text-purple-200" />
            <span>Upload Prescription to Start</span>
            <ArrowRight className="w-4 h-4" />
          </button>
        </div>

      </div>
    </section>
  );
}
