import React from 'react';
import { FlaskConical, HeartPulse, Camera, Home, Video, Pill, Dna, Activity, ArrowRight, MessageSquare } from 'lucide-react';
import { openWhatsApp, DEFAULT_MESSAGES } from '../../utils/whatsapp';

export default function ServicesSection() {
  const services = [
    {
      id: 'diagnostics',
      title: 'Diagnostics & Lab Tests',
      desc: 'Tests without the usual back-and-forth. Compare diagnostic options, arrange home sample collection, and receive your reports digitally.',
      cta: 'Explore Diagnostics',
      whatsappMsg: DEFAULT_MESSAGES.service('Diagnostics & Lab Tests'),
      icon: FlaskConical
    },
    {
      id: 'radiology',
      title: 'Radiology & Imaging',
      desc: 'The right imaging, made easier to arrange. Convenient access to trusted diagnostic centres for X-Ray, MRI, CT & Ultrasound.',
      cta: 'Explore Imaging',
      whatsappMsg: DEFAULT_MESSAGES.radiology,
      icon: Camera
    },
    {
      id: 'home-nursing',
      title: 'Home Healthcare & Nursing',
      desc: 'Professional care, delivered at home. Find and coordinate nursing support for recovery, ongoing care and other healthcare needs at home.',
      cta: 'Explore Home Nursing',
      whatsappMsg: DEFAULT_MESSAGES.homeHealthcare,
      icon: Home
    },
    {
      id: 'telemedicine',
      title: 'Telemedicine & Consultations',
      desc: 'Connect with healthcare professionals for consultations from wherever you are. General physicians and specialists available.',
      cta: 'Explore Telemedicine',
      whatsappMsg: DEFAULT_MESSAGES.telemedicine,
      icon: Video
    },
    {
      id: 'preventive-health',
      title: 'Preventive Health Packages',
      desc: 'Stay ahead with comprehensive health checkups, made simple. For every age and every stage of life.',
      cta: 'Explore Health Packages',
      whatsappMsg: DEFAULT_MESSAGES.preventive,
      icon: HeartPulse
    },
    {
      id: 'pharmacy',
      title: 'Pharmacy & Medicines',
      desc: 'Find and arrange genuine prescription medicines through participating pharmacy partners with doorstep delivery.',
      cta: 'Explore Pharmacy',
      whatsappMsg: DEFAULT_MESSAGES.service('Pharmacy & Medicines'),
      icon: Pill
    },
    {
      id: 'genetic-testing',
      title: 'Genetic Testing & Genomics',
      desc: 'Explore what your DNA can tell you about your health. Personalized health insights and better-informed decisions.',
      cta: 'Explore Genomics',
      whatsappMsg: DEFAULT_MESSAGES.service('Genetic Testing & Genomics'),
      icon: Dna
    },
    {
      id: 'surgical-care',
      title: 'Surgical Care Navigation',
      desc: 'Navigate surgery with trusted specialists and healthcare providers. Guidance, coordination and care when you need it.',
      cta: 'Explore Surgical Care',
      whatsappMsg: DEFAULT_MESSAGES.service('Surgical Care Navigation'),
      icon: Activity
    }
  ];

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
            Whether you need a diagnostic test, doctor consultation, care at home or a preventive health checkup, Health Express brings multiple healthcare services together in one place.
          </p>
        </div>

        {/* Services Grid */}
        <div className="grid grid-cols-1 md:grid-cols-2 lg:grid-cols-4 gap-6">
          {services.map((service) => {
            const IconComponent = service.icon;
            return (
              <div
                key={service.id}
                className="group bg-slate-50/50 hover:bg-purple-50/40 rounded-3xl p-6 border border-slate-100 hover:border-purple-200 transition-all duration-200 shadow-xs flex flex-col justify-between space-y-5 text-left"
              >
                <div className="space-y-4">
                  <div className="w-12 h-12 rounded-2xl bg-white border border-purple-100 text-purple-700 flex items-center justify-center shadow-xs group-hover:scale-105 transition-transform">
                    <IconComponent className="w-6 h-6" />
                  </div>
                  <div>
                    <h3 className="text-lg font-bold text-slate-900 leading-snug">{service.title}</h3>
                    <p className="text-xs text-slate-600 mt-2 leading-relaxed">{service.desc}</p>
                  </div>
                </div>

                <div>
                  <button
                    onClick={() => openWhatsApp(service.whatsappMsg)}
                    className="w-full py-2.5 px-3 rounded-xl bg-purple-100 hover:bg-purple-200 text-purple-900 font-bold text-xs inline-flex items-center justify-between transition-colors group-hover:bg-purple-700 group-hover:text-white"
                  >
                    <span className="flex items-center gap-1.5">
                      <MessageSquare className="w-3.5 h-3.5" />
                      <span>{service.cta}</span>
                    </span>
                    <ArrowRight className="w-3.5 h-3.5" />
                  </button>
                </div>
              </div>
            );
          })}
        </div>

        {/* Small expansion line */}
        <div className="text-center pt-2 text-xs font-semibold text-slate-500 italic">
          More healthcare services are being added to Health Express.
        </div>

      </div>
    </section>
  );
}
