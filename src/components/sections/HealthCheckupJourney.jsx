import React from 'react';
import { Upload, MessageSquare } from 'lucide-react';
import { openWhatsApp, DEFAULT_MESSAGES } from '../../utils/whatsapp';

const STEPS = [
  {
    num: '01',
    title: 'Book with Ease',
    description: 'Upload your prescription file or choose diagnostic tests from our catalog in seconds.',
    image: '/images/journey/step1_book.svg',
    badgeBg: 'bg-[#fff0e6] border-[#ffd8bf]'
  },
  {
    num: '02',
    title: 'Hassle-Free Home Collection',
    description: 'Safe & timely sample collection by trained, certified phlebotomists right at your doorstep.',
    image: '/images/journey/step2_collection.svg',
    badgeBg: 'bg-[#f3e8ff] border-[#e9d5ff]'
  },
  {
    num: '03',
    title: 'Secure Sample Transfer',
    description: 'Temperature-controlled and safe sample logistics to accredited NABL processing labs.',
    image: '/images/journey/step3_transfer.svg',
    badgeBg: 'bg-[#e0f2fe] border-[#bae6fd]'
  },
  {
    num: '04',
    title: 'Quick & Easy Report Access',
    description: 'Get verified smart digital PDF reports delivered directly via WhatsApp, SMS, and Email.',
    image: '/images/journey/step4_reports.svg',
    badgeBg: 'bg-[#dcfce7] border-[#bbf7d0]'
  }
];

export default function HealthCheckupJourney({ onOpenUploadModal }) {
  return (
    <section aria-label="Health Checkup Journey" className="bg-[#fafafa] border-b border-slate-200/80 py-10 sm:py-14 font-sans">
      <div className="max-w-7xl mx-auto px-4 sm:px-6 lg:px-8 text-center space-y-8 sm:space-y-10">
        
        {/* Healthians Header with Orange/Purple Gradient Hairline Divider */}
        <div className="space-y-2 max-w-2xl mx-auto">
          <div className="text-sm sm:text-base font-semibold text-slate-600">
            Your Health Express
          </div>
          <h2 className="text-2xl sm:text-3xl font-bold text-purple-700 tracking-tight">
            Patient Health Checkup Journey
          </h2>
          <div className="h-[2px] w-48 sm:w-60 mx-auto bg-gradient-to-r from-transparent via-purple-500 to-transparent my-2" />
          <p className="text-xs sm:text-sm text-slate-500 font-medium leading-relaxed">
            Experience healthcare built around absolute speed and precision. Book your diagnostic tests instantly, enjoy seamless doorstep sample collection, and trust verified reports every single time.
          </p>
        </div>

        {/* Healthians Connected Dotted Timeline (With 100% Custom 3D Medical Icons) */}
        <div className="relative pt-2">
          
          {/* Alternating curved dashed connecting line on desktop */}
          <div className="hidden lg:block absolute top-9 left-[12%] right-[12%] h-0.5 border-t-2 border-dashed border-purple-200 z-0" />

          {/* 4 Flowing Step Columns */}
          <div className="grid grid-cols-1 sm:grid-cols-2 lg:grid-cols-4 gap-8 lg:gap-4 relative z-10">
            {STEPS.map((step, idx) => (
              <div key={idx} className="flex flex-col items-center text-center group cursor-default">
                
                {/* Circular Step Badge sitting along the path with 3D Medical Icon */}
                <div className={`w-18 h-18 sm:w-20 sm:h-20 rounded-full flex items-center justify-center border-2 shadow-xs transition-transform duration-300 group-hover:scale-110 p-2.5 ${step.badgeBg}`}>
                  <img src={step.image} alt={step.title} className="w-full h-full object-contain filter drop-shadow-2xs select-none pointer-events-none" />
                </div>

                {/* Step Title & Description underneath */}
                <div className="mt-3.5 space-y-1">
                  <span className="text-[10px] font-black uppercase tracking-wider text-purple-700 bg-purple-50 px-2 py-0.5 rounded-full border border-purple-100 inline-block mb-1">
                    Step {step.num}
                  </span>
                  <h3 className="text-sm sm:text-base font-bold text-slate-900 leading-snug">
                    {step.title}
                  </h3>
                  <p className="text-xs text-slate-500 font-medium max-w-[210px] mx-auto leading-relaxed">
                    {step.description}
                  </p>
                </div>

              </div>
            ))}
          </div>

        </div>

        {/* Compact Action CTAs */}
        <div className="pt-2 flex flex-col sm:flex-row items-center justify-center gap-3">
          <button
            onClick={onOpenUploadModal}
            className="w-full sm:w-auto px-6 py-2.5 rounded-xl bg-purple-700 hover:bg-purple-800 text-white font-bold text-xs flex items-center justify-center gap-2 shadow-sm transition-all active:scale-95 cursor-pointer"
          >
            <Upload className="w-3.5 h-3.5 text-purple-200" />
            <span>Upload Doctor's Prescription</span>
          </button>

          <button
            onClick={() => openWhatsApp(DEFAULT_MESSAGES.general)}
            className="w-full sm:w-auto px-6 py-2.5 rounded-xl bg-emerald-600 hover:bg-emerald-700 text-white font-bold text-xs flex items-center justify-center gap-2 shadow-sm transition-all active:scale-95 cursor-pointer"
          >
            <MessageSquare className="w-3.5 h-3.5 fill-current text-emerald-200" />
            <span>Connect on WhatsApp</span>
          </button>
        </div>

      </div>
    </section>
  );
}
