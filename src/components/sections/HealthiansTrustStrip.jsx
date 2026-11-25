import React from 'react';
import { Award, Clock, FileText, PhoneCall } from 'lucide-react';

const FEATURES = [
  {
    icon: Award,
    title: 'CAP & NABL',
    subtitle: 'Accredited Labs',
    iconBg: 'bg-emerald-50 text-emerald-700 border-emerald-200'
  },
  {
    icon: Clock,
    title: 'On-Time Sample',
    subtitle: 'Doorstep Collection',
    iconBg: 'bg-amber-50 text-amber-700 border-amber-200'
  },
  {
    icon: FileText,
    title: 'Smart Reports',
    subtitle: 'Fast in 6 Hours',
    iconBg: 'bg-blue-50 text-blue-700 border-blue-200'
  },
  {
    icon: PhoneCall,
    title: 'Free Report',
    subtitle: 'Doctor Consultation',
    iconBg: 'bg-purple-50 text-purple-700 border-purple-200'
  }
];

export default function HealthiansTrustStrip() {
  return (
    <section aria-label="Why Patients Trust Us" className="py-3 sm:py-4 font-sans bg-slate-50/50">
      <div className="max-w-7xl mx-auto px-4 sm:px-6 lg:px-8">
        
        {/* Single Unified Healthians-Style Ribbon Card */}
        <div className="bg-white rounded-2xl border border-slate-200/90 shadow-2xs py-3.5 px-4 sm:py-4 sm:px-6 flex flex-col lg:flex-row items-center justify-between gap-4 lg:gap-6">
          
          {/* Left Heading with dashed divider */}
          <div className="shrink-0 lg:border-r lg:border-dashed lg:border-slate-300 lg:pr-6 text-center lg:text-left">
            <h3 className="text-sm sm:text-base font-bold text-slate-800 leading-tight">
              Why <span className="text-purple-700 font-extrabold">10,000+</span> Patients
              <span className="block text-xs sm:text-sm font-medium text-slate-500 mt-0.5">
                Trust <span className="text-purple-900 font-bold">Health Express</span>
              </span>
            </h3>
          </div>

          {/* 4 Inline Features (Zero inner card boxes!) */}
          <div className="flex-1 w-full grid grid-cols-2 md:grid-cols-4 gap-3 sm:gap-4 lg:gap-6 items-center">
            {FEATURES.map((item, idx) => {
              const Icon = item.icon;
              return (
                <div key={idx} className="flex items-center gap-2.5 sm:gap-3">
                  <div className={`w-9 h-9 sm:w-10 sm:h-10 rounded-xl flex items-center justify-center shrink-0 border shadow-2xs transition-transform hover:scale-105 ${item.iconBg}`}>
                    <Icon className="w-4 h-4 sm:w-5 sm:h-5" />
                  </div>
                  <div className="space-y-0.5 text-left min-w-0">
                    <div className="text-xs sm:text-[13px] font-bold text-slate-900 leading-tight truncate">
                      {item.title}
                    </div>
                    <div className="text-[11px] sm:text-xs font-medium text-slate-500 truncate">
                      {item.subtitle}
                    </div>
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
