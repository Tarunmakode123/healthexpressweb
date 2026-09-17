import React from 'react';
import { Building2, ShieldCheck, TrendingUp, Handshake, MessageSquare } from 'lucide-react';
import { openWhatsApp, DEFAULT_MESSAGES } from '../utils/whatsapp';

export default function ProvidersPage() {
  return (
    <div className="py-12 md:py-20 bg-slate-50/40">
      <div className="max-w-7xl mx-auto px-4 sm:px-6 lg:px-8 space-y-12">
        
        {/* Header */}
        <div className="text-center max-w-3xl mx-auto space-y-4">
          <div className="inline-block px-3.5 py-1 rounded-full bg-purple-100 text-purple-800 text-xs font-bold uppercase tracking-wider">
            Healthcare Network Partnerships
          </div>
          <h1 className="text-3xl sm:text-5xl font-extrabold text-slate-900 tracking-tight">
            Partner with Health Express
          </h1>
          <p className="text-base sm:text-lg text-slate-600">
            Expand your diagnostic lab or healthcare facility's reach. Join our verified provider ecosystem and deliver patient care seamlessly.
          </p>
        </div>

        {/* Benefits Grid */}
        <div className="grid grid-cols-1 md:grid-cols-3 gap-8">
          <div className="bg-white p-8 rounded-3xl border border-purple-100 shadow-xs space-y-3">
            <div className="w-10 h-10 rounded-xl bg-purple-100 text-purple-700 flex items-center justify-center">
              <TrendingUp className="w-5 h-5" />
            </div>
            <h3 className="text-xl font-bold text-slate-900">Increased Patient Volume</h3>
            <p className="text-xs text-slate-600 leading-relaxed">
              Connect directly with patients looking for diagnostic tests, imaging, and home healthcare services.
            </p>
          </div>

          <div className="bg-white p-8 rounded-3xl border border-purple-100 shadow-xs space-y-3">
            <div className="w-10 h-10 rounded-xl bg-purple-100 text-purple-700 flex items-center justify-center">
              <Handshake className="w-5 h-5" />
            </div>
            <h3 className="text-xl font-bold text-slate-900">Seamless Coordination</h3>
            <p className="text-xs text-slate-600 leading-relaxed">
              Our dedicated staff manages initial patient inquiry, prescription validation, and appointment scheduling.
            </p>
          </div>

          <div className="bg-white p-8 rounded-3xl border border-purple-100 shadow-xs space-y-3">
            <div className="w-10 h-10 rounded-xl bg-purple-100 text-purple-700 flex items-center justify-center">
              <ShieldCheck className="w-5 h-5" />
            </div>
            <h3 className="text-xl font-bold text-slate-900">Quality & Trust</h3>
            <p className="text-xs text-slate-600 leading-relaxed">
              Showcase your accreditations and build patient trust through verified Health Express listings.
            </p>
          </div>
        </div>

        {/* Provider Contact Banner */}
        <div className="bg-white p-8 md:p-12 rounded-3xl border border-purple-200 shadow-sm text-center space-y-4 max-w-2xl mx-auto">
          <Building2 className="w-10 h-10 text-purple-700 mx-auto" />
          <h3 className="text-2xl font-bold text-slate-900">Interested in Partnering?</h3>
          <p className="text-xs sm:text-sm text-slate-600">
            Reach out to our Provider Relations Team via WhatsApp or email to discuss onboarding details.
          </p>
          <div className="pt-2">
            <button
              onClick={() => openWhatsApp(DEFAULT_MESSAGES.provider)}
              className="px-6 py-3.5 rounded-2xl bg-emerald-600 hover:bg-emerald-700 text-white font-bold text-xs inline-flex items-center gap-2 shadow-sm transition-all hover:scale-105"
            >
              <MessageSquare className="w-4 h-4" />
              <span>Connect with Provider Relations</span>
            </button>
          </div>
        </div>

      </div>
    </div>
  );
}
