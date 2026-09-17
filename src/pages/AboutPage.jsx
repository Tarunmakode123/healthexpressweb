import React from 'react';
import { Activity, ShieldCheck, HeartHandshake, Award, Users, CheckCircle } from 'lucide-react';
import { openWhatsApp, DEFAULT_MESSAGES } from '../utils/whatsapp';

export default function AboutPage({ onOpenUploadModal }) {
  return (
    <div className="py-12 md:py-20 bg-white">
      <div className="max-w-7xl mx-auto px-4 sm:px-6 lg:px-8 space-y-16">
        
        {/* Header */}
        <div className="text-center max-w-3xl mx-auto space-y-4">
          <div className="inline-block px-3.5 py-1 rounded-full bg-purple-100 text-purple-800 text-xs font-bold uppercase tracking-wider">
            About Health Express
          </div>
          <h1 className="text-3xl sm:text-5xl font-extrabold text-slate-900 tracking-tight">
            Healthcare, without the hassle.
          </h1>
          <p className="text-base sm:text-lg text-slate-600 leading-relaxed">
            Health Express is built on a simple premise: getting access to healthcare services, diagnostic tests, and medical care should be seamless, transparent, and hassle-free.
          </p>
        </div>

        {/* Vision & Mission Cards */}
        <div className="grid grid-cols-1 md:grid-cols-2 gap-8">
          <div className="bg-purple-50/50 p-8 rounded-3xl border border-purple-100 space-y-4">
            <div className="w-12 h-12 rounded-2xl bg-purple-700 text-white flex items-center justify-center">
              <Activity className="w-6 h-6" />
            </div>
            <h3 className="text-2xl font-bold text-slate-900">Our Vision</h3>
            <p className="text-sm text-slate-600 leading-relaxed">
              To build India’s most trusted healthcare discovery and coordination platform, connecting patients with accredited diagnostic labs, home healthcare professionals, and medical services seamlessly.
            </p>
          </div>

          <div className="bg-purple-50/50 p-8 rounded-3xl border border-purple-100 space-y-4">
            <div className="w-12 h-12 rounded-2xl bg-purple-700 text-white flex items-center justify-center">
              <ShieldCheck className="w-6 h-6" />
            </div>
            <h3 className="text-2xl font-bold text-slate-900">Our Quality Commitment</h3>
            <p className="text-sm text-slate-600 leading-relaxed">
              We work exclusively with NABL-accredited laboratories, verified healthcare personnel, and licensed partner pharmacies to ensure accuracy, safety, and utmost care at every step.
            </p>
          </div>
        </div>

        {/* Value Pillars */}
        <div className="space-y-8">
          <div className="text-center max-w-2xl mx-auto">
            <h2 className="text-2xl sm:text-3xl font-extrabold text-slate-900">
              Why Patients Choose Health Express
            </h2>
          </div>

          <div className="grid grid-cols-1 sm:grid-cols-3 gap-6">
            <div className="p-6 bg-slate-50 rounded-2xl border border-slate-100 text-center space-y-3">
              <Award className="w-8 h-8 text-purple-600 mx-auto" />
              <h4 className="text-base font-bold text-slate-900">Verified Providers</h4>
              <p className="text-xs text-slate-600">Thoroughly vetted diagnostic labs and healthcare partners.</p>
            </div>

            <div className="p-6 bg-slate-50 rounded-2xl border border-slate-100 text-center space-y-3">
              <HeartHandshake className="w-8 h-8 text-purple-600 mx-auto" />
              <h4 className="text-base font-bold text-slate-900">Dedicated Care Staff</h4>
              <p className="text-xs text-slate-600">Personal coordination from request to report delivery.</p>
            </div>

            <div className="p-6 bg-slate-50 rounded-2xl border border-slate-100 text-center space-y-3">
              <Users className="w-8 h-8 text-purple-600 mx-auto" />
              <h4 className="text-base font-bold text-slate-900">Patient Centric</h4>
              <p className="text-xs text-slate-600">Designed around your convenience and medical peace of mind.</p>
            </div>
          </div>
        </div>

        {/* CTA Banner */}
        <div className="bg-purple-900 text-white p-8 md:p-12 rounded-3xl text-center space-y-4">
          <h3 className="text-2xl font-bold">Ready to get started?</h3>
          <p className="text-xs sm:text-sm text-purple-200 max-w-md mx-auto">
            Send us your prescription or requirement and experience hassle-free healthcare coordination.
          </p>
          <div className="pt-2">
            <button
              onClick={onOpenUploadModal}
              className="px-6 py-3 rounded-xl bg-white text-purple-900 font-bold text-xs hover:bg-purple-50 transition-colors"
            >
              Upload Prescription
            </button>
          </div>
        </div>

      </div>
    </div>
  );
}
