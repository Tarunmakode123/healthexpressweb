import React from 'react';
import { Upload, MessageSquare, CheckCircle, ShieldCheck, Activity, FlaskConical, Home, Video, HeartPulse } from 'lucide-react';
import { openWhatsApp, DEFAULT_MESSAGES } from '../../utils/whatsapp';

export default function HeroSection({ onOpenUploadModal }) {
  return (
    <section className="relative overflow-hidden bg-gradient-to-b from-purple-50/60 via-slate-50/40 to-white pt-8 pb-16 md:pt-12 md:pb-24">
      
      {/* Background Decorative Glow */}
      <div className="absolute top-0 right-1/4 w-96 h-96 bg-purple-200/40 rounded-full blur-3xl pointer-events-none -z-10" />
      <div className="absolute bottom-10 left-10 w-80 h-80 bg-purple-100/30 rounded-full blur-2xl pointer-events-none -z-10" />

      <div className="max-w-7xl mx-auto px-4 sm:px-6 lg:px-8">
        <div className="grid grid-cols-1 lg:grid-cols-12 gap-12 lg:gap-8 items-center">
          
          {/* Left Hero Content */}
          <div className="lg:col-span-7 space-y-6 text-left">
            
            {/* Eyebrow badge */}
            <div className="inline-flex items-center gap-2 px-3.5 py-1.5 rounded-full bg-purple-100/80 border border-purple-200 text-xs font-bold uppercase tracking-wider text-purple-800">
              <span className="w-2 h-2 rounded-full bg-purple-600 animate-pulse" />
              HEALTHCARE, SIMPLIFIED
            </div>

            {/* Main Headline */}
            <h1 className="text-4xl sm:text-5xl lg:text-6xl font-extrabold text-slate-900 tracking-tight leading-[1.15]">
              Healthcare,<br />
              <span className="bg-gradient-to-r from-purple-700 via-purple-600 to-indigo-700 bg-clip-text text-transparent">
                without the hassle.
              </span>
            </h1>

            {/* Supporting Copy */}
            <p className="text-lg sm:text-xl text-slate-600 font-normal leading-relaxed max-w-xl">
              Send us your prescription or tell us what you need.<br />
              <span className="font-semibold text-slate-800">We'll take care of the rest.</span>
            </p>

            {/* Primary Action Buttons */}
            <div className="flex flex-col sm:flex-row items-stretch sm:items-center gap-4 pt-2">
              
              {/* Button 1: Upload Prescription */}
              <button
                onClick={onOpenUploadModal}
                className="group relative px-7 py-4 rounded-2xl bg-purple-700 hover:bg-purple-800 text-white font-bold text-base shadow-xl shadow-purple-700/25 transition-all duration-200 hover:scale-[1.02] active:scale-[0.98] flex items-center justify-center gap-3"
              >
                <Upload className="w-5 h-5 transition-transform group-hover:-translate-y-0.5" />
                <span>Upload Prescription</span>
              </button>

              {/* Button 2: Chat on WhatsApp */}
              <button
                onClick={() => openWhatsApp(DEFAULT_MESSAGES.prescription)}
                className="px-7 py-4 rounded-2xl bg-emerald-50 hover:bg-emerald-100 border-2 border-emerald-500/30 text-emerald-800 font-bold text-base shadow-sm transition-all duration-200 hover:scale-[1.02] active:scale-[0.98] flex items-center justify-center gap-3"
              >
                <MessageSquare className="w-5 h-5 text-emerald-600 fill-emerald-600/20" />
                <span>Chat with us on WhatsApp</span>
              </button>

            </div>

            {/* Subtext */}
            <div className="flex items-center gap-2 text-xs font-semibold text-slate-500 pt-1">
              <CheckCircle className="w-4 h-4 text-purple-600 shrink-0" />
              <span>One simple step. We take care of the rest.</span>
            </div>

            {/* Feature Pills */}
            <div className="pt-8 border-t border-slate-200/60 grid grid-cols-2 sm:grid-cols-4 gap-3">
              <div className="flex items-center gap-2 px-3 py-2 rounded-xl bg-white border border-slate-100 shadow-xs text-xs font-semibold text-slate-700">
                <FlaskConical className="w-4 h-4 text-purple-600" />
                <span>Diagnostics</span>
              </div>
              <div className="flex items-center gap-2 px-3 py-2 rounded-xl bg-white border border-slate-100 shadow-xs text-xs font-semibold text-slate-700">
                <Home className="w-4 h-4 text-purple-600" />
                <span>Home Healthcare</span>
              </div>
              <div className="flex items-center gap-2 px-3 py-2 rounded-xl bg-white border border-slate-100 shadow-xs text-xs font-semibold text-slate-700">
                <Video className="w-4 h-4 text-purple-600" />
                <span>Telemedicine</span>
              </div>
              <div className="flex items-center gap-2 px-3 py-2 rounded-xl bg-white border border-slate-100 shadow-xs text-xs font-semibold text-slate-700">
                <HeartPulse className="w-4 h-4 text-purple-600" />
                <span>Preventive Care</span>
              </div>
            </div>

          </div>

          {/* Right Hero Graphic / Mobile Mockup Card */}
          <div className="lg:col-span-5 flex justify-center">
            <div className="relative w-full max-w-md">
              
              {/* Outer Glow Ring */}
              <div className="absolute -inset-4 bg-gradient-to-r from-purple-400 to-indigo-500 rounded-3xl opacity-20 blur-xl"></div>
              
              {/* Main Smartphone / Healthcare Card Frame */}
              <div className="relative bg-white rounded-3xl p-6 shadow-2xl border border-purple-100 space-y-5">
                
                {/* Smartphone Header / Status */}
                <div className="flex items-center justify-between pb-3 border-b border-slate-100">
                  <div className="flex items-center gap-2">
                    <div className="w-7 h-7 rounded-lg bg-purple-700 text-white flex items-center justify-center">
                      <Activity className="w-4 h-4" />
                    </div>
                    <span className="text-sm font-bold text-slate-900">Health Express</span>
                  </div>
                  <span className="text-[10px] font-extrabold uppercase px-2.5 py-1 rounded-full bg-emerald-100 text-emerald-800">
                    Live Assistant
                  </span>
                </div>

                {/* Patient Journey Card */}
                <div className="bg-purple-50/80 rounded-2xl p-5 border border-purple-100 space-y-3">
                  <div className="text-xs font-extrabold text-purple-900 uppercase tracking-wider">
                    Your Health. Our Priority.
                  </div>
                  
                  <div className="space-y-2.5 pt-1">
                    <div className="flex items-center gap-3 bg-white p-3 rounded-xl shadow-xs border border-purple-100/60">
                      <div className="w-7 h-7 rounded-full bg-purple-100 text-purple-700 flex items-center justify-center font-bold text-xs">
                        1
                      </div>
                      <div>
                        <div className="text-xs font-bold text-slate-900">Upload Prescription</div>
                        <div className="text-[11px] text-slate-500">Send photo or medical requirement</div>
                      </div>
                      <CheckCircle className="w-4 h-4 text-emerald-500 ml-auto" />
                    </div>

                    <div className="flex items-center gap-3 bg-white p-3 rounded-xl shadow-xs border border-purple-100/60">
                      <div className="w-7 h-7 rounded-full bg-purple-100 text-purple-700 flex items-center justify-center font-bold text-xs">
                        2
                      </div>
                      <div>
                        <div className="text-xs font-bold text-slate-900">We Coordinate</div>
                        <div className="text-[11px] text-slate-500">Staff finds best partners & price</div>
                      </div>
                      <CheckCircle className="w-4 h-4 text-emerald-500 ml-auto" />
                    </div>

                    <div className="flex items-center gap-3 bg-white p-3 rounded-xl shadow-xs border border-purple-100/60">
                      <div className="w-7 h-7 rounded-full bg-purple-100 text-purple-700 flex items-center justify-center font-bold text-xs">
                        3
                      </div>
                      <div>
                        <div className="text-xs font-bold text-slate-900">You Get Care</div>
                        <div className="text-[11px] text-slate-500">Reports, home collection or consult</div>
                      </div>
                      <CheckCircle className="w-4 h-4 text-emerald-500 ml-auto" />
                    </div>
                  </div>
                </div>

                {/* Direct Action trigger inside card */}
                <button
                  onClick={() => openWhatsApp(DEFAULT_MESSAGES.prescription)}
                  className="w-full py-3 px-4 rounded-xl bg-slate-900 hover:bg-purple-950 text-white font-bold text-xs flex items-center justify-center gap-2 transition-colors shadow-md"
                >
                  <MessageSquare className="w-4 h-4 text-emerald-400 fill-current" />
                  <span>Send Requirement on WhatsApp</span>
                </button>

                {/* Trust Badge */}
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
