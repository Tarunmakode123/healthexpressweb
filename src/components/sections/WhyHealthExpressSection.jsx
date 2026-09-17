import React from 'react';
import { Target, Grid, Share2, Home, HeartHandshake, ShieldCheck } from 'lucide-react';

export default function WhyHealthExpressSection() {
  const features = [
    {
      icon: Target,
      title: 'One place to start',
      description: 'You don\'t need to know exactly where to begin. Start by telling us what you need.'
    },
    {
      icon: Grid,
      title: 'Multiple healthcare services',
      description: 'Access diagnostics, home healthcare, telemedicine, pharmacy, genetic testing and preventive health services through one platform.'
    },
    {
      icon: Share2,
      title: 'Relevant options',
      description: 'We help connect your requirement with relevant healthcare services and participating providers.'
    },
    {
      icon: Home,
      title: 'Designed for convenience',
      description: 'From home sample collection to virtual consultations and home healthcare, access services in ways that fit your life.'
    },
    {
      icon: HeartHandshake,
      title: 'Healthcare information, connected',
      description: 'Keep your healthcare journey more organized with access to services, reports and health information in one ecosystem.'
    },
    {
      icon: ShieldCheck,
      title: 'Built around trust',
      description: 'We work with participating healthcare providers and apply appropriate verification, quality and compliance processes to the services available through the platform.'
    }
  ];

  return (
    <section className="py-16 md:py-24 bg-white">
      <div className="max-w-7xl mx-auto px-4 sm:px-6 lg:px-8 space-y-12">
        
        {/* Header */}
        <div className="text-center max-w-3xl mx-auto space-y-3">
          <div className="text-xs font-extrabold uppercase tracking-wider text-purple-700">
            BUILT AROUND YOU
          </div>
          <h2 className="text-3xl sm:text-4xl font-extrabold text-slate-900 tracking-tight">
            Less searching. Less coordinating. More care.
          </h2>
          <p className="text-base sm:text-lg text-slate-600">
            Healthcare can be fragmented. Health Express is designed to bring the pieces together.
          </p>
        </div>

        {/* 6 Features Grid */}
        <div className="grid grid-cols-1 sm:grid-cols-2 lg:grid-cols-3 gap-6">
          {features.map((feat, idx) => {
            const IconComp = feat.icon;
            return (
              <div 
                key={idx}
                className="flex items-start gap-4 p-6 rounded-3xl bg-slate-50/60 hover:bg-purple-50/50 border border-slate-100 hover:border-purple-200 transition-all shadow-xs"
              >
                <div className="w-11 h-11 rounded-2xl bg-purple-100 text-purple-700 flex items-center justify-center shrink-0">
                  <IconComp className="w-5 h-5" />
                </div>
                <div>
                  <h4 className="text-base font-bold text-slate-900">{feat.title}</h4>
                  <p className="text-xs text-slate-600 mt-1.5 leading-relaxed">{feat.description}</p>
                </div>
              </div>
            );
          })}
        </div>

      </div>
    </section>
  );
}
