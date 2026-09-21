import React from 'react';
import { Link } from 'react-router-dom';
import { Upload, CheckCircle, Activity, ShieldCheck, FlaskConical, Home, HeartHandshake, MessageSquare, ArrowRight } from 'lucide-react';
import { openWhatsApp, DEFAULT_MESSAGES } from '../../utils/whatsapp';

export default function HeroSection({ onOpenUploadModal }) {
  return (
    <section className="relative overflow-hidden bg-gradient-to-b from-purple-50/70 via-slate-50/40 to-white pt-8 pb-16 md:pt-14 md:pb-24">
      
      {/* Background ECG Heartbeat Waveform Accent */}
      <div className="absolute top-1/3 left-0 right-0 h-48 opacity-15 pointer-events-none -z-10 flex items-center justify-center">
        <svg viewBox="0 0 1200 120" className="w-full h-full text-purple-600 fill-none stroke-current stroke-[2.5] stroke-linecap-round stroke-linejoin-round">
          <path d="M0,60 L250,60 L280,30 L300,90 L320,10 L340,110 L360,60 L390,60 L420,60 L1200,60" className="animate-ecg" />
        </svg>
      </div>

      {/* Background Decorative Glow Orbs */}
      <div className="absolute top-0 right-1/4 w-96 h-96 bg-purple-300/30 rounded-full blur-3xl pointer-events-none -z-10 animate-pulse-glow" />
      <div className="absolute bottom-10 left-10 w-80 h-80 bg-indigo-200/30 rounded-full blur-2xl pointer-events-none -z-10" />

      <div className="max-w-7xl mx-auto px-4 sm:px-6 lg:px-8 relative z-10">
        <div className="grid grid-cols-1 lg:grid-cols-12 gap-12 lg:gap-8 items-center">
          
          {/* Left Hero Content */}
          <div className="lg:col-span-7 space-y-6 text-left">
            
            {/* Live Clinical Availability Pill */}
            <div className="inline-flex items-center gap-2 px-4 py-1.5 rounded-full bg-white/90 border border-purple-200 text-xs font-extrabold text-slate-800 shadow-xs backdrop-blur-md">
              <span className="relative flex h-2.5 w-2.5">
                <span className="animate-ping absolute inline-flex h-full w-full rounded-full bg-emerald-400 opacity-75"></span>
                <span className="relative inline-flex rounded-full h-2.5 w-2.5 bg-emerald-500"></span>
              </span>
              <span className="text-purple-900 font-extrabold uppercase tracking-wider text-[11px]">⚡ 30-MIN HOME SAMPLE COLLECTION</span>
              <span className="text-slate-300">|</span>
              <span className="text-emerald-700 font-bold">100% Cold-Chain Monitored</span>
            </div>

            {/* Main H1 */}
            <h1 className="text-3xl sm:text-5xl lg:text-6xl font-extrabold text-slate-900 tracking-tight leading-[1.12]">
              Your personal health manager,<br />
              <span className="gradient-text-purple">
                for you and your family.
              </span>
            </h1>

            {/* Supporting Copy */}
            <p className="text-base sm:text-lg text-slate-600 font-normal leading-relaxed max-w-xl">
              From NABL-accredited diagnostic blood tests to certified nursing care at home, Health Express coordinates your entire healthcare journey in one connected experience.
            </p>

            {/* Primary & Secondary Action Buttons */}
            <div className="flex flex-col sm:flex-row items-stretch sm:items-center gap-3.5 pt-2">
              
              {/* Single Clear Primary CTA: 3-Step Upload Prescription Modal */}
              <button
                onClick={onOpenUploadModal}
                className="group relative px-8 py-4 rounded-2xl bg-purple-700 hover:bg-purple-800 text-white font-extrabold text-sm sm:text-base shadow-xl shadow-purple-700/25 transition-all duration-300 hover:scale-[1.02] active:scale-[0.98] flex items-center justify-center gap-3"
              >
                <Upload className="w-5 h-5 text-purple-200 transition-transform group-hover:scale-110" />
                <span>Upload Prescription</span>
                <ArrowRight className="w-4 h-4 text-purple-200 group-hover:translate-x-1 transition-transform" />
              </button>

              {/* Distinct Secondary Action: Explore Lab Packages */}
              <a
                href="#tests"
                className="px-6 py-4 rounded-2xl bg-white hover:bg-purple-50 border-2 border-purple-200 text-purple-900 font-extrabold text-sm sm:text-base shadow-xs transition-all duration-300 hover:scale-[1.02] active:scale-[0.98] flex items-center justify-center gap-2"
              >
                <FlaskConical className="w-4 h-4 text-purple-700" />
                <span>Explore Lab Packages</span>
              </a>

            </div>

            {/* Clinical Trust Statement */}
            <div className="flex items-center gap-2 text-xs font-semibold text-slate-600 pt-1">
              <CheckCircle className="w-4 h-4 text-purple-600 shrink-0" />
              <span>NABL Accredited Partner Labs • 100% Cold-Chain Sample Transport</span>
            </div>

            {/* Service Strip: Diagnostics & Home Nursing */}
            <div className="pt-6 border-t border-slate-200/60 grid grid-cols-1 sm:grid-cols-2 gap-3 max-w-xl">
              <div className="flex items-center gap-3 p-3.5 rounded-2xl bg-white/90 backdrop-blur-md border border-purple-100 shadow-xs hover-glow group cursor-pointer" onClick={onOpenUploadModal}>
                <div className="w-10 h-10 rounded-xl bg-purple-700 text-white flex items-center justify-center shrink-0 group-hover:scale-110 transition-transform">
                  <FlaskConical className="w-5 h-5" />
                </div>
                <div>
                  <div className="text-xs font-bold text-slate-900 group-hover:text-purple-900 transition-colors">Diagnostics & Pathology</div>
                  <div className="text-[11px] text-slate-500">NABL Labs · Home Sample Collection</div>
                </div>
              </div>

              <div className="flex items-center gap-3 p-3.5 rounded-2xl bg-white/90 backdrop-blur-md border border-purple-100 shadow-xs hover-glow group cursor-pointer" onClick={() => openWhatsApp(DEFAULT_MESSAGES.service("Home Nursing"))}>
                <div className="w-10 h-10 rounded-xl bg-purple-700 text-white flex items-center justify-center shrink-0 group-hover:scale-110 transition-transform">
                  <Home className="w-5 h-5" />
                </div>
                <div>
                  <div className="text-xs font-bold text-slate-900 group-hover:text-purple-900 transition-colors">Home Healthcare Nursing</div>
                  <div className="text-[11px] text-slate-500">Certified Nurses · Post-Op Care</div>
                </div>
              </div>
            </div>

          </div>

          {/* Right Hero Visual Card with High-End Healthcare Editorial Image */}
          <div className="lg:col-span-5 flex justify-center">
            <div className="relative w-full max-w-md">
              
              {/* Floating Glass Badges */}
              <div className="hidden sm:flex absolute -top-5 -left-6 z-20 glass-card px-4 py-2.5 rounded-2xl shadow-xl border border-purple-200/80 items-center gap-2.5 animate-float">
                <div className="w-7 h-7 rounded-full bg-emerald-500 text-white flex items-center justify-center font-bold text-xs shadow-xs">
                  ✓
                </div>
                <div>
                  <div className="text-xs font-extrabold text-slate-900">Prescription Verified</div>
                  <div className="text-[10px] text-purple-700 font-semibold">NABL Partner Lab Assigned</div>
                </div>
              </div>

              <div className="hidden sm:flex absolute -bottom-5 -right-4 z-20 glass-card px-4 py-2.5 rounded-2xl shadow-xl border border-purple-200/80 items-center gap-2.5 animate-float-delayed">
                <div className="w-7 h-7 rounded-full bg-purple-700 text-white flex items-center justify-center font-bold text-xs shadow-xs">
                  👩‍⚕️
                </div>
                <div>
                  <div className="text-xs font-extrabold text-slate-900">Care Manager</div>
                  <div className="text-[10px] text-emerald-700 font-bold">Live & Assisting</div>
                </div>
              </div>

              <div className="absolute -inset-4 bg-gradient-to-r from-purple-500 to-indigo-600 rounded-3xl opacity-20 blur-xl"></div>
              
              {/* Hero Image Container */}
              <div className="relative bg-white rounded-3xl overflow-hidden shadow-2xl border-4 border-white space-y-0 group">
                <div className="relative h-64 sm:h-72 w-full overflow-hidden">
                  <img
                    src="/hero_home_care.jpg"
                    alt="Health Express Care Manager assisting patient at home"
                    className="w-full h-full object-cover object-center group-hover:scale-105 transition-transform duration-700"
                  />
                  <div className="absolute inset-0 bg-gradient-to-t from-slate-950/85 via-slate-950/30 to-transparent"></div>
                  
                  <div className="absolute bottom-4 left-4 right-4 text-white">
                    <span className="text-[10px] font-black uppercase px-3 py-1 rounded-full bg-purple-700 text-white backdrop-blur-md shadow-inner">
                      Professional Home Care
                    </span>
                    <h3 className="text-sm font-extrabold text-white mt-2 drop-shadow-sm">
                      Care in the comfort of your home.
                    </h3>
                  </div>
                </div>

                {/* Streamlined Live Clinical Telemetry Showcase (Replaced redundant upload card) */}
                <div className="p-5 bg-white space-y-3.5">
                  <div className="flex items-center justify-between text-xs border-b border-slate-100 pb-2.5">
                    <span className="font-extrabold text-slate-900 flex items-center gap-1.5">
                      <Activity className="w-4 h-4 text-purple-700" />
                      Live Care Telemetry
                    </span>
                    <span className="text-[10px] font-black uppercase px-2.5 py-0.5 rounded-full bg-emerald-100 text-emerald-800 border border-emerald-200">
                      Active Coverage
                    </span>
                  </div>

                  <div className="grid grid-cols-2 gap-2 text-left">
                    <div className="p-2.5 rounded-xl bg-purple-50/60 border border-purple-100 space-y-0.5">
                      <div className="text-[10px] font-bold text-slate-500">Sample Pickup</div>
                      <div className="text-xs font-extrabold text-purple-900">30-Min Arrival</div>
                    </div>
                    <div className="p-2.5 rounded-xl bg-emerald-50/60 border border-emerald-100 space-y-0.5">
                      <div className="text-[10px] font-bold text-slate-500">Lab Reports</div>
                      <div className="text-xs font-extrabold text-emerald-900">Same Day Result</div>
                    </div>
                  </div>

                  <a
                    href="#services"
                    className="w-full py-3 rounded-xl bg-slate-900 hover:bg-purple-900 text-white font-extrabold text-xs flex items-center justify-center gap-2 transition-all shadow-md active:scale-95"
                  >
                    <span>View All Healthcare Services</span>
                    <ArrowRight className="w-4 h-4 text-purple-300" />
                  </a>
                </div>

              </div>

            </div>
          </div>

        </div>
      </div>
    </section>
  );
}
