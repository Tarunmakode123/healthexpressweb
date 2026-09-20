import React, { useState } from 'react';
import { MapPin, ArrowRight, Bell, Search, CheckCircle2, AlertCircle } from 'lucide-react';
import { openWhatsApp, DEFAULT_MESSAGES } from '../../utils/whatsapp';

export default function CitiesSection() {
  const popularLocalities = [
    'Koramangala',
    'Indiranagar',
    'HSR Layout',
    'Whitefield',
    'Bellandur',
    'Jayanagar',
    'Electronic City',
    'Sarjapur Road',
    'Hebbal',
    'JP Nagar'
  ];

  const [searchQuery, setSearchQuery] = useState('');
  const [selectedLocality, setSelectedLocality] = useState('Koramangala');

  const activeLocality = searchQuery.trim() || selectedLocality;
  const isBengaluruArea = popularLocalities.some(loc => 
    loc.toLowerCase().includes(activeLocality.toLowerCase())
  ) || activeLocality.toLowerCase().includes('bengaluru') || activeLocality.toLowerCase().includes('bangalore');

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
            Health Express is launching in Bengaluru, initially serving select areas across the city. We’re expanding progressively, so check your area status below or request launch alerts.
          </p>
        </div>

        {/* Interactive Locality Checker Widget */}
        <div className="max-w-3xl mx-auto bg-gradient-to-b from-purple-50/90 to-slate-50 p-6 sm:p-8 rounded-3xl border border-purple-100 shadow-md space-y-6">
          <div className="flex flex-col sm:flex-row items-start sm:items-center justify-between gap-4">
            <div>
              <h3 className="text-lg font-bold text-slate-900 flex items-center gap-2">
                <MapPin className="w-5 h-5 text-purple-700" />
                <span>Locality Availability Checker</span>
              </h3>
              <p className="text-xs text-slate-500 mt-0.5">
                Type your area or choose from popular Bengaluru localities
              </p>
            </div>
            <span className="px-3 py-1 rounded-full bg-purple-100 text-purple-800 text-[11px] font-bold">
              ⚡ Live Coverage Check
            </span>
          </div>

          {/* Search Box */}
          <div className="relative">
            <Search className="w-5 h-5 text-slate-400 absolute left-4 top-1/2 -translate-y-1/2" />
            <input
              type="text"
              value={searchQuery}
              onChange={(e) => setSearchQuery(e.target.value)}
              placeholder="Type area (e.g. Koramangala, Indiranagar, Whitefield)..."
              className="w-full pl-11 pr-4 py-3.5 rounded-2xl bg-white border border-purple-200 text-sm font-medium text-slate-900 placeholder:text-slate-400 focus:outline-none focus:ring-2 focus:ring-purple-600 shadow-xs"
            />
          </div>

          {/* Locality Quick Filter Pills */}
          <div className="space-y-2">
            <div className="text-[11px] font-extrabold uppercase text-slate-400 tracking-wider">
              Popular Bengaluru Hubs:
            </div>
            <div className="flex flex-wrap gap-2">
              {popularLocalities.map((loc) => (
                <button
                  key={loc}
                  onClick={() => {
                    setSelectedLocality(loc);
                    setSearchQuery('');
                  }}
                  className={`px-3 py-1.5 rounded-xl text-xs font-semibold transition-all ${
                    activeLocality.toLowerCase() === loc.toLowerCase()
                      ? 'bg-purple-700 text-white shadow-xs'
                      : 'bg-white hover:bg-purple-100/70 border border-purple-100 text-slate-700'
                  }`}
                >
                  {loc}
                </button>
              ))}
            </div>
          </div>

          {/* Dynamic Availability Result */}
          <div className="p-4 rounded-2xl bg-white border border-purple-200/80 shadow-xs flex flex-col sm:flex-row items-start sm:items-center justify-between gap-4">
            <div className="flex items-start gap-3">
              {isBengaluruArea ? (
                <CheckCircle2 className="w-5 h-5 text-emerald-600 shrink-0 mt-0.5" />
              ) : (
                <AlertCircle className="w-5 h-5 text-amber-500 shrink-0 mt-0.5" />
              )}
              <div>
                <div className="text-xs font-bold text-slate-900 flex items-center gap-1.5">
                  <span>Area: <strong className="text-purple-700">{activeLocality}</strong></span>
                  {isBengaluruArea ? (
                    <span className="px-2 py-0.5 rounded-md bg-emerald-100 text-emerald-800 text-[10px] font-extrabold">Active Zone</span>
                  ) : (
                    <span className="px-2 py-0.5 rounded-md bg-amber-100 text-amber-800 text-[10px] font-extrabold">Expansion Zone</span>
                  )}
                </div>
                <p className="text-[11px] text-slate-500 mt-0.5">
                  {isBengaluruArea
                    ? 'Home sample collection & home nursing coordination are operational in this zone.'
                    : 'We are expanding to this zone next! Leave a request to get priority notification.'}
                </p>
              </div>
            </div>

            <button
              onClick={() => 
                openWhatsApp(
                  isBengaluruArea
                    ? `Hello Health Express, I would like to check availability and schedule healthcare services in ${activeLocality}, Bengaluru.`
                    : `Hello Health Express, please notify me when services expand to ${activeLocality}.`
                )
              }
              className="w-full sm:w-auto px-5 py-2.5 rounded-xl bg-purple-700 hover:bg-purple-800 text-white font-bold text-xs shrink-0 flex items-center justify-center gap-1.5 transition-colors shadow-xs"
            >
              <span>{isBengaluruArea ? 'Book in ' + activeLocality : 'Request Priority Launch'}</span>
              <ArrowRight className="w-3.5 h-3.5" />
            </button>
          </div>
        </div>

        {/* Location Grid (Bengaluru Hub + Expansion Cards) */}
        <div className="grid grid-cols-1 md:grid-cols-2 gap-8 max-w-4xl mx-auto">
          
          {/* Card 1: Bengaluru */}
          <div className="bg-purple-50/60 rounded-3xl p-8 border border-purple-200 shadow-xs flex flex-col justify-between space-y-6 text-left">
            <div className="space-y-3">
              <div className="inline-flex items-center gap-2 px-3 py-1 rounded-full bg-purple-700 text-white text-xs font-extrabold">
                <MapPin className="w-3.5 h-3.5" />
                <span>📍 Bengaluru Launch Hub</span>
              </div>
              <h3 className="text-2xl font-bold text-slate-900">Serving Bengaluru Hubs</h3>
              <p className="text-xs text-slate-600 leading-relaxed">
                Currently available across major Bengaluru zones for home sample collection, diagnostics, and home nursing services.
              </p>
            </div>

            <div>
              <button
                onClick={() => openWhatsApp(DEFAULT_MESSAGES.city('Bengaluru'))}
                className="w-full py-3.5 px-5 rounded-2xl bg-purple-700 hover:bg-purple-800 text-white font-bold text-xs flex items-center justify-center gap-2 transition-colors shadow-xs"
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
              <h3 className="text-2xl font-bold text-slate-900">Locations Outside Bengaluru</h3>
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
