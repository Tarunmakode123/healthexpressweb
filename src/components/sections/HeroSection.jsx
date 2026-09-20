import React, { useState } from 'react';
import { Upload, MessageSquare, Search, ArrowRight, ShieldCheck, CheckCircle2, Lock, UserCheck, Activity } from 'lucide-react';
import { openWhatsApp, DEFAULT_MESSAGES } from '../../utils/whatsapp';

export default function HeroSection({ onOpenUploadModal }) {
  const [heroSearch, setHeroSearch] = useState('');

  const quickFilterTests = [
    { label: 'CBC', query: 'CBC Test' },
    { label: 'HbA1c', query: 'HbA1c Test' },
    { label: 'Vitamin D', query: 'Vitamin D Test' },
    { label: 'Thyroid Profile', query: 'Thyroid Test' },
    { label: 'Lipid Profile', query: 'Lipid Profile' },
    { label: 'Full Body Checkup', query: 'Full Body Checkup' }
  ];

  const handleSearchSubmit = (e) => {
    e.preventDefault();
    const query = heroSearch.trim();
    if (query) {
      openWhatsApp(`Hello Health Express, I would like to inquire about booking or availability for: ${query}.`);
    } else {
      const testsElement = document.getElementById('tests');
      if (testsElement) testsElement.scrollIntoView({ behavior: 'smooth' });
    }
  };

  const handleFilterClick = (query) => {
    setHeroSearch(query);
    openWhatsApp(`Hello Health Express, I would like to inquire about booking or availability for: ${query}.`);
  };

  return (
    <section className="relative overflow-hidden bg-mesh-clinical pt-10 pb-16 md:pt-16 md:pb-24 border-b border-purple-100/60">
      
      {/* Background ECG Accent Line */}
      <div className="absolute top-1/4 left-0 right-0 h-40 opacity-10 pointer-events-none -z-10 flex items-center justify-center">
        <svg viewBox="0 0 1200 120" className="w-full h-full text-purple-700 fill-none stroke-current stroke-[2] stroke-linecap-round stroke-linejoin-round">
          <path d="M0,60 L250,60 L280,30 L300,90 L320,10 L340,110 L360,60 L390,60 L420,60 L1200,60" className="animate-ecg" />
        </svg>
      </div>

      {/* Subtle Ambient Spotlights */}
      <div className="absolute top-0 right-1/4 w-96 h-96 bg-purple-200/30 rounded-full blur-3xl pointer-events-none -z-10 animate-pulse-subtle" />
      <div className="absolute bottom-10 left-10 w-80 h-80 bg-indigo-100/40 rounded-full blur-2xl pointer-events-none -z-10" />

      <div className="max-w-7xl mx-auto px-4 sm:px-6 lg:px-8 relative z-10 space-y-12">
        <div className="grid grid-cols-1 lg:grid-cols-12 gap-12 lg:gap-8 items-center">
          
          {/* Left Hero Column */}
          <div className="lg:col-span-7 space-y-6 text-left">
            
            {/* Soft Launch Pill */}
            <div className="inline-flex items-center gap-2.5 px-4 py-1.5 rounded-full bg-white border border-purple-200 text-xs font-bold text-slate-800 shadow-xs">
              <span className="relative flex h-2.5 w-2.5">
                <span className="animate-ping absolute inline-flex h-full w-full rounded-full bg-emerald-400 opacity-75"></span>
                <span className="relative inline-flex rounded-full h-2.5 w-2.5 bg-emerald-500"></span>
              </span>
              <span className="text-purple-900 font-extrabold uppercase tracking-wider text-[11px]">Bengaluru Launch</span>
              <span className="text-slate-300">|</span>
              <span className="text-slate-600 font-medium">Healthcare without unnecessary complexity</span>
            </div>

            {/* Main Headline */}
            <h1 className="text-3xl sm:text-5xl lg:text-6xl font-extrabold text-slate-900 tracking-tight leading-[1.12]">
              Your personal health manager,<br />
              <span className="gradient-text-purple">
                for you and your family.
              </span>
            </h1>

            {/* Supporting Copy */}
            <p className="text-base sm:text-lg text-slate-600 font-normal leading-relaxed max-w-xl">
              From diagnostic lab tests to nursing care at home, Health Express coordinates your entire healthcare journey in one connected experience.
            </p>

            {/* CTAs Section */}
            <div className="space-y-4 pt-1">
              <div className="flex flex-col sm:flex-row items-stretch sm:items-center gap-3.5">
                
                {/* Primary CTA: Upload Prescription */}
                <button
                  onClick={onOpenUploadModal}
                  className="group relative px-8 py-4 rounded-2xl bg-purple-700 hover:bg-purple-800 text-white font-extrabold text-sm sm:text-base shadow-lg shadow-purple-700/20 transition-all duration-300 hover:scale-[1.02] active:scale-[0.98] flex items-center justify-center gap-3 cursor-pointer"
                >
                  <Upload className="w-5 h-5 text-purple-200 transition-transform group-hover:scale-110" />
                  <span>Upload Prescription</span>
                  <ArrowRight className="w-4 h-4 text-purple-200 group-hover:translate-x-1 transition-transform" />
                </button>

                {/* Supporting CTA: Chat on WhatsApp */}
                <button
                  onClick={() => openWhatsApp(DEFAULT_MESSAGES.prescription)}
                  className="px-6 py-4 rounded-2xl bg-white hover:bg-purple-50 border-2 border-purple-200 text-purple-950 font-extrabold text-sm sm:text-base shadow-xs transition-all duration-300 hover:scale-[1.02] active:scale-[0.98] flex items-center justify-center gap-2 cursor-pointer"
                >
                  <MessageSquare className="w-4 h-4 text-emerald-600 fill-emerald-600/20" />
                  <span>Chat on WhatsApp</span>
                </button>

              </div>

              {/* Verified Product Trust Badges */}
              <div className="flex flex-wrap items-center gap-y-2 gap-x-5 text-xs font-semibold text-slate-500 pt-1">
                <span className="flex items-center gap-1.5">
                  <CheckCircle2 className="w-4 h-4 text-emerald-600 shrink-0" />
                  <span>No account required</span>
                </span>
                <span className="flex items-center gap-1.5">
                  <Lock className="w-4 h-4 text-purple-600 shrink-0" />
                  <span>Secure submission</span>
                </span>
                <span className="flex items-center gap-1.5">
                  <UserCheck className="w-4 h-4 text-indigo-600 shrink-0" />
                  <span>Care team coordination</span>
                </span>
              </div>
            </div>

            {/* Test Search Experience Bar */}
            <div className="pt-4 max-w-xl space-y-3">
              <form onSubmit={handleSearchSubmit} className="relative flex items-center">
                <Search className="w-5 h-5 text-purple-600 absolute left-4 pointer-events-none" />
                <input
                  type="text"
                  value={heroSearch}
                  onChange={(e) => setHeroSearch(e.target.value)}
                  placeholder="Search for a test or health service (e.g. CBC, HbA1c, Thyroid)..."
                  className="w-full pl-12 pr-32 py-3.5 rounded-2xl bg-white border border-purple-200 text-xs sm:text-sm font-medium text-slate-900 placeholder:text-slate-400 focus:outline-none focus:ring-2 focus:ring-purple-600 shadow-sm"
                />
                <button
                  type="submit"
                  className="absolute right-2 px-4 py-2 rounded-xl bg-purple-700 hover:bg-purple-800 text-white font-bold text-xs shadow-xs transition-all flex items-center gap-1"
                >
                  <span>Find Test</span>
                  <ArrowRight className="w-3.5 h-3.5" />
                </button>
              </form>

              {/* Filter Pills */}
              <div className="flex items-center gap-2 overflow-x-auto pb-1 no-scrollbar text-xs">
                <span className="text-[11px] font-bold text-slate-400 shrink-0">Popular:</span>
                {quickFilterTests.map((item, idx) => (
                  <button
                    key={idx}
                    onClick={() => handleFilterClick(item.query)}
                    className="px-3 py-1 rounded-full bg-white hover:bg-purple-100/70 border border-purple-100 text-slate-700 font-semibold text-[11px] whitespace-nowrap transition-colors cursor-pointer"
                  >
                    {item.label}
                  </button>
                ))}
              </div>
            </div>

          </div>

          {/* Right Hero Visual Card */}
          <div className="lg:col-span-5 flex justify-center">
            <div className="relative w-full max-w-md">
              
              {/* Subtle Ambient Glow */}
              <div className="absolute -inset-3 bg-gradient-to-r from-purple-200 to-indigo-200 rounded-3xl opacity-40 blur-xl"></div>
              
              {/* Main Visual Container */}
              <div className="relative bg-white rounded-3xl overflow-hidden shadow-xl border border-purple-100 space-y-0 group">
                <div className="relative h-64 sm:h-72 w-full overflow-hidden">
                  <img
                    src="/hero_home_care.jpg"
                    alt="Health Express Care Coordinator assisting patient at home"
                    className="w-full h-full object-cover object-center group-hover:scale-105 transition-transform duration-700"
                  />
                  <div className="absolute inset-0 bg-gradient-to-t from-slate-950/80 via-slate-950/20 to-transparent"></div>
                  
                  <div className="absolute bottom-4 left-4 right-4 text-white space-y-1">
                    <span className="text-[10px] font-extrabold uppercase tracking-wider px-3 py-1 rounded-full bg-purple-700 text-white backdrop-blur-md shadow-xs">
                      CONNECTED HEALTHCARE
                    </span>
                    <h3 className="text-base font-extrabold text-white drop-shadow-xs">
                      Care in the comfort of your home.
                    </h3>
                  </div>
                </div>

                {/* Card Action Section */}
                <div className="p-5 bg-white space-y-3 text-left">
                  <div className="flex items-center justify-between text-xs">
                    <span className="font-extrabold text-slate-900 flex items-center gap-1.5">
                      <Activity className="w-4 h-4 text-purple-700" />
                      Family Care Coordination
                    </span>
                    <span className="text-[10px] font-bold px-2.5 py-0.5 rounded-full bg-purple-100 text-purple-800">
                      Guest Friendly
                    </span>
                  </div>

                  <p className="text-xs text-slate-600 leading-relaxed">
                    Upload your prescription or request a service to receive direct care coordination via WhatsApp.
                  </p>

                  <button
                    onClick={onOpenUploadModal}
                    className="w-full py-3 rounded-xl bg-purple-700 hover:bg-purple-800 text-white font-bold text-xs flex items-center justify-center gap-2 transition-all shadow-sm active:scale-95 cursor-pointer"
                  >
                    <Upload className="w-4 h-4 text-white" />
                    <span>Upload Prescription File</span>
                  </button>
                </div>

              </div>

            </div>
          </div>

        </div>
      </div>
    </section>
  );
}
