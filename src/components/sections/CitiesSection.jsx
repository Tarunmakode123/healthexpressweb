import React, { useState } from 'react';
import { MapPin, ArrowRight, Bell, Search, CheckCircle2 } from 'lucide-react';
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
    <section className="py-16 md:py-24 bg-mesh-purple border-t border-purple-100/60 relative overflow-hidden" id="locations">
      <div className="max-w-7xl mx-auto px-4 sm:px-6 lg:px-8 space-y-12 relative z-10">
        
        {/* Header */}
        <div className="text-center max-w-3xl mx-auto space-y-3">
          <div className="inline-flex items-center gap-2 px-3.5 py-1.5 rounded-full bg-purple-100 border border-purple-200 text-xs font-bold uppercase tracking-wider text-purple-800 shadow-2xs">
            CITY COVERAGE
          </div>
          <h2 className="text-3xl sm:text-4xl lg:text-5xl font-extrabold text-slate-900 tracking-tight">
            Starting with <span className="gradient-text-purple">Bengaluru.</span>
          </h2>
          <p className="text-sm sm:text-base text-slate-600 leading-relaxed">
            Explore Health Express services available in Bengaluru across major residential and commercial hubs.
          </p>
        </div>

        {/* Locality Checker Card */}
        <div className="max-w-3xl mx-auto bento-card p-6 sm:p-8 rounded-3xl border border-purple-200/90 shadow-md space-y-6 text-left">
          <div className="flex flex-col sm:flex-row items-start sm:items-center justify-between gap-4">
            <div>
              <h3 className="text-lg font-extrabold text-slate-900 flex items-center gap-2">
                <MapPin className="w-5 h-5 text-purple-700" />
                <span>Bengaluru Locality Availability</span>
              </h3>
              <p className="text-xs text-slate-500 mt-0.5 font-medium">
                Type your area or select popular Bengaluru healthcare hubs
              </p>
            </div>
            <span className="px-3.5 py-1 rounded-full bg-purple-100 text-purple-900 text-[11px] font-bold border border-purple-200">
              Bengaluru MVP
            </span>
          </div>

          {/* Search Box */}
          <div className="relative">
            <Search className="w-5 h-5 text-slate-400 absolute left-4 top-1/2 -translate-y-1/2 pointer-events-none" />
            <input
              type="text"
              value={searchQuery}
              onChange={(e) => setSearchQuery(e.target.value)}
              placeholder="Type area (e.g. Koramangala, Indiranagar, Whitefield)..."
              className="w-full pl-11 pr-4 py-3 rounded-2xl bg-white border border-purple-200 text-xs sm:text-sm font-medium text-slate-900 placeholder:text-slate-400 focus:outline-none focus:ring-2 focus:ring-purple-600 shadow-2xs"
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
                  className={`px-3.5 py-1.5 rounded-xl text-xs font-bold transition-all duration-200 cursor-pointer ${
                    activeLocality.toLowerCase() === loc.toLowerCase()
                      ? 'bg-purple-700 text-white shadow-xs scale-105'
                      : 'bg-white hover:bg-purple-100/70 border border-purple-100 text-slate-700'
                  }`}
                >
                  {loc}
                </button>
              ))}
            </div>
          </div>

          {/* Dynamic Result Banner */}
          <div className="p-5 rounded-2xl bg-purple-50/40 border border-purple-200/80 shadow-2xs flex flex-col sm:flex-row items-start sm:items-center justify-between gap-4">
            <div className="flex items-start gap-3">
              <CheckCircle2 className="w-5 h-5 text-emerald-600 shrink-0 mt-0.5" />
              <div>
                <div className="text-xs font-bold text-slate-900 flex items-center gap-2">
                  <span>Selected Area: <strong className="text-purple-900 font-extrabold">{activeLocality}</strong></span>
                </div>
                <p className="text-[11px] text-slate-600 mt-1 leading-relaxed">
                  {isBengaluruArea
                    ? 'Diagnostic lab home sample collection and home healthcare nursing coordination are available.'
                    : 'Submit an inquiry to check service coordination availability in your specific area.'}
                </p>
              </div>
            </div>

            <button
              onClick={() => 
                openWhatsApp(`Hello Health Express, I would like to check availability and coordinate healthcare services in ${activeLocality}, Bengaluru.`)
              }
              className="w-full sm:w-auto px-5 py-2.5 rounded-xl bg-purple-700 hover:bg-purple-800 text-white font-extrabold text-xs shrink-0 flex items-center justify-center gap-2 transition-all shadow-xs active:scale-95 cursor-pointer"
            >
              <span>Inquire in {activeLocality}</span>
              <ArrowRight className="w-3.5 h-3.5" />
            </button>
          </div>
        </div>

      </div>
    </section>
  );
}
