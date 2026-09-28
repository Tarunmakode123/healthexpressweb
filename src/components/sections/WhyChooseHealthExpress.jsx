import React from 'react';
import { Home, Clock, UserCheck, ShieldCheck, Tag, Lock, Sparkles } from 'lucide-react';

export default function WhyChooseHealthExpress() {
  const highlights = [
    {
      num: '01',
      title: 'Free Home Collection',
      desc: 'Doorstep sample pickup by certified phlebotomists.',
      icon: Home
    },
    {
      num: '02',
      title: 'Express 6-Hr Reports',
      desc: 'NABL accredited, digitally verified PDF reports.',
      icon: Clock
    },
    {
      num: '03',
      title: 'Dedicated Health Manager',
      desc: '1-on-1 assistance on WhatsApp & phone.',
      icon: UserCheck
    },
    {
      num: '04',
      title: 'NABL & ICMR Labs',
      desc: 'Partnered with top accredited diagnostic centers.',
      icon: ShieldCheck
    },
    {
      num: '05',
      title: 'Transparent Pricing',
      desc: 'Save up to 70% off MRP with zero hidden fees.',
      icon: Tag
    },
    {
      num: '06',
      title: '100% Data Privacy',
      desc: 'Encrypted, HIPAA-compliant patient record safety.',
      icon: Lock
    }
  ];

  return (
    <section className="py-12 bg-gradient-to-b from-purple-50/40 via-white to-white border-b border-purple-100/60">
      <div className="max-w-7xl mx-auto px-4 sm:px-6 lg:px-8 space-y-8">
        
        {/* Section Header */}
        <div className="text-center max-w-2xl mx-auto space-y-2">
          <div className="inline-flex items-center gap-2 px-3 py-1 rounded-full bg-purple-100 border border-purple-200 text-[11px] font-extrabold uppercase tracking-widest text-purple-800 shadow-2xs">
            <Sparkles className="w-3.5 h-3.5 text-purple-600" />
            <span>THE HEALTH EXPRESS ADVANTAGE</span>
          </div>
          <h2 className="text-2xl sm:text-3xl lg:text-4xl font-extrabold text-slate-900 tracking-tight">
            Why Choose <span className="gradient-text-purple">Health Express?</span>
          </h2>
        </div>

        {/* 6 Numbered Feature Cards Row */}
        <div className="grid grid-cols-2 md:grid-cols-3 lg:grid-cols-6 gap-4">
          {highlights.map((item) => {
            const IconComponent = item.icon;
            return (
              <div 
                key={item.num}
                className="bg-white rounded-3xl p-5 border border-purple-100 shadow-xs hover:shadow-md hover:border-purple-300 transition-all duration-300 text-center flex flex-col items-center justify-between space-y-3 group"
              >
                <div className="relative">
                  {/* Big Stylized Number Background */}
                  <span className="text-2xl font-black font-mono text-purple-200 group-hover:text-purple-300 transition-colors block">
                    {item.num}
                  </span>
                  
                  {/* Icon Circle */}
                  <div className="w-12 h-12 rounded-2xl bg-purple-50 group-hover:bg-purple-700 text-purple-700 group-hover:text-white border border-purple-100 flex items-center justify-center transition-colors shadow-2xs mx-auto -mt-3">
                    <IconComponent className="w-6 h-6" />
                  </div>
                </div>

                <div className="space-y-1">
                  <h3 className="text-xs sm:text-sm font-extrabold text-slate-900 group-hover:text-purple-900 transition-colors leading-snug">
                    {item.title}
                  </h3>
                  <p className="text-[11px] text-slate-500 leading-relaxed font-medium">
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
