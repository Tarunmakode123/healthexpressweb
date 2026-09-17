import React from 'react';
import { Lightbulb, ShieldCheck, ArrowRight, Activity } from 'lucide-react';
import { openWhatsApp, DEFAULT_MESSAGES } from '../../utils/whatsapp';

export default function PreventiveHealthSection() {
  return (
    <section className="py-16 md:py-24 bg-purple-50/40 border-y border-purple-100/60">
      <div className="max-w-7xl mx-auto px-4 sm:px-6 lg:px-8">
        
        <div className="grid grid-cols-1 lg:grid-cols-12 gap-12 items-center">
          
          {/* Left Column Content */}
          <div className="lg:col-span-7 space-y-6">
            
            <div className="text-xs font-extrabold uppercase tracking-wider text-purple-800">
              MOVE FROM REACTIVE TO PROACTIVE
            </div>

            <h2 className="text-3xl sm:text-4xl font-extrabold text-slate-900 tracking-tight leading-tight">
              Don't wait for a health problem<br className="hidden sm:inline" />
              <span className="text-purple-700"> to tell you to pay attention.</span>
            </h2>

            <div className="text-base sm:text-lg text-slate-600 leading-relaxed space-y-3">
              <p>
                Healthcare is not only about treating illness. It is also about understanding your health, identifying potential risks early and making informed decisions before a problem becomes harder to manage.
              </p>
              <p className="text-sm sm:text-base text-slate-600">
                Health Express is building a healthcare experience that makes preventive health more accessible, convenient and actionable — bringing diagnostics, health screening, healthcare services and health information together in one connected experience.
              </p>
            </div>

            {/* CTA Button */}
            <div className="pt-2">
              <button
                onClick={() => openWhatsApp(DEFAULT_MESSAGES.preventive)}
                className="inline-flex items-center gap-2.5 px-6 py-3.5 rounded-2xl bg-purple-700 hover:bg-purple-800 text-white font-bold text-sm shadow-md shadow-purple-700/20 transition-all hover:scale-[1.02]"
              >
                <span>Explore Preventive Health</span>
                <ArrowRight className="w-4 h-4" />
              </button>
            </div>

            {/* 3 Pillars Grid */}
            <div className="grid grid-cols-1 sm:grid-cols-3 gap-6 pt-6">
              
              {/* Pillar 1: Understand */}
              <div className="bg-white p-5 rounded-2xl border border-purple-100/80 shadow-xs space-y-2">
                <div className="w-10 h-10 rounded-xl bg-purple-100 text-purple-700 flex items-center justify-center">
                  <Lightbulb className="w-5 h-5" />
                </div>
                <h4 className="text-base font-bold text-slate-900">Understand</h4>
                <p className="text-xs text-slate-600 leading-normal">
                  Get access to the information and services you need to better understand your health.
                </p>
              </div>

              {/* Pillar 2: Prevent */}
              <div className="bg-white p-5 rounded-2xl border border-purple-100/80 shadow-xs space-y-2">
                <div className="w-10 h-10 rounded-xl bg-purple-100 text-purple-700 flex items-center justify-center">
                  <ShieldCheck className="w-5 h-5" />
                </div>
                <h4 className="text-base font-bold text-slate-900">Prevent</h4>
                <p className="text-xs text-slate-600 leading-normal">
                  Use appropriate screening and preventive health services to stay ahead of potential risks.
                </p>
              </div>

              {/* Pillar 3: Act */}
              <div className="bg-white p-5 rounded-2xl border border-purple-100/80 shadow-xs space-y-2">
                <div className="w-10 h-10 rounded-xl bg-purple-100 text-purple-700 flex items-center justify-center">
                  <Activity className="w-5 h-5" />
                </div>
                <h4 className="text-base font-bold text-slate-900">Act</h4>
                <p className="text-xs text-slate-600 leading-normal">
                  Turn health information into the next appropriate step — test, consultation, or monitoring.
                </p>
              </div>

            </div>

          </div>

          {/* Right Column Visual Image */}
          <div className="lg:col-span-5 flex justify-center">
            <div className="relative max-w-md w-full">
              <div className="relative rounded-3xl overflow-hidden shadow-2xl border-4 border-white aspect-[4/3] sm:aspect-square">
                <img
                  src="https://images.unsplash.com/photo-1544367567-0f2fcb009e0b?auto=format&fit=crop&w=800&q=80"
                  alt="Preventive Healthcare and Wellness"
                  className="w-full h-full object-cover"
                  loading="lazy"
                />
                
                <div className="absolute bottom-5 right-5 left-5 bg-white/95 backdrop-blur-md p-4 rounded-2xl shadow-lg border border-purple-100 flex items-center gap-3">
                  <div className="w-10 h-10 rounded-full bg-emerald-100 text-emerald-700 flex items-center justify-center shrink-0">
                    <Activity className="w-5 h-5" />
                  </div>
                  <div>
                    <div className="text-xs font-bold text-slate-900">A healthier tomorrow starts today.</div>
                    <div className="text-[11px] text-slate-500">Regular wellness screening leads to peace of mind.</div>
                  </div>
                </div>
              </div>

            </div>
          </div>

        </div>

      </div>
    </section>
  );
}
