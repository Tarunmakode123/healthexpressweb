import React from 'react';
import { SERVICES_DATA } from '../data/services';
import { FlaskConical, Camera, Home, Video, Pill, Dna, HeartPulse, ArrowRight, CheckCircle2, MessageSquare } from 'lucide-react';
import { openWhatsApp, DEFAULT_MESSAGES } from '../utils/whatsapp';

const iconMap = {
  FlaskConical,
  Camera,
  Home,
  Video,
  Pill,
  Dna,
  HeartPulse
};

export default function ServicesPage({ onOpenUploadModal }) {
  return (
    <div className="py-12 md:py-20 bg-slate-50/30">
      <div className="max-w-7xl mx-auto px-4 sm:px-6 lg:px-8 space-y-12">
        
        {/* Page Header */}
        <div className="text-center max-w-3xl mx-auto space-y-4">
          <div className="inline-block px-3.5 py-1 rounded-full bg-purple-100 text-purple-800 text-xs font-bold uppercase tracking-wider">
            Healthcare Services Directory
          </div>
          <h1 className="text-3xl sm:text-5xl font-extrabold text-slate-900 tracking-tight">
            Comprehensive Healthcare Services
          </h1>
          <p className="text-base sm:text-lg text-slate-600">
            From routine blood testing to home care nursing, telemedicine, and genetic profiling — Health Express brings top healthcare providers together.
          </p>
        </div>

        {/* Detailed Services Grid */}
        <div className="grid grid-cols-1 md:grid-cols-2 gap-8">
          {SERVICES_DATA.map((service) => {
            const IconComp = iconMap[service.iconName] || FlaskConical;
            return (
              <div 
                key={service.id}
                className="bg-white rounded-3xl p-8 border border-purple-100 shadow-xs hover:shadow-md transition-all flex flex-col justify-between space-y-6"
              >
                <div className="space-y-4">
                  <div className="flex items-center justify-between">
                    <div className="w-12 h-12 rounded-2xl bg-purple-100 text-purple-700 flex items-center justify-center">
                      <IconComp className="w-6 h-6" />
                    </div>
                    <span className="text-[11px] font-bold uppercase px-3 py-1 rounded-full bg-purple-50 text-purple-700 border border-purple-100">
                      {service.badge}
                    </span>
                  </div>

                  <div>
                    <h3 className="text-2xl font-bold text-slate-900">{service.title}</h3>
                    <p className="text-sm text-slate-600 mt-2 leading-relaxed">{service.description}</p>
                  </div>

                  {/* Feature Bullets */}
                  <div className="space-y-2 pt-2 border-t border-slate-100">
                    {service.features.map((feat, i) => (
                      <div key={i} className="flex items-center gap-2 text-xs font-medium text-slate-700">
                        <CheckCircle2 className="w-4 h-4 text-purple-600 shrink-0" />
                        <span>{feat}</span>
                      </div>
                    ))}
                  </div>
                </div>

                <div className="pt-4 flex flex-col sm:flex-row gap-3">
                  <button
                    onClick={() => openWhatsApp(DEFAULT_MESSAGES.service(service.title))}
                    className="flex-1 py-3 px-5 rounded-xl bg-purple-700 hover:bg-purple-800 text-white font-bold text-xs flex items-center justify-center gap-2 transition-colors shadow-sm"
                  >
                    <MessageSquare className="w-4 h-4" />
                    <span>Inquire via WhatsApp</span>
                  </button>

                  <button
                    onClick={onOpenUploadModal}
                    className="py-3 px-5 rounded-xl bg-slate-100 hover:bg-purple-100 text-slate-700 font-bold text-xs transition-colors"
                  >
                    Upload Prescription
                  </button>
                </div>
              </div>
            );
          })}
        </div>

      </div>
    </div>
  );
}
