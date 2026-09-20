import React from 'react';
import { MapPin, ArrowRight, Bell } from 'lucide-react';
import { openWhatsApp, DEFAULT_MESSAGES } from '../../utils/whatsapp';

export default function CitiesSection() {
  return (
    <section className="py-16 md:py-24 bg-white" id="locations">
      <div className="max-w-7xl mx-auto px-4 sm:px-6 lg:px-8 space-y-10">
        
        {/* Header */}
        <div className="text-center max-w-3xl mx-auto space-y-3">
          <div className="text-xs font-extrabold uppercase tracking-wider text-purple-700">
            SERVICE AVAILABILITY
          </div>
          <h2 className="text-3xl sm:text-4xl font-extrabold text-slate-900 tracking-tight">
            Starting with Bengaluru.
          </h2>
          <p className="text-sm sm:text-base text-slate-600 leading-relaxed">
            Health Express is launching in Bengaluru, initially serving select areas across the city. We’re expanding progressively, so if we’re not available in your area yet, we’ll let you know when we arrive.
          </p>
        </div>

        {/* Location Grid (Bengaluru + Notify Me) */}
        <div className="grid grid-cols-1 md:grid-cols-2 gap-8 max-w-4xl mx-auto">
          
          {/* Card 1: Bengaluru */}
          <div className="bg-purple-50/60 rounded-3xl p-8 border border-purple-200 shadow-sm flex flex-col justify-between space-y-6 text-left">
            <div className="space-y-3">
              <div className="inline-flex items-center gap-2 px-3 py-1 rounded-full bg-purple-700 text-white text-xs font-extrabold">
                <MapPin className="w-3.5 h-3.5" />
                <span>📍 Bengaluru</span>
              </div>
              <h3 className="text-2xl font-bold text-slate-900">Bengaluru Launch Hub</h3>
              <p className="text-xs text-slate-600 leading-relaxed">
                Currently available in select areas across Bengaluru for home sample collection, diagnostics, and home nursing services.
              </p>
            </div>

            <div>
              <button
                onClick={() => openWhatsApp(DEFAULT_MESSAGES.city('Bengaluru'))}
                className="w-full py-3.5 px-5 rounded-2xl bg-purple-700 hover:bg-purple-800 text-white font-bold text-xs flex items-center justify-center gap-2 transition-colors shadow-sm"
              >
                <span>Check Availability in Bengaluru</span>
                <ArrowRight className="w-4 h-4" />
              </button>
            </div>
          </div>

          {/* Card 2: Outside Bengaluru */}
          <div className="bg-slate-50 rounded-3xl p-8 border border-slate-200 shadow-xs flex flex-col justify-between space-y-6 text-left">
            <div className="space-y-3">
              <div className="inline-flex items-center gap-2 px-3 py-1 rounded-full bg-slate-200 text-slate-700 text-xs font-bold">
                <Bell className="w-3.5 h-3.5 text-purple-600" />
                <span>Coming Soon</span>
              </div>
              <h3 className="text-2xl font-bold text-slate-900">For locations outside Bengaluru</h3>
              <p className="text-xs text-slate-600 leading-relaxed">
                Health Express is expanding to more locations. Leave your details and we’ll let you know when our services become available near you.
              </p>
            </div>

            <div>
              <button
                onClick={() => openWhatsApp("Hello Health Express, please notify me when services expand to my city.")}
                className="w-full py-3.5 px-5 rounded-2xl bg-slate-900 hover:bg-slate-800 text-white font-bold text-xs flex items-center justify-center gap-2 transition-colors shadow-xs"
              >
                <span>Notify Me</span>
                <ArrowRight className="w-4 h-4 text-purple-400" />
              </button>
            </div>
          </div>

        </div>

      </div>
    </section>
  );
}
