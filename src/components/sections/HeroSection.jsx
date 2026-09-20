import React from 'react';
import { Link } from 'react-router-dom';
import { Upload, CheckCircle, Activity, ShieldCheck, FlaskConical, Home, HeartHandshake } from 'lucide-react';
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
            <div className="inline-flex items-center gap-2 px-3.5 py-1.5 rounded-full bg-purple-100/80 border border-purple-200 text-xs font-bold uppercase tracking-wider text-purple-800">
              HEALTH EXPRESS
            </div>

            {/* Main H1 */}
            <h1 className="text-3xl sm:text-5xl lg:text-6xl font-extrabold text-slate-900 tracking-tight leading-[1.15]">
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
            <div className="flex flex-col sm:flex-row items-stretch sm:items-center gap-4 pt-2">
              
              {/* Primary CTA */}
              <button
                onClick={onOpenUploadModal}
                className="group relative px-7 py-4 rounded-2xl bg-purple-700 hover:bg-purple-800 text-white font-bold text-sm sm:text-base shadow-xl shadow-purple-700/25 transition-all duration-200 hover:scale-[1.02] active:scale-[0.98] flex items-center justify-center gap-3"
              >
                <Upload className="w-5 h-5 transition-transform group-hover:-translate-y-0.5" />
                <span>Upload Prescription / Medical Order</span>
              </button>

              {/* Secondary CTA */}
              <Link
                to="/services"
                className="px-7 py-4 rounded-2xl bg-white hover:bg-purple-50 border-2 border-purple-200 text-purple-900 font-bold text-sm sm:text-base shadow-xs transition-all duration-200 hover:scale-[1.02] active:scale-[0.98] flex items-center justify-center gap-2"
              >
                <span>Explore Services</span>
              </Link>

            </div>

            {/* Small trust statement */}
            <div className="flex items-center gap-2 text-xs font-semibold text-slate-600 pt-1">
              <CheckCircle className="w-4 h-4 text-purple-600 shrink-0" />
              <span>One place to coordinate your family's healthcare.</span>
            </div>

            {/* Service Strip: Only Diagnostics & Home Nursing */}
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
                  <div className="text-xs font-bold text-slate-900">Home Nursing</div>
                  <div className="text-[11px] text-slate-500">Professional care · At home</div>
                </div>
              </div>
            </div>

          </div>

          {/* Right Hero Visual Card */}
          <div className="lg:col-span-5 flex justify-center">
            <div className="relative w-full max-w-md">
              {/* Floating Glass Badges */}
              <div className="hidden sm:flex absolute -top-5 -left-6 z-20 glass-card px-4 py-2.5 rounded-2xl shadow-lg border border-purple-200/80 items-center gap-2.5 animate-float">
                <div className="w-7 h-7 rounded-full bg-emerald-100 text-emerald-700 flex items-center justify-center font-bold text-xs">
                  ✓
                </div>
                <div>
                  <div className="text-xs font-bold text-slate-900">Prescription Verified</div>
                  <div className="text-[10px] text-slate-500">Partner Lab Assigned</div>
                </div>
              </div>

              <div className="hidden sm:flex absolute -bottom-5 -right-4 z-20 glass-card px-4 py-2.5 rounded-2xl shadow-lg border border-purple-200/80 items-center gap-2.5 animate-float-delayed">
                <div className="w-7 h-7 rounded-full bg-purple-100 text-purple-700 flex items-center justify-center font-bold text-xs">
                  👩‍⚕️
                </div>
                <div>
                  <div className="text-xs font-bold text-slate-900">Care Manager</div>
                  <div className="text-[10px] text-purple-700 font-semibold">Active & Assisting</div>
                </div>
              </div>

              <div className="absolute -inset-4 bg-gradient-to-r from-purple-400 to-indigo-500 rounded-3xl opacity-20 blur-xl"></div>
              
              <div className="relative bg-white rounded-3xl p-6 shadow-2xl border border-purple-100 space-y-5">
                <div className="flex items-center justify-between pb-3 border-b border-slate-100">
                  <div className="flex items-center gap-2">
                    <div className="w-7 h-7 rounded-lg bg-purple-700 text-white flex items-center justify-center shadow-xs">
                      <Activity className="w-4 h-4" />
                    </div>
                    <span className="text-sm font-bold text-slate-900">Health Express</span>
                  </div>
                  <span className="text-[10px] font-extrabold uppercase px-2.5 py-1 rounded-full bg-emerald-100 text-emerald-800">
                    Family Health Manager
                  </span>
                </div>

                <div className="bg-purple-50/80 rounded-2xl p-5 border border-purple-100 space-y-3">
                  <div className="text-xs font-extrabold text-purple-900 uppercase tracking-wider flex items-center justify-between">
                    <span>One place. Less coordination.</span>
                    <span className="w-2 h-2 rounded-full bg-emerald-500 animate-ping"></span>
                  </div>
                  
                  <div className="space-y-2.5 pt-1">
                    <div className="flex items-center gap-3 bg-white p-3 rounded-xl shadow-xs border border-purple-100/60">
                      <div className="w-7 h-7 rounded-full bg-purple-100 text-purple-700 flex items-center justify-center font-bold text-xs">
                        01
                      </div>
                      <div>
                        <div className="text-xs font-bold text-slate-900">Tell us what you need</div>
                        <div className="text-[11px] text-slate-500">Upload prescription or describe care</div>
                      </div>
                      <CheckCircle className="w-4 h-4 text-emerald-500 ml-auto" />
                    </div>

                    <div className="flex items-center gap-3 bg-white p-3 rounded-xl shadow-xs border border-purple-100/60">
                      <div className="w-7 h-7 rounded-full bg-purple-100 text-purple-700 flex items-center justify-center font-bold text-xs">
                        02
                      </div>
                      <div>
                        <div className="text-xs font-bold text-slate-900">We help coordinate it</div>
                        <div className="text-[11px] text-slate-500">Find options from healthcare partners</div>
                      </div>
                      <CheckCircle className="w-4 h-4 text-emerald-500 ml-auto" />
                    </div>

                    <div className="flex items-center gap-3 bg-white p-3 rounded-xl shadow-xs border border-purple-100/60">
                      <div className="w-7 h-7 rounded-full bg-purple-100 text-purple-700 flex items-center justify-center font-bold text-xs">
                        03
                      </div>
                      <div>
                        <div className="text-xs font-bold text-slate-900">You stay in control</div>
                        <div className="text-[11px] text-slate-500">Choose what works, manage from 1 place</div>
                      </div>
                      <CheckCircle className="w-4 h-4 text-emerald-500 ml-auto" />
                    </div>
                  </div>
                </div>

                {/* Status Callout replacing repetitive WhatsApp button */}
                <div className="p-3.5 rounded-2xl bg-purple-50 border border-purple-100 text-xs font-semibold text-purple-900 flex items-center justify-between">
                  <div className="flex items-center gap-2">
                    <HeartHandshake className="w-4 h-4 text-purple-700" />
                    <span>Personal Care Coordination</span>
                  </div>
                  <span className="px-2.5 py-0.5 rounded-full bg-purple-700 text-white text-[10px] font-bold">
                    Active
                  </span>
                </div>

                <div className="flex items-center justify-center gap-1.5 text-[11px] text-slate-500 pt-1">
                  <ShieldCheck className="w-4 h-4 text-purple-600" />
                  <span>Verified Healthcare Partners & Accredited Labs</span>
                </div>
              </div>

            </div>
          </div>

        </div>
      </div>
    </section>
  );
}
