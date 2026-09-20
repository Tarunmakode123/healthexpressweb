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
      description: 'Access diagnostics, home healthcare, genetic testing, imaging, and preventive health services through one platform.'
    },
    {
      icon: Share2,
      title: 'Relevant options',
      description: 'We help connect your requirement with relevant healthcare services and participating providers.'
    },
    {
      icon: Home,
      title: 'Designed for convenience',
      description: 'From home sample collection to home healthcare nursing, access services in ways that fit your life.'
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
    <section className="py-16 md:py-24 bg-gradient-to-b from-white via-purple-50/20 to-white relative overflow-hidden">
      <div className="max-w-7xl mx-auto px-4 sm:px-6 lg:px-8 space-y-12 relative z-10">
        
        {/* Header */}
        <div className="text-center max-w-3xl mx-auto space-y-3">
          <div className="inline-flex items-center gap-2 px-3.5 py-1.5 rounded-full bg-purple-100 border border-purple-200 text-xs font-extrabold uppercase tracking-wider text-purple-700 shadow-2xs">
            BUILT AROUND YOU
          </div>
          <h2 className="text-3xl sm:text-4xl font-extrabold text-slate-900 tracking-tight">
            Less searching. Less coordinating. <span className="gradient-text-purple">More care.</span>
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
                className="flex items-start gap-4 p-6 rounded-3xl bg-white/90 backdrop-blur-md hover:bg-purple-50/60 border border-purple-100/80 hover:border-purple-300 transition-all duration-300 hover-glow group text-left"
              >
                <div className="w-12 h-12 rounded-2xl bg-purple-700 text-white flex items-center justify-center shrink-0 shadow-xs group-hover:scale-110 group-hover:bg-purple-800 transition-all">
                  <IconComp className="w-6 h-6" />
                </div>
                <div>
                  <h4 className="text-base font-bold text-slate-900 group-hover:text-purple-900 transition-colors">{feat.title}</h4>
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
