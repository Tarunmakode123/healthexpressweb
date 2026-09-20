import React from 'react';
import { FolderHeart, FileText, ArrowRight, ShieldCheck } from 'lucide-react';
import { openWhatsApp, DEFAULT_MESSAGES } from '../../utils/whatsapp';

export default function HealthRecordsSection() {
  return (
    <section className="py-16 md:py-24 bg-white">
      <div className="max-w-7xl mx-auto px-4 sm:px-6 lg:px-8">
        <div className="bg-purple-50/50 rounded-3xl p-8 sm:p-12 border border-purple-100 flex flex-col md:flex-row items-center justify-between gap-8">
          
          <div className="space-y-4 text-left max-w-2xl">
            <div className="text-xs font-extrabold uppercase tracking-wider text-purple-800">
              HEALTH RECORDS & REPORTS
            </div>
            <h2 className="text-3xl sm:text-4xl font-extrabold text-slate-900 tracking-tight">
              Your family's health, in one place.
            </h2>
            <p className="text-sm sm:text-base text-slate-600 leading-relaxed">
              Keep prescriptions, reports and healthcare information organized across your family's profiles. Your healthcare history shouldn't be scattered across WhatsApp chats, email attachments and paper reports.
            </p>

            <div className="flex items-center gap-2 text-xs font-semibold text-purple-900">
              <ShieldCheck className="w-4 h-4 text-purple-700" />
              <span>Roadmap Feature — Digital report storage & family profile management</span>
            </div>
          </div>

          <div className="shrink-0 w-full sm:w-auto">
            <button
              onClick={() => openWhatsApp("Hello Health Express, I would like to manage health records or inquire about family profiles.")}
              className="w-full sm:w-auto px-7 py-4 rounded-2xl bg-purple-700 hover:bg-purple-800 text-white font-bold text-xs sm:text-sm flex items-center justify-center gap-2 shadow-md transition-all hover:scale-105"
            >
              <span>View Health Records</span>
              <ArrowRight className="w-4 h-4" />
            </button>
          </div>

        </div>
      </div>
    </section>
  );
}
