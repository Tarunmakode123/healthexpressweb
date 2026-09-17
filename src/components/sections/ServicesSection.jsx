import React from 'react';
import { Link } from 'react-router-dom';
import { FlaskConical, Camera, Home, Video, Pill, Dna, HeartPulse, ArrowRight } from 'lucide-react';
import { SERVICES_DATA } from '../../data/services';
import { openWhatsApp, DEFAULT_MESSAGES } from '../../utils/whatsapp';

const iconMap = {
  FlaskConical,
  Camera,
  Home,
  Video,
  Pill,
  Dna,
  HeartPulse
};

export default function ServicesSection() {
  const mainServices = SERVICES_DATA.filter(s => s.id !== 'preventive-healthcare');
  const preventiveService = SERVICES_DATA.find(s => s.id === 'preventive-healthcare');

  return (
    <section className="py-16 md:py-24 bg-white" id="services">
      <div className="max-w-7xl mx-auto px-4 sm:px-6 lg:px-8 space-y-12">
        
        {/* Section Header */}
        <div className="text-center max-w-3xl mx-auto space-y-3">
          <div className="text-xs font-extrabold uppercase tracking-wider text-purple-700">
            ONE HEALTHCARE PLATFORM
          </div>
          <h2 className="text-3xl sm:text-4xl font-extrabold text-slate-900 tracking-tight">
            From everyday healthcare to preventive care.
          </h2>
          <p className="text-base sm:text-lg text-slate-600 leading-relaxed">
            Whether you need a diagnostic test, a doctor consultation, care at home or a preventive health checkup, Health Express brings multiple healthcare services together in one place.
          </p>
        </div>

        {/* Services Grid (6 cards top, 1 full-width bottom) */}
        <div className="grid grid-cols-1 md:grid-cols-2 lg:grid-cols-3 gap-6">
          {mainServices.map((service) => {
            const IconComponent = iconMap[service.iconName] || FlaskConical;
            return (
              <div
                key={service.id}
                className="group bg-slate-50/50 hover:bg-purple-50/40 rounded-3xl p-7 border border-slate-100 hover:border-purple-200 transition-all duration-200 shadow-xs flex flex-col justify-between"
              >
                <div className="space-y-4">
                  <div className="w-12 h-12 rounded-2xl bg-white border border-purple-100 text-purple-700 flex items-center justify-center shadow-xs group-hover:scale-105 transition-transform">
                    <IconComponent className="w-6 h-6" />
                  </div>
                  <div>
                    <h3 className="text-xl font-bold text-slate-900">{service.title}</h3>
                    <p className="text-xs text-slate-600 mt-1 leading-relaxed">{service.shortDesc}</p>
                  </div>
                </div>

                <div className="pt-6">
                  <button
                    onClick={() => openWhatsApp(DEFAULT_MESSAGES.service(service.title))}
                    className="inline-flex items-center gap-1.5 text-xs font-bold text-purple-700 hover:text-purple-900 group-hover:translate-x-1 transition-all"
                  >
                    <span>Explore</span>
                    <ArrowRight className="w-4 h-4" />
                  </button>
                </div>
              </div>
            );
          })}
        </div>

        {/* Preventive Healthcare Full-Width Card */}
        {preventiveService && (
          <div className="bg-purple-50/60 hover:bg-purple-50 rounded-3xl p-8 border border-purple-200/80 transition-all flex flex-col md:flex-row items-start md:items-center justify-between gap-6 shadow-xs">
            <div className="flex items-center gap-5">
              <div className="w-14 h-14 rounded-2xl bg-purple-700 text-white flex items-center justify-center shrink-0 shadow-md shadow-purple-700/20">
                <HeartPulse className="w-7 h-7" />
              </div>
              <div>
                <h3 className="text-xl font-bold text-slate-900">{preventiveService.title}</h3>
                <p className="text-sm text-slate-600 mt-1">{preventiveService.shortDesc}</p>
              </div>
            </div>

            <button
              onClick={() => openWhatsApp(DEFAULT_MESSAGES.service(preventiveService.title))}
              className="inline-flex items-center gap-2 px-6 py-3 rounded-xl bg-purple-700 hover:bg-purple-800 text-white font-bold text-xs shrink-0 transition-all shadow-sm"
            >
              <span>Explore</span>
              <ArrowRight className="w-4 h-4" />
            </button>
          </div>
        )}

      </div>
    </section>
  );
}
