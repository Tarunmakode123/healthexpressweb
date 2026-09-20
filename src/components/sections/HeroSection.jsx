import React from 'react';
import { Link } from 'react-router-dom';
import { Upload, CheckCircle, Activity, ShieldCheck, FlaskConical, Home, HeartHandshake, MessageSquare, ArrowRight } from 'lucide-react';
import { openWhatsApp, DEFAULT_MESSAGES } from '../../utils/whatsapp';

export default function HeroSection({ onOpenUploadModal }) {
  return (
    <section className="relative overflow-hidden bg-gradient-to-b from-purple-50/70 via-slate-50/40 to-white pt-8 pb-16 md:pt-14 md:pb-24">
      
      {/* Background Decorative Glow */}
      <div className="absolute top-0 right-1/4 w-96 h-96 bg-purple-200/40 rounded-full blur-3xl pointer-events-none -z-10" />
      <div className="absolute bottom-10 left-10 w-80 h-80 bg-purple-100/30 rounded-full blur-2xl pointer-events-none -z-10" />

      <div className="max-w-7xl mx-auto px-4 sm:px-6 lg:px-8">
        <div className="grid grid-cols-1 lg:grid-cols-12 gap-12 lg:gap-8 items-center">
          
          {/* Left Hero Content */}
          <div className="lg:col-span-7 space-y-6 text-left">
            
            {/* Eyebrow badge */}
            <div className="inline-flex items-center gap-2 px-3.5 py-1.5 rounded-full bg-purple-100/80 border border-purple-200 text-xs font-extrabold uppercase tracking-wider text-purple-900 shadow-xs">
              <span className="w-2 h-2 rounded-full bg-emerald-500 animate-pulse"></span>
              <span>HEALTH EXPRESS — BENGALURU SOFT LAUNCH</span>
            </div>

            {/* Main H1 */}
            <h1 className="text-3xl sm:text-5xl lg:text-6xl font-extrabold text-slate-900 tracking-tight leading-[1.12]">
              Your personal health manager,<br />
              <span className="bg-gradient-to-r from-purple-700 via-purple-600 to-indigo-700 bg-clip-text text-transparent">
                for you and your family.
              </span>
            </h1>

            {/* Supporting Copy */}
            <p className="text-base sm:text-lg text-slate-600 font-normal leading-relaxed max-w-xl">
              From diagnostic tests to care at home, Health Express helps you find, compare and coordinate the right healthcare — all in one place.
            </p>

            {/* Primary & Secondary Action Buttons */}
            <div className="flex flex-col sm:flex-row items-stretch sm:items-center gap-3.5 pt-2">
              
              {/* Primary WhatsApp CTA */}
              <button
                onClick={() => openWhatsApp(DEFAULT_MESSAGES.prescription)}
                className="group relative px-7 py-4 rounded-2xl bg-purple-700 hover:bg-purple-800 text-white font-bold text-sm sm:text-base shadow-xl shadow-purple-700/25 transition-all duration-200 hover:scale-[1.02] active:scale-[0.98] flex items-center justify-center gap-3"
              >
                <MessageSquare className="w-5 h-5 text-emerald-300 fill-emerald-300/20 transition-transform group-hover:scale-110" />
                <span>Send Prescription on WhatsApp</span>
                <ArrowRight className="w-4 h-4 text-purple-200 group-hover:translate-x-0.5 transition-transform" />
              </button>

              {/* Secondary CTA */}
              <Link
                to="/services"
                className="px-6 py-4 rounded-2xl bg-white hover:bg-purple-50 border-2 border-purple-200 text-purple-900 font-bold text-sm sm:text-base shadow-xs transition-all duration-200 hover:scale-[1.02] active:scale-[0.98] flex items-center justify-center gap-2"
              >
                <span>Explore Services</span>
              </Link>

            </div>

            {/* Small trust statement */}
            <div className="flex items-center gap-2 text-xs font-semibold text-slate-600 pt-1">
              <CheckCircle className="w-4 h-4 text-purple-600 shrink-0" />
              <span>One place to coordinate your family's healthcare. Fast response on WhatsApp.</span>
            </div>

            {/* Service Strip: Diagnostics & Home Nursing */}
            <div className="pt-6 border-t border-slate-200/60 grid grid-cols-1 sm:grid-cols-2 gap-3 max-w-xl">
              <div className="flex items-center gap-3 p-3 rounded-2xl bg-white border border-purple-100 shadow-xs">
                <div className="w-9 h-9 rounded-xl bg-purple-100 text-purple-700 flex items-center justify-center shrink-0">
                  <FlaskConical className="w-5 h-5" />
                </div>
                <div>
                  <div className="text-xs font-bold text-slate-900">Diagnostics & Preventive Health</div>
                  <div className="text-[11px] text-slate-500">Trusted labs · Home sample collection</div>
                </div>
              </div>

              <div className="flex items-center gap-3 p-3 rounded-2xl bg-white border border-purple-100 shadow-xs">
                <div className="w-9 h-9 rounded-xl bg-purple-100 text-purple-700 flex items-center justify-center shrink-0">
                  <Home className="w-5 h-5" />
                </div>
                <div>
                  <div className="text-xs font-bold text-slate-900">Home Healthcare Nursing</div>
                  <div className="text-[11px] text-slate-500">Professional care · At home</div>
                </div>
              </div>
            </div>

          </div>

          {/* Right Hero Visual Card with High-End Healthcare Editorial Image */}
          <div className="lg:col-span-5 flex justify-center">
            <div className="relative w-full max-w-md">
              
              {/* Floating Glass Badges */}
              <div className="hidden sm:flex absolute -top-5 -left-6 z-20 glass-card px-4 py-2.5 rounded-2xl shadow-xl border border-purple-200/80 items-center gap-2.5 animate-float">
                <div className="w-7 h-7 rounded-full bg-emerald-100 text-emerald-700 flex items-center justify-center font-bold text-xs shadow-xs">
                  ✓
                </div>
                <div>
                  <div className="text-xs font-bold text-slate-900">Prescription Verified</div>
                  <div className="text-[10px] text-slate-500">Partner Lab Assigned</div>
                </div>
              </div>

              <div className="hidden sm:flex absolute -bottom-5 -right-4 z-20 glass-card px-4 py-2.5 rounded-2xl shadow-xl border border-purple-200/80 items-center gap-2.5 animate-float-delayed">
                <div className="w-7 h-7 rounded-full bg-purple-100 text-purple-700 flex items-center justify-center font-bold text-xs shadow-xs">
                  👩‍⚕️
                </div>
                <div>
                  <div className="text-xs font-bold text-slate-900">Care Manager</div>
                  <div className="text-[10px] text-purple-700 font-semibold">Active & Assisting</div>
                </div>
              </div>

              <div className="absolute -inset-4 bg-gradient-to-r from-purple-400 to-indigo-500 rounded-3xl opacity-20 blur-xl"></div>
              
              {/* Hero Image Container */}
              <div className="relative bg-white rounded-3xl overflow-hidden shadow-2xl border border-purple-100 space-y-0 group">
                <div className="relative h-64 sm:h-72 w-full overflow-hidden">
                  <img
                    src="/hero_home_care.jpg"
                    alt="Health Express Care Manager assisting patient at home"
                    className="w-full h-full object-cover object-center group-hover:scale-105 transition-transform duration-500"
                  />
                  <div className="absolute inset-0 bg-gradient-to-t from-slate-950/80 via-slate-950/20 to-transparent"></div>
                  
                  <div className="absolute bottom-4 left-4 right-4 text-white">
                    <span className="text-[10px] font-extrabold uppercase px-2.5 py-1 rounded-full bg-purple-600/90 text-white backdrop-blur-md">
                      Professional Home Care
                    </span>
                    <h3 className="text-sm font-bold text-white mt-1.5 drop-shadow-sm">
                      Care in the comfort of your home.
                    </h3>
                  </div>
                </div>

                <div className="p-5 bg-white space-y-3">
                  <div className="flex items-center justify-between text-xs">
                    <span className="font-bold text-slate-900 flex items-center gap-1.5">
                      <Activity className="w-4 h-4 text-purple-700" />
                      Family Care Coordination
                    </span>
                    <span className="text-[10px] font-extrabold uppercase px-2.5 py-0.5 rounded-full bg-emerald-100 text-emerald-800">
                      Active
                    </span>
                  </div>

                  <p className="text-[11px] text-slate-500 leading-relaxed">
                    Upload your prescription or requirement and connect directly with a dedicated care manager on WhatsApp.
                  </p>

                  <button
                    onClick={onOpenUploadModal}
                    className="w-full py-2.5 rounded-xl bg-purple-50 hover:bg-purple-100 border border-purple-200 text-purple-900 font-bold text-xs flex items-center justify-center gap-1.5 transition-colors"
                  >
                    <Upload className="w-3.5 h-3.5 text-purple-700" />
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
