import React from 'react';
import { Upload, Search, CalendarCheck, Activity, CheckCircle2, ArrowRight } from 'lucide-react';
import { openWhatsApp, DEFAULT_MESSAGES } from '../../utils/whatsapp';

export default function HowItWorksSection({ onOpenUploadModal }) {
  const steps = [
    {
      num: '01',
      title: 'Upload',
      desc: 'Upload your prescription, medical order or tell us what you need.',
      icon: Upload
    },
    {
      num: '02',
      title: 'Compare',
      desc: 'We help you identify relevant services and available options.',
      icon: Search
    },
    {
      num: '03',
      title: 'Book',
      desc: 'Choose the option that works for you and confirm your booking.',
      icon: CalendarCheck
    },
    {
      num: '04',
      title: 'Track',
      desc: 'Stay informed as your service is arranged and delivered.',
      icon: Activity
    },
    {
      num: '05',
      title: 'Receive',
      desc: 'Get your reports, consultation or healthcare service with less coordination on your end.',
      icon: CheckCircle2
    }
  ];

  return (
    <section className="py-16 md:py-24 bg-gradient-to-b from-purple-50/50 via-white to-purple-50/30 border-y border-purple-100/50 relative overflow-hidden">
      {/* Glow Orbs */}
      <div className="absolute top-0 right-0 w-96 h-96 bg-purple-200/40 rounded-full blur-3xl pointer-events-none" />
      <div className="absolute bottom-0 left-0 w-96 h-96 bg-indigo-200/30 rounded-full blur-3xl pointer-events-none" />

      <div className="max-w-7xl mx-auto px-4 sm:px-6 lg:px-8 space-y-12 relative z-10">
        
        {/* Section Header */}
        <div className="text-center max-w-2xl mx-auto space-y-3">
          <div className="inline-flex items-center gap-2 px-3.5 py-1.5 rounded-full bg-purple-100 border border-purple-200 text-xs font-extrabold uppercase tracking-wider text-purple-700 shadow-2xs">
            HOW IT WORKS
          </div>
          <h2 className="text-3xl sm:text-4xl font-extrabold text-slate-900 tracking-tight">
            From request to care, <span className="gradient-text-purple">made simple.</span>
          </h2>
        </div>

        {/* 5 Step Timeline Grid */}
        <div className="grid grid-cols-1 sm:grid-cols-2 lg:grid-cols-5 gap-6">
          {steps.map((step, idx) => {
            const IconComp = step.icon;
            return (
              <div 
                key={idx}
                className="bg-white/90 backdrop-blur-md rounded-3xl p-6 border border-purple-100/80 shadow-xs hover:shadow-xl hover:border-purple-300 card-interactive flex flex-col justify-between text-left group relative overflow-hidden"
              >
                <div className="absolute top-0 right-0 w-16 h-16 bg-purple-500/5 rounded-bl-full pointer-events-none group-hover:bg-purple-500/10 transition-colors" />

                <div className="space-y-4">
                  <div className="flex items-center justify-between">
                    <div className="w-10 h-10 rounded-xl bg-purple-700 text-white font-extrabold text-xs flex items-center justify-center shadow-xs group-hover:scale-105 transition-transform">
                      {step.num}
                    </div>
                    <div className="w-9 h-9 rounded-xl bg-purple-50 text-purple-700 flex items-center justify-center group-hover:bg-purple-700 group-hover:text-white transition-colors">
                      <IconComp className="w-5 h-5 transition-transform group-hover:scale-110" />
                    </div>
                  </div>

                  <div>
                    <h3 className="text-lg font-bold text-slate-900 group-hover:text-purple-900 transition-colors">{step.title}</h3>
                    <p className="text-xs text-slate-600 mt-1.5 leading-relaxed">{step.desc}</p>
                  </div>
                </div>
              </div>
            );
          })}
        </div>

        {/* Small CTA */}
        <div className="text-center pt-2">
          <button
            onClick={() => openWhatsApp(DEFAULT_MESSAGES.prescription)}
            className="inline-flex items-center gap-2.5 px-8 py-4 rounded-2xl bg-purple-700 hover:bg-purple-800 text-white font-bold text-sm shadow-lg shadow-purple-700/25 transition-all hover:scale-[1.03] active:scale-[0.98]"
          >
            <span>Start with your prescription</span>
            <ArrowRight className="w-4 h-4" />
          </button>
        </div>

      </div>
    </section>
  );
}
