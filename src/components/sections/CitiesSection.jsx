import React, { useState } from 'react';
import { MapPin, ArrowRight, Bell, Search, CheckCircle2, AlertCircle, Sparkles } from 'lucide-react';
import { openWhatsApp, DEFAULT_MESSAGES } from '../../utils/whatsapp';
import WaitlistModal from '../common/WaitlistModal';

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
  const [isWaitlistOpen, setIsWaitlistOpen] = useState(false);
  const [waitlistCity, setWaitlistCity] = useState('Delhi NCR');

  const activeLocality = searchQuery.trim() || selectedLocality;
  const isBengaluruArea = popularLocalities.some(loc => 
    loc.toLowerCase().includes(activeLocality.toLowerCase())
  ) || activeLocality.toLowerCase().includes('bengaluru') || activeLocality.toLowerCase().includes('bangalore');

  const handleWaitlistClick = (city) => {
    setWaitlistCity(city);
    setIsWaitlistOpen(true);
  };

  return (
    <section className="py-12 md:py-16 bg-mesh-purple border-t border-purple-100/60 relative overflow-hidden" id="locations">
      <div className="max-w-7xl mx-auto px-4 sm:px-6 lg:px-8 space-y-12 relative z-10">
        
        {/* Header */}
        <div className="text-center max-w-3xl mx-auto space-y-3">
          <div className="inline-flex items-center gap-2 px-3.5 py-1.5 rounded-full bg-purple-100 border border-purple-200 text-xs font-extrabold uppercase tracking-wider text-purple-700 shadow-2xs">
            SERVICE AVAILABILITY HUB
          </div>
          <h2 className="text-3xl sm:text-4xl lg:text-5xl font-extrabold text-slate-900 tracking-tight">
            Active Location: <span className="gradient-text-purple">Bengaluru.</span>
          </h2>
          <p className="text-sm sm:text-base text-slate-600 leading-relaxed">
            Health Express is currently live in <strong className="text-slate-900 font-bold">Bengaluru only</strong>. All other cities are coming soon — join our priority waitlist for early access.
          </p>
        </div>

        {/* Interactive Locality Checker Widget */}
        <div className="max-w-3xl mx-auto glass-card p-6 sm:p-8 rounded-3xl border border-purple-200/90 shadow-xl space-y-6">
          <div className="flex flex-col sm:flex-row items-start sm:items-center justify-between gap-4">
            <div>
              <h3 className="text-lg font-extrabold text-slate-900 flex items-center gap-2">
                <MapPin className="w-5 h-5 text-purple-700" />
                <span>Bengaluru Locality Availability Checker</span>
              </h3>
              <p className="text-xs text-slate-500 mt-0.5 font-medium">
                Type your area or select popular Bengaluru healthcare hubs
              </p>
            </div>
            <span className="px-3.5 py-1 rounded-full bg-emerald-100 text-emerald-800 text-[11px] font-black border border-emerald-300/50 flex items-center gap-1.5 shadow-2xs">
              <span className="w-2 h-2 rounded-full bg-emerald-500 animate-pulse"></span>
              Live Coverage Engine
            </span>
          </div>

          {/* Search Box */}
          <div className="relative">
            <Search className="w-5 h-5 text-slate-400 absolute left-4 top-1/2 -translate-y-1/2" />
            <input
              type="text"
              value={searchQuery}
              onChange={(e) => setSearchQuery(e.target.value)}
              placeholder="Type area or city (e.g. Koramangala, Delhi NCR, Mumbai)..."
              className="w-full pl-11 pr-4 py-3.5 rounded-2xl bg-white border border-purple-200 text-sm font-medium text-slate-900 placeholder:text-slate-400 focus:outline-none focus:ring-2 focus:ring-purple-600 shadow-xs"
            />
          </div>

          {/* Locality Quick Filter Pills */}
          <div className="space-y-2">
            <div className="text-[11px] font-extrabold uppercase text-slate-400 tracking-wider">
              Popular Bengaluru Hubs (Active Live):
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
                      ? 'bg-purple-700 text-white shadow-md shadow-purple-700/20 scale-105'
                      : 'bg-white hover:bg-purple-100/70 border border-purple-100 text-slate-700'
                  }`}
                >
                  {loc}
                </button>
              ))}
            </div>
          </div>

          {/* Dynamic Availability Result */}
          <div className="p-5 rounded-2xl bg-white/90 border border-purple-200/90 shadow-sm flex flex-col sm:flex-row items-start sm:items-center justify-between gap-4">
            <div className="flex items-start gap-3">
              {isBengaluruArea ? (
                <CheckCircle2 className="w-6 h-6 text-emerald-600 shrink-0 mt-0.5" />
              ) : (
                <AlertCircle className="w-6 h-6 text-amber-500 shrink-0 mt-0.5" />
              )}
              <div>
                <div className="text-xs font-bold text-slate-900 flex items-center gap-2">
                  <span>Area: <strong className="text-purple-900 font-extrabold">{activeLocality}</strong></span>
                  {isBengaluruArea ? (
                    <span className="px-2.5 py-0.5 rounded-md bg-emerald-100 text-emerald-800 text-[10px] font-black border border-emerald-300">Active Live Zone</span>
                  ) : (
                    <span className="px-2.5 py-0.5 rounded-md bg-amber-100 text-amber-800 text-[10px] font-black border border-amber-300">Coming Soon Zone</span>
                  )}
                </div>
                <p className="text-[11px] text-slate-600 mt-1 leading-relaxed">
                  {isBengaluruArea
                    ? 'Home sample collection & home nursing coordination are live in this zone.'
                    : 'Health Express is live in Bengaluru only. Join the priority waitlist for early access in this area!'}
                </p>
              </div>
            </div>

            <button
              onClick={() => {
                if (isBengaluruArea) {
                  openWhatsApp(`Hello Health Express, I would like to schedule healthcare services in ${activeLocality}, Bengaluru.`);
                } else {
                  handleWaitlistClick(activeLocality);
                }
              }}
              className={`w-full sm:w-auto px-6 py-3 rounded-xl font-extrabold text-xs shrink-0 flex items-center justify-center gap-2 transition-all shadow-md active:scale-95 cursor-pointer ${
                isBengaluruArea
                  ? 'bg-purple-700 hover:bg-purple-800 text-white'
                  : 'bg-amber-500 hover:bg-amber-600 text-slate-950'
              }`}
            >
              <span>{isBengaluruArea ? 'Book in ' + activeLocality : 'Join Priority Waitlist'}</span>
              <ArrowRight className="w-4 h-4" />
            </button>
          </div>
        </div>

        {/* Location Cards */}
        <div className="grid grid-cols-1 md:grid-cols-2 gap-8 max-w-4xl mx-auto">
          
          {/* Card 1: Bengaluru */}
          <div className="bento-card rounded-3xl p-8 flex flex-col justify-between space-y-6 text-left border-2 border-emerald-400/40">
            <div className="space-y-3">
              <div className="inline-flex items-center gap-2 px-3 py-1 rounded-full bg-emerald-600 text-white text-xs font-extrabold">
                <MapPin className="w-3.5 h-3.5" />
                <span>📍 Active Location: Bengaluru</span>
              </div>
              <h3 className="text-2xl font-extrabold text-slate-900">Live Across Bengaluru</h3>
              <p className="text-xs text-slate-600 leading-relaxed">
                Currently serving Bengaluru for home sample collection, diagnostic scans, home nursing, and preventive checkups.
              </p>
            </div>

            <div>
              <button
                onClick={() => openWhatsApp(DEFAULT_MESSAGES.city('Bengaluru'))}
                className="w-full py-3.5 px-5 rounded-2xl bg-purple-700 hover:bg-purple-800 text-white font-extrabold text-xs flex items-center justify-center gap-2 transition-all shadow-md active:scale-95 cursor-pointer"
              >
                <span>Book Services in Bengaluru</span>
                <ArrowRight className="w-4 h-4" />
              </button>
            </div>
          </div>

          {/* Card 2: Outside Bengaluru */}
          <div className="glass-card rounded-3xl p-8 border border-amber-200/80 bg-amber-50/30 shadow-xs flex flex-col justify-between space-y-6 text-left">
            <div className="space-y-3">
              <div className="inline-flex items-center gap-2 px-3 py-1 rounded-full bg-amber-200 text-amber-900 text-xs font-extrabold">
                <Bell className="w-3.5 h-3.5 text-amber-700" />
                <span>Coming Soon Expansion</span>
              </div>
              <h3 className="text-2xl font-extrabold text-slate-900">All Other Cities</h3>
              <p className="text-xs text-slate-600 leading-relaxed">
                Delhi NCR, Mumbai, Hyderabad, Pune, Chennai & more are coming soon. Join our priority waitlist to receive early access and ₹500 launch credit!
              </p>
            </div>

            <div>
              <button
                onClick={() => handleWaitlistClick('All Other Cities')}
                className="w-full py-3.5 px-5 rounded-2xl bg-amber-500 hover:bg-amber-600 text-slate-950 font-extrabold text-xs flex items-center justify-center gap-2 transition-all shadow-md active:scale-95 cursor-pointer"
              >
                <span>Join Priority Waitlist</span>
                <ArrowRight className="w-4 h-4 text-slate-900" />
              </button>
            </div>
          </div>

        </div>

      </div>

      <WaitlistModal
        isOpen={isWaitlistOpen}
        onClose={() => setIsWaitlistOpen(false)}
        defaultCity={waitlistCity}
      />
    </section>
  );
}
