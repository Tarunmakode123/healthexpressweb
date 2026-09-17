import React from 'react';
import { ShieldCheck, Award, FileCheck, Lock } from 'lucide-react';

export default function TrustSection() {
  const trustItems = [
    {
      icon: ShieldCheck,
      title: 'Verified Providers',
      description: 'Participating healthcare providers are subject to applicable onboarding and verification processes.'
    },
    {
      icon: Award,
      title: 'Accreditation',
      description: 'Where applicable, relevant accreditation and certification information is displayed for participating providers.'
    },
    {
      icon: FileCheck,
      title: 'Transparent Information',
      description: 'Service, provider and availability information is presented to help you make informed decisions.'
    },
    {
      icon: Lock,
      title: 'Secure Healthcare Journey',
      description: 'Your personal and health information is handled through appropriate security and privacy controls.'
    }
  ];

  return (
    <section className="py-16 md:py-24 bg-slate-50/50 border-t border-slate-100">
      <div className="max-w-7xl mx-auto px-4 sm:px-6 lg:px-8 space-y-12">
        
        {/* Header */}
        <div className="text-center max-w-3xl mx-auto space-y-4">
          <div className="text-xs font-extrabold uppercase tracking-wider text-purple-700">
            TRUST & QUALITY
          </div>
          <h2 className="text-3xl sm:text-4xl font-extrabold text-slate-900 tracking-tight">
            Healthcare deserves a higher standard of trust.
          </h2>
          <p className="text-sm sm:text-base text-slate-600 leading-relaxed">
            Health Express works with participating healthcare providers and partners to make healthcare services easier to discover and access. Depending on the service and location, provider and service information may include applicable accreditation, verification, protocols and quality-assurance information so you can make a more informed choice.
          </p>
        </div>

        {/* 4 Trust Items Grid */}
        <div className="grid grid-cols-1 sm:grid-cols-2 lg:grid-cols-4 gap-6">
          {trustItems.map((item, idx) => {
            const IconComponent = item.icon;
            return (
              <div 
                key={idx}
                className="bg-white p-6 rounded-3xl border border-slate-100 shadow-xs space-y-3 text-left"
              >
                <div className="w-10 h-10 rounded-xl bg-purple-100 text-purple-700 flex items-center justify-center">
                  <IconComponent className="w-5 h-5" />
                </div>
                <h4 className="text-base font-bold text-slate-900">{item.title}</h4>
                <p className="text-xs text-slate-600 leading-relaxed">{item.description}</p>
              </div>
            );
          })}
        </div>

      </div>
    </section>
  );
}
