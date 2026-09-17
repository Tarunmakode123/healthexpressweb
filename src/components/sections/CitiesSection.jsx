import React from 'react';
import { Link } from 'react-router-dom';
import { ArrowRight, MapPin } from 'lucide-react';
import { CITIES_DATA } from '../../data/cities';
import { openWhatsApp, DEFAULT_MESSAGES } from '../../utils/whatsapp';

export default function CitiesSection() {
  return (
    <section className="py-16 md:py-24 bg-white">
      <div className="max-w-7xl mx-auto px-4 sm:px-6 lg:px-8 space-y-10">
        
        {/* Header */}
        <div className="flex flex-col sm:flex-row sm:items-end justify-between gap-4">
          <div>
            <div className="text-xs font-extrabold uppercase tracking-wider text-purple-700">
              HEALTHCARE NEAR YOU
            </div>
            <h2 className="text-3xl sm:text-4xl font-extrabold text-slate-900 tracking-tight mt-1">
              Care that fits your location.
            </h2>
            <p className="text-sm text-slate-600 mt-1">
              Explore healthcare services available in your city.
            </p>
          </div>

          <button
            onClick={() => openWhatsApp(DEFAULT_MESSAGES.general)}
            className="inline-flex items-center gap-1.5 text-xs font-bold text-purple-700 hover:text-purple-900 shrink-0 group"
          >
            <span>View all cities</span>
            <ArrowRight className="w-4 h-4 group-hover:translate-x-1 transition-transform" />
          </button>
        </div>

        {/* Cities Grid */}
        <div className="grid grid-cols-2 sm:grid-cols-3 lg:grid-cols-5 gap-4">
          {CITIES_DATA.map((city) => (
            <button
              key={city.id}
              onClick={() => openWhatsApp(DEFAULT_MESSAGES.city(city.name))}
              className="group relative h-48 rounded-3xl overflow-hidden shadow-xs hover:shadow-xl transition-all duration-300 text-left border border-slate-100 flex flex-col justify-end p-4 cursor-pointer"
            >
              {/* Background City Image */}
              <img
                src={city.image}
                alt={city.name}
                className="absolute inset-0 w-full h-full object-cover group-hover:scale-110 transition-transform duration-500"
                loading="lazy"
              />
              
              {/* Gradient Overlay */}
              <div className="absolute inset-0 bg-gradient-to-t from-slate-950/85 via-slate-950/40 to-transparent" />

              {/* City Content */}
              <div className="relative z-10 flex items-center justify-between text-white w-full">
                <div>
                  <div className="flex items-center gap-1 text-[11px] font-medium text-purple-300">
                    <MapPin className="w-3 h-3" />
                    <span>Verified Network</span>
                  </div>
                  <h3 className="text-lg font-bold text-white tracking-tight mt-0.5">
                    {city.name}
                  </h3>
                </div>

                <div className="w-8 h-8 rounded-full bg-white/20 backdrop-blur-md text-white flex items-center justify-center group-hover:bg-purple-600 transition-colors">
                  <ArrowRight className="w-4 h-4 group-hover:translate-x-0.5 transition-transform" />
                </div>
              </div>
            </button>
          ))}
        </div>

      </div>
    </section>
  );
}
