import React from 'react';
import { UserCheck, Home, PhoneCall, ShieldCheck, Tag, Zap } from 'lucide-react';

const ADVANTAGES = [
  {
    num: '01',
    title: 'Free Doorstep Sample Pickup',
    description: 'Certified phlebotomists collect samples safely at home using single-use vacuum collection tubes.',
    icon: UserCheck
  },
  {
    num: '02',
    title: 'Professional Home Nursing',
    description: 'Home nursing and eldercare built around your convenience, recovery, and absolute trust.',
    icon: Home
  },
  {
    num: '03',
    title: 'Dedicated Health Manager',
    description: 'Free 1-on-1 personal assistance on WhatsApp & phone to guide your tests, reports, and appointments.',
    icon: PhoneCall
  },
  {
    num: '04',
    title: '100% NABL Accredited Labs',
    description: 'Partnered with premier accredited diagnostic centers for clinical accuracy and verified results.',
    icon: ShieldCheck
  },
  {
    num: '05',
    title: 'Transparent Pricing',
    description: 'Up to 70% off standard hospital MRP with zero hidden charges or extra convenience fees.',
    icon: Tag
  },
  {
    num: '06',
    title: 'Fast Digital Report Delivery',
    description: 'Secure, verified smart digital PDF reports delivered straight to your WhatsApp and Email in hours.',
    icon: Zap
  }
];

export default function HealthExpressAdvantage() {
  return (
    <section className="bg-white border-b border-slate-200/70 py-8 sm:py-10 font-sans">
      <div className="max-w-7xl mx-auto px-4 sm:px-6 lg:px-8 space-y-6 text-center">
        
        {/* Shallow Section Header */}
        <div className="space-y-1.5 max-w-2xl mx-auto">
          <span className="text-[10px] font-bold uppercase tracking-widest px-2.5 py-0.5 rounded-full bg-purple-100 text-purple-900 border border-purple-200 inline-block">
            WHY CHOOSE US
          </span>
          <h2 className="text-xl sm:text-2xl font-bold text-slate-900 tracking-tight">
            The Health Express Advantage
          </h2>
        </div>

        {/* Healthians-Style Shallow 6-Pillar Grid */}
        <div className="grid grid-cols-1 sm:grid-cols-2 lg:grid-cols-3 gap-3.5 sm:gap-4 text-left pt-1">
          {ADVANTAGES.map((item, idx) => {
            const Icon = item.icon;
            return (
              <div 
                key={idx}
                className="p-4 rounded-2xl bg-slate-50/70 hover:bg-purple-50/40 border border-slate-200/80 hover:border-purple-200 transition-all flex items-start gap-3.5 group shadow-2xs"
              >
                <div className="w-9 h-9 rounded-xl bg-purple-100 text-purple-700 flex items-center justify-center shrink-0 group-hover:scale-105 transition-transform mt-0.5">
                  <Icon className="w-4.5 h-4.5 text-purple-700" />
                </div>
                <div className="space-y-1">
                  <div className="flex items-center gap-1.5">
                    <span className="text-[10px] font-black text-purple-700">
                      {item.num}
                    </span>
                    <h3 className="text-xs sm:text-sm font-bold text-slate-900 leading-snug">
                      {item.title}
                    </h3>
                  </div>
                  <p className="text-xs text-slate-500 leading-relaxed font-medium">
                    {item.description}
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
