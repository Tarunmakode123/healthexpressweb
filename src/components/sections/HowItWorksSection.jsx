import React from 'react';
import { Upload, Search, CalendarCheck, Activity, CheckCircle2, ArrowRight } from 'lucide-react';
import { openWhatsApp, DEFAULT_MESSAGES } from '../../utils/whatsapp';

export default function HowItWorksSection({ onOpenUploadModal }) {
  const steps = [
    {
      num: '1',
      title: 'Upload',
      desc: 'Your prescription or tell us what you need.',
      icon: Upload
    },
    {
      num: '2',
      title: 'Compare',
      desc: 'We identify relevant services and options.',
      icon: Search
    },
    {
      num: '3',
      title: 'Book',
      desc: 'Choose and confirm your booking.',
      icon: CalendarCheck
    },
    {
      num: '4',
      title: 'Track',
      desc: 'Stay informed as your service is arranged.',
      icon: Activity
    },
    {
      num: '5',
      title: 'Receive',
      desc: 'Get your reports, consultation or service.',
      icon: CheckCircle2
    }
  ];

  return (
    <section className="py-16 md:py-24 bg-purple-50/30 border-y border-purple-100/50">
      <div className="max-w-7xl mx-auto px-4 sm:px-6 lg:px-8 space-y-12">
        
        {/* Section Header */}
        <div className="text-center max-w-2xl mx-auto space-y-3">
          <div className="text-xs font-extrabold uppercase tracking-wider text-purple-700">
            HOW IT WORKS
          </div>
          <h2 className="text-3xl sm:text-4xl font-extrabold text-slate-900 tracking-tight">
            From request to care, made simple.
          </h2>
        </div>

        {/* 5 Step Timeline Grid */}
        <div className="grid grid-cols-1 sm:grid-cols-2 lg:grid-cols-5 gap-6 relative">
          {steps.map((step, idx) => {
            const IconComp = step.icon;
            return (
              <div 
                key={idx}
                className="bg-white rounded-3xl p-6 border border-purple-100 shadow-xs hover:shadow-md hover:border-purple-300 transition-all flex flex-col justify-between text-left relative group"
              >
                <div className="space-y-4">
                  <div className="flex items-center justify-between">
                    <div className="w-9 h-9 rounded-xl bg-purple-700 text-white font-extrabold text-sm flex items-center justify-center">
                      {step.num}
                    </div>
                    <IconComp className="w-5 h-5 text-purple-600 group-hover:scale-110 transition-transform" />
                  </div>

                  <div>
                    <h3 className="text-lg font-bold text-slate-900">{step.title}</h3>
                    <p className="text-xs text-slate-600 mt-1.5 leading-relaxed">{step.desc}</p>
                  </div>
                </div>
              </div>
            );
          })}
        </div>

        {/* Action Callout */}
        <div className="text-center pt-4">
          <button
            onClick={() => openWhatsApp(DEFAULT_MESSAGES.prescription)}
            className="inline-flex items-center gap-3 px-8 py-4 rounded-2xl bg-purple-700 hover:bg-purple-800 text-white font-bold text-base shadow-lg shadow-purple-700/25 transition-all hover:scale-[1.02] active:scale-[0.98]"
          >
            <span>Start with your prescription</span>
            <ArrowRight className="w-5 h-5" />
          </button>
        </div>

      </div>
    </section>
  );
}
