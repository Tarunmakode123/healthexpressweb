import React from 'react';
import { UserCheck, Stethoscope, PhoneCall, ShieldCheck, Tag, FileText } from 'lucide-react';

const ADVANTAGES = [
  {
    num: '01',
    icon: UserCheck,
    title: 'Free & On-Time Sample Collection',
    desc: 'Doorstep pickup by certified phlebotomists',
    iconBg: 'bg-[#d1f9fb] text-[#00838f] border-[#b2eff2]'
  },
  {
    num: '02',
    icon: Stethoscope,
    title: 'Professional Home Nursing Care',
    desc: 'Doctor-prescribed home nursing & eldercare',
    iconBg: 'bg-[#ffe6f2] text-[#c2185b] border-[#ffcce5]'
  },
  {
    num: '03',
    icon: PhoneCall,
    title: 'Free Dedicated Health Manager',
    desc: '1-on-1 assistance on WhatsApp & phone',
    iconBg: 'bg-[#fff0e6] text-[#d4380d] border-[#ffd8bf]'
  },
  {
    num: '04',
    icon: ShieldCheck,
    title: '100% NABL Accredited Labs',
    desc: 'High-precision partner diagnostic testing',
    iconBg: 'bg-[#e6ecff] text-[#304ffe] border-[#d4deff]'
  },
  {
    num: '05',
    icon: Tag,
    title: 'Transparent Pricing',
    desc: 'Save up to 70% off with zero hidden fees',
    iconBg: 'bg-[#dcfce7] text-[#15803d] border-[#bbf7d0]'
  },
  {
    num: '06',
    icon: FileText,
    title: 'Fast Smart Digital Reports',
    desc: 'Verified PDF reports delivered in hours',
    iconBg: 'bg-[#f3e8ff] text-[#7e22ce] border-[#e9d5ff]'
  }
];

export default function HealthExpressAdvantage() {
  return (
    <section aria-label="Why Choose Health Express" className="bg-white border-b border-slate-200/80 py-10 sm:py-14 font-sans">
      <div className="max-w-7xl mx-auto px-4 sm:px-6 lg:px-8 space-y-8 sm:space-y-10">
        
        {/* Borderless Centered Healthians Heading */}
        <div className="text-center space-y-1.5 max-w-xl mx-auto">
          <h2 className="text-xl sm:text-2xl font-bold text-purple-700 tracking-tight">
            Why Choose Health Express
          </h2>
          <p className="text-xs sm:text-sm font-semibold text-slate-500 uppercase tracking-wider">
            The Health Express Advantage
          </p>
        </div>

        {/* 6-Column Borderless Icon Row (Exact Healthians Style: Numeral + Icon + Caption, ZERO Box Cards) */}
        <div className="grid grid-cols-2 sm:grid-cols-3 lg:grid-cols-6 gap-6 sm:gap-4 lg:gap-6 pt-2">
          {ADVANTAGES.map((item, idx) => {
            const Icon = item.icon;
            return (
              <div key={idx} className="flex flex-col items-start text-left space-y-2 group">
                
                {/* Large Italic Numeral + Monochrome Line Icon */}
                <div className="flex items-center gap-2 min-h-[50px]">
                  <span className="text-2xl sm:text-3xl font-black text-slate-300 italic tracking-tighter select-none">
                    {item.num}
                  </span>
                  <div className={`w-10 h-10 rounded-xl border flex items-center justify-center transition-transform group-hover:scale-110 shadow-2xs ${item.iconBg}`}>
                    <Icon className="w-5 h-5" />
                  </div>
                </div>

                {/* Caption below */}
                <div className="space-y-1">
                  <h3 className="text-xs sm:text-[13px] font-bold text-slate-900 leading-snug">
                    {item.title}
                  </h3>
                  <p className="text-[11px] text-slate-500 font-medium leading-normal">
                    {item.desc}
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
