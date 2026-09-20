import React from 'react';
import { Users, HeartHandshake, ShieldCheck, ArrowRight } from 'lucide-react';
import { openWhatsApp, DEFAULT_MESSAGES } from '../../utils/whatsapp';

export default function FamilySection({ onOpenUploadModal }) {
  return (
    <section className="py-16 md:py-24 bg-purple-50/40 border-y border-purple-100/60">
      <div className="max-w-7xl mx-auto px-4 sm:px-6 lg:px-8">
        <div className="grid grid-cols-1 lg:grid-cols-12 gap-12 items-center">
          
          <div className="lg:col-span-7 space-y-6 text-left">
            <div className="text-xs font-extrabold uppercase tracking-wider text-purple-800">
              FOR YOUR FAMILY
            </div>

            <h2 className="text-3xl sm:text-4xl font-extrabold text-slate-900 tracking-tight leading-tight">
              One health manager<br className="hidden sm:inline" />
              <span className="text-purple-700"> for the whole family.</span>
            </h2>

            <p className="text-base sm:text-lg text-slate-600 leading-relaxed max-w-xl">
              Manage healthcare needs across your household — from a diagnostic test for yourself to home nursing for a parent.
            </p>

            {/* Feature Pills */}
            <div className="flex flex-wrap gap-2.5 pt-1">
              <span className="px-3.5 py-1.5 rounded-full bg-white border border-purple-200 text-xs font-bold text-purple-900 shadow-xs">
                Family profiles
              </span>
              <span className="px-3.5 py-1.5 rounded-full bg-white border border-purple-200 text-xs font-bold text-purple-900 shadow-xs">
                Service coordination
              </span>
              <span className="px-3.5 py-1.5 rounded-full bg-white border border-purple-200 text-xs font-bold text-purple-900 shadow-xs">
                Health records
              </span>
            </div>

            <div className="pt-2">
              <button
                onClick={() => openWhatsApp(DEFAULT_MESSAGES.general)}
                className="inline-flex items-center gap-2.5 px-7 py-4 rounded-2xl bg-purple-700 hover:bg-purple-800 text-white font-bold text-sm shadow-md shadow-purple-700/20 transition-all hover:scale-[1.02]"
              >
                <span>Manage Family Healthcare</span>
                <ArrowRight className="w-4 h-4" />
              </button>
            </div>
          </div>

          <div className="lg:col-span-5 flex justify-center">
            <div className="bg-white rounded-3xl p-7 border border-purple-100 shadow-xl space-y-5 max-w-md w-full">
              <div className="w-12 h-12 rounded-2xl bg-purple-100 text-purple-700 flex items-center justify-center">
                <Users className="w-6 h-6" />
              </div>
              <div>
                <h3 className="text-xl font-bold text-slate-900">Care Across Generations</h3>
                <p className="text-xs text-slate-600 mt-1 leading-relaxed">
                  Easily coordinate doctor visits, home sample collections, and recovery nursing for parents, partners, and children.
                </p>
              </div>

              <div className="p-4 bg-slate-50 rounded-2xl space-y-2 border border-slate-100 text-xs text-slate-700">
                <div className="flex items-center gap-2 font-bold text-slate-900">
                  <HeartHandshake className="w-4 h-4 text-purple-600" />
                  <span>Personal Care Manager Assistance</span>
                </div>
                <p className="text-[11px] text-slate-500">
                  Our staff stays in touch to update you on report timings, nursing schedules, and appointment follow-ups.
                </p>
              </div>
            </div>
          </div>

        </div>
      </div>
    </section>
  );
}
