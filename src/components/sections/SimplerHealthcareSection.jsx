import React from 'react';
import { FileText, Users, CheckCircle2 } from 'lucide-react';

export default function SimplerHealthcareSection() {
  const threePillars = [
    {
      num: '01',
      title: 'Tell us what you need',
      description: 'Upload a prescription, medical order, or simply tell us what kind of care you need.',
      icon: FileText
    },
    {
      num: '02',
      title: 'We help coordinate it',
      description: 'We help you find suitable options from our healthcare partners and coordinate the next steps.',
      icon: Users
    },
    {
      num: '03',
      title: 'You stay in control',
      description: 'Review your options, choose what works for you, and manage the service from one place.',
      icon: CheckCircle2
    }
  ];

  return (
    <section className="py-16 md:py-24 bg-white">
      <div className="max-w-7xl mx-auto px-4 sm:px-6 lg:px-8 space-y-12">
        
        {/* Header */}
        <div className="text-center max-w-3xl mx-auto space-y-3">
          <div className="text-xs font-extrabold uppercase tracking-wider text-purple-700">
            WHAT HEALTH EXPRESS DOES
          </div>
          <h2 className="text-3xl sm:text-4xl font-extrabold text-slate-900 tracking-tight">
            One place. Less coordination.
          </h2>
          <p className="text-base sm:text-lg text-slate-600">
            Instead of navigating multiple websites, diagnostic centers, and clinics — let Health Express coordinate the journey for you.
          </p>
        </div>

        {/* 3 Step Pillars */}
        <div className="grid grid-cols-1 md:grid-cols-3 gap-8">
          {threePillars.map((pillar) => {
            const IconComponent = pillar.icon;
            return (
              <div 
                key={pillar.num}
                className="bg-purple-50/40 hover:bg-purple-50 border border-purple-100 rounded-3xl p-8 transition-all hover:shadow-md text-left space-y-4 relative group"
              >
                <div className="flex items-center justify-between">
                  <div className="w-12 h-12 rounded-2xl bg-white border border-purple-200 text-purple-700 flex items-center justify-center shadow-xs">
                    <IconComponent className="w-6 h-6" />
                  </div>
                  <span className="text-sm font-extrabold text-purple-400 group-hover:text-purple-600">
                    {pillar.num}
                  </span>
                </div>

                <h3 className="text-xl font-bold text-slate-900">{pillar.title}</h3>
                <p className="text-sm text-slate-600 leading-relaxed">{pillar.description}</p>
              </div>
            );
          })}
        </div>

      </div>
    </section>
  );
}
