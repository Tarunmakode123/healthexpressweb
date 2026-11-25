import React from 'react';
import { ShieldCheck, Building2, Tag, Lock } from 'lucide-react';

const TRUST_PILLARS = [
  {
    icon: ShieldCheck,
    title: 'NABL Accredited Reports',
    description: 'Digitally verified reports delivered online directly to WhatsApp & Email'
  },
  {
    icon: Building2,
    title: 'Top Diagnostic Centers',
    description: 'Partnered with premier accredited diagnostic labs across India'
  },
  {
    icon: Tag,
    title: 'Transparent Pricing',
    description: 'Save up to 70% off MRP with zero hidden fees or convenience charges'
  },
  {
    icon: Lock,
    title: '100% Data Privacy',
    description: 'Encrypted patient records adhering to strict healthcare security standards'
  }
];

export default function HealthiansTrustStrip() {
  return (
    <section aria-label="Trust & Accreditations" className="bg-white border-y border-slate-100 py-4 sm:py-5 font-sans">
      <div className="max-w-7xl mx-auto px-4 sm:px-6 lg:px-8">
        
        {/* Shallow 4-Column Horizontal Trust Grid */}
        <div className="grid grid-cols-1 sm:grid-cols-2 lg:grid-cols-4 gap-3 sm:gap-4">
          {TRUST_PILLARS.map((pillar, idx) => {
            const Icon = pillar.icon;
            return (
              <div 
                key={idx}
                className="flex items-start gap-3 p-3 rounded-xl bg-slate-50/70 hover:bg-purple-50/50 border border-slate-200/70 hover:border-purple-200 transition-colors text-left"
              >
                <div className="w-8 h-8 rounded-lg bg-purple-100 text-purple-700 flex items-center justify-center shrink-0 mt-0.5">
                  <Icon className="w-4 h-4 text-purple-700" />
                </div>
                <div className="space-y-0.5">
                  <h3 className="text-xs font-bold text-slate-900 leading-snug">
                    {pillar.title}
                  </h3>
                  <p className="text-[11px] text-slate-500 leading-normal font-medium line-clamp-2">
                    {pillar.description}
                  </p>
                </div>
              </div>
            );
          })}
        </div>

      </div>
    </section>
  );
}
