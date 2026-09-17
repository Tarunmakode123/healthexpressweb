import React from 'react';
import { FlaskConical, Camera, Home, Video, Pill, Dna, HeartPulse, ArrowRight } from 'lucide-react';
import { openWhatsApp, DEFAULT_MESSAGES } from '../../utils/whatsapp';

export default function ServicesSection() {
  const services = [
    {
      id: 'diagnostics',
      title: 'Diagnostics',
      desc: 'Blood tests, diagnostic tests and health checkups from healthcare providers in our network.',
      icon: FlaskConical
    },
    {
      id: 'imaging',
      title: 'Imaging',
      desc: 'Access diagnostic imaging services through participating healthcare providers.',
      icon: Camera
    },
    {
      id: 'home-healthcare',
      title: 'Home Healthcare',
      desc: 'Arrange nursing, caregiving and other healthcare services delivered at home, where available.',
      icon: Home
    },
    {
      id: 'telemedicine',
      title: 'Telemedicine',
      desc: 'Connect with healthcare professionals for consultations from wherever you are.',
      icon: Video
    },
    {
      id: 'pharmacy',
      title: 'Pharmacy',
      desc: 'Find and arrange medicines through participating pharmacy partners, subject to applicable requirements.',
      icon: Pill
    },
    {
      id: 'genetic-testing',
      title: 'Genetic Testing',
      desc: 'Explore genetic testing services through participating healthcare providers.',
      icon: Dna
    },
    {
      id: 'preventive-healthcare',
      title: 'Preventive Healthcare',
      desc: 'Make preventive health part of your routine with screening, health checkups and ongoing health awareness.',
      icon: HeartPulse,
      fullWidth: true
    }
  ];

  const mainServices = services.filter(s => !s.fullWidth);
  const preventiveService = services.find(s => s.fullWidth);

  return (
    <section className="py-16 md:py-24 bg-white" id="services">
      <div className="max-w-7xl mx-auto px-4 sm:px-6 lg:px-8 space-y-12">
        
        {/* Header */}
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

        {/* Services Grid (6 Cards) */}
        <div className="grid grid-cols-1 md:grid-cols-2 lg:grid-cols-3 gap-6">
          {mainServices.map((service) => {
            const IconComponent = service.icon;
            return (
              <div
                key={service.id}
                className="group bg-slate-50/50 hover:bg-purple-50/40 rounded-3xl p-7 border border-slate-100 hover:border-purple-200 transition-all duration-200 shadow-xs flex flex-col justify-between space-y-6"
              >
                <div className="space-y-4">
                  <div className="w-12 h-12 rounded-2xl bg-white border border-purple-100 text-purple-700 flex items-center justify-center shadow-xs group-hover:scale-105 transition-transform">
                    <IconComponent className="w-6 h-6" />
                  </div>
                  <div>
                    <h3 className="text-xl font-bold text-slate-900">{service.title}</h3>
                    <p className="text-xs text-slate-600 mt-1.5 leading-relaxed">{service.desc}</p>
                  </div>
                </div>

                <div>
                  <button
                    onClick={() => openWhatsApp(DEFAULT_MESSAGES.service(service.title))}
                    className="inline-flex items-center gap-1.5 text-xs font-bold text-purple-700 hover:text-purple-900 group-hover:translate-x-1 transition-all"
                  >
                    <span>Explore {service.title}</span>
                    <ArrowRight className="w-4 h-4" />
                  </button>
                </div>
              </div>
            );
          })}
        </div>

        {/* Preventive Healthcare Highlight Card */}
        {preventiveService && (
          <div className="bg-purple-50/60 hover:bg-purple-50 rounded-3xl p-8 border border-purple-200/80 transition-all flex flex-col md:flex-row items-start md:items-center justify-between gap-6 shadow-xs">
            <div className="flex items-center gap-5">
              <div className="w-14 h-14 rounded-2xl bg-purple-700 text-white flex items-center justify-center shrink-0 shadow-md shadow-purple-700/20">
                <HeartPulse className="w-7 h-7" />
              </div>
              <div>
                <h3 className="text-xl font-bold text-slate-900">{preventiveService.title}</h3>
                <p className="text-sm text-slate-600 mt-1 leading-relaxed">{preventiveService.desc}</p>
              </div>
            </div>

            <button
              onClick={() => openWhatsApp(DEFAULT_MESSAGES.service(preventiveService.title))}
              className="inline-flex items-center gap-2 px-6 py-3.5 rounded-2xl bg-purple-700 hover:bg-purple-800 text-white font-bold text-xs shrink-0 transition-all shadow-sm"
            >
              <span>Explore Preventive Health</span>
              <ArrowRight className="w-4 h-4" />
            </button>
          </div>
        )}

      </div>
    </section>
  );
}
