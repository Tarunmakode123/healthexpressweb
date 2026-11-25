import React from 'react';

const ADVANTAGES = [
  {
    image: '/images/advantages/advantage_01_pickup.svg',
    title: 'Free & On-Time Sample Collection',
    desc: 'Doorstep pickup by certified phlebotomists',
    iconBg: 'bg-[#d1f9fb] border-[#b2eff2]'
  },
  {
    image: '/images/advantages/advantage_02_nursing.svg',
    title: 'Professional Home Nursing Care',
    desc: 'Doctor-prescribed home nursing & eldercare',
    iconBg: 'bg-[#ffe6f2] border-[#ffcce5]'
  },
  {
    image: '/images/advantages/advantage_03_manager.svg',
    title: 'Free Dedicated Health Manager',
    desc: '1-on-1 assistance on WhatsApp & phone',
    iconBg: 'bg-[#fff0e6] border-[#ffd8bf]'
  },
  {
    image: '/images/advantages/advantage_04_microscope.svg',
    title: '100% NABL Accredited Labs',
    desc: 'High-precision partner diagnostic testing',
    iconBg: 'bg-[#e6ecff] border-[#d4deff]'
  },
  {
    image: '/images/advantages/advantage_05_pricing.svg',
    title: 'Transparent Pricing',
    desc: 'Save up to 70% off with zero hidden fees',
    iconBg: 'bg-[#dcfce7] border-[#bbf7d0]'
  },
  {
    image: '/images/advantages/advantage_06_reports.svg',
    title: 'Fast Smart Digital Reports',
    desc: 'Verified PDF reports delivered in hours',
    iconBg: 'bg-[#f3e8ff] border-[#e9d5ff]'
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

        {/* 6-Column Icon Row: Prominent 3D Icons without Numbers */}
        <div className="grid grid-cols-2 sm:grid-cols-3 lg:grid-cols-6 gap-6 sm:gap-5 lg:gap-6 pt-2">
          {ADVANTAGES.map((item, idx) => {
            return (
              <div key={idx} className="flex flex-col items-start text-left space-y-3 group">
                
                {/* Enlarged 3D Vector Icon Box */}
                <div className={`w-14 h-14 sm:w-16 sm:h-16 rounded-2xl border flex items-center justify-center transition-all duration-300 group-hover:scale-110 shadow-xs p-2.5 sm:p-3 ${item.iconBg}`}>
                  <img src={item.image} alt={item.title} className="w-full h-full object-contain" />
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
