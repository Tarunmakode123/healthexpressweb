import React from 'react';
import { FileText, Users, CheckCircle2, Target, Grid, Share2, HeartHandshake, ShieldCheck, Home } from 'lucide-react';

export default function SimplerHealthcareSection() {
  const threePillars = [
    {
      icon: FileText,
      title: 'Tell us what you need',
      description: 'Upload a prescription, medical order or simply describe what you\'re looking for.'
    },
    {
      icon: Users,
      title: 'We do the legwork',
      description: 'We help identify relevant services, partner labs and available providers.'
    },
    {
      icon: CheckCircle2,
      title: 'You stay in control',
      description: 'Review your options, make your choice and book when you\'re ready.'
    }
  ];

  const sixFeatures = [
    {
      icon: Target,
      title: 'One place to start',
      description: 'Tell us what you need.'
    },
    {
      icon: Grid,
      title: 'Multiple services',
      description: 'Diagnostics, telemedicine, pharmacy and more.'
    },
    {
      icon: Share2,
      title: 'Relevant options',
      description: 'We connect you with participating providers.'
    },
    {
      icon: Home,
      title: 'Designed for convenience',
      description: 'Home services and virtual care options.'
    },
    {
      icon: HeartHandshake,
      title: 'Healthcare information',
      description: 'Keep your health journey organized.'
    },
    {
      icon: ShieldCheck,
      title: 'Built around trust',
      description: 'Verified providers and quality processes.'
    }
  ];

  return (
    <section className="py-16 md:py-24 bg-white">
      <div className="max-w-7xl mx-auto px-4 sm:px-6 lg:px-8 space-y-16">
        
        {/* Part 1: YOU ASK. WE COORDINATE. */}
        <div className="text-center max-w-3xl mx-auto space-y-4">
          <div className="text-xs font-extrabold uppercase tracking-wider text-purple-700">
            YOU ASK. WE COORDINATE.
          </div>
          <h2 className="text-3xl sm:text-4xl font-extrabold text-slate-900 tracking-tight">
            Healthcare should be simpler.
          </h2>
          <p className="text-base sm:text-lg text-slate-600 leading-relaxed">
            Finding the right test, healthcare provider or service can mean searching across multiple websites, comparing providers, checking availability and coordinating appointments. Health Express brings that journey together.
          </p>
        </div>

        {/* 3 Pillars Cards */}
        <div className="grid grid-cols-1 md:grid-cols-3 gap-8">
          {threePillars.map((pillar, idx) => {
            const IconComponent = pillar.icon;
            return (
              <div 
                key={idx}
                className="bg-purple-50/40 hover:bg-purple-50 border border-purple-100 rounded-3xl p-8 transition-all hover:shadow-md text-left space-y-4"
              >
                <div className="w-12 h-12 rounded-2xl bg-white border border-purple-200 text-purple-700 flex items-center justify-center shadow-xs">
                  <IconComponent className="w-6 h-6" />
                </div>
                <h3 className="text-xl font-bold text-slate-900">{pillar.title}</h3>
                <p className="text-sm text-slate-600 leading-relaxed">{pillar.description}</p>
              </div>
            );
          })}
        </div>

        {/* Part 2: BUILT AROUND YOU */}
        <div className="pt-12 border-t border-slate-100">
          <div className="text-center max-w-3xl mx-auto space-y-3 mb-12">
            <div className="text-xs font-extrabold uppercase tracking-wider text-purple-700">
              BUILT AROUND YOU
            </div>
            <h3 className="text-2xl sm:text-3xl font-extrabold text-slate-900">
              Less searching. Less coordinating. More care.
            </h3>
            <p className="text-sm sm:text-base text-slate-600">
              Healthcare can be fragmented. Health Express is designed to bring the pieces together.
            </p>
          </div>

          <div className="grid grid-cols-1 sm:grid-cols-2 lg:grid-cols-3 gap-6">
            {sixFeatures.map((feat, idx) => {
              const IconComp = feat.icon;
              return (
                <div 
                  key={idx}
                  className="flex items-start gap-4 p-5 rounded-2xl bg-slate-50/60 hover:bg-purple-50/60 border border-slate-100 hover:border-purple-200 transition-all"
                >
                  <div className="w-10 h-10 rounded-xl bg-purple-100 text-purple-700 flex items-center justify-center shrink-0">
                    <IconComp className="w-5 h-5" />
                  </div>
                  <div>
                    <h4 className="text-base font-bold text-slate-900">{feat.title}</h4>
                    <p className="text-xs text-slate-600 mt-1">{feat.description}</p>
                  </div>
                </div>
              );
            })}
          </div>
        </div>

      </div>
    </section>
  );
}
