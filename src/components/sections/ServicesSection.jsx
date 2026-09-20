import React, { useState } from 'react';
import { FlaskConical, HeartPulse, Camera, Home, Dna, Activity, ArrowRight } from 'lucide-react';
import { openWhatsApp, DEFAULT_MESSAGES } from '../../utils/whatsapp';

export default function ServicesSection() {
  const [activeTab, setActiveTab] = useState('all');

  const categories = [
    { id: 'all', label: 'All Services' },
    { id: 'diagnostics', label: 'Diagnostics & Labs' },
    { id: 'home-care', label: 'Care at Home' },
    { id: 'specialty', label: 'Specialized Care' }
  ];

  const services = [
    {
      id: 'diagnostics',
      category: 'diagnostics',
      title: 'Diagnostics',
      desc: 'Tests without the usual back-and-forth. Compare diagnostic options, arrange home sample collection, and receive your reports digitally.',
      cta: 'Explore Diagnostics',
      icon: FlaskConical,
      highlight: 'Home Sample Collection Available'
    },
    {
      id: 'preventive-health',
      category: 'diagnostics',
      title: 'Preventive Health Packages',
      desc: 'Stay ahead with comprehensive health checkups, made simple. For every age. Every stage.',
      cta: 'Explore Health Packages',
      icon: HeartPulse,
      highlight: 'Full Body Profiles'
    },
    {
      id: 'imaging',
      category: 'diagnostics',
      title: 'Imaging',
      desc: 'The right imaging, made easier to arrange. Convenient access to trusted diagnostic centres.',
      cta: 'Explore Imaging',
      icon: Camera,
      highlight: 'X-Ray, Ultrasound, MRI & CT'
    },
    {
      id: 'home-nursing',
      category: 'home-care',
      title: 'Home Nursing',
      desc: 'Professional care, delivered at home. Find and coordinate nursing support for recovery, ongoing care and other healthcare needs at home.',
      cta: 'Explore Home Nursing',
      icon: Home,
      highlight: 'Qualified Healthcare Professionals'
    },
    {
      id: 'genetic-testing',
      category: 'specialty',
      title: 'Genetic Testing',
      desc: 'Explore what your DNA can tell you about your health. Personalized insights. Better-informed decisions.',
      cta: 'Explore Genomics',
      icon: Dna,
      highlight: 'DNA & Hereditary Screening'
    },
    {
      id: 'surgical-care',
      category: 'specialty',
      title: 'Surgical Care',
      desc: 'Navigate surgery with trusted specialists and healthcare providers. Guidance, coordination and care when you need it.',
      cta: 'Explore Surgical Care',
      icon: Activity,
      highlight: 'Specialist Guidance'
    }
  ];

  const filteredServices = activeTab === 'all' 
    ? services 
    : services.filter(s => s.category === activeTab);

  return (
    <section className="py-16 md:py-24 bg-white" id="services">
      <div className="max-w-7xl mx-auto px-4 sm:px-6 lg:px-8 space-y-10">
        
        {/* Header */}
        <div className="text-center max-w-3xl mx-auto space-y-3">
          <div className="text-xs font-extrabold uppercase tracking-wider text-purple-700">
            ONE HEALTHCARE PLATFORM
          </div>
          <h2 className="text-3xl sm:text-4xl font-extrabold text-slate-900 tracking-tight">
            From everyday healthcare to preventive care.
          </h2>
          <p className="text-base sm:text-lg text-slate-600 leading-relaxed">
            Whether you need a diagnostic test, care at home or a preventive health checkup, Health Express brings multiple healthcare services together in one place.
          </p>
        </div>

        {/* Category Tabs */}
        <div className="flex items-center justify-center gap-2 overflow-x-auto pb-2 no-scrollbar">
          {categories.map((cat) => (
            <button
              key={cat.id}
              onClick={() => setActiveTab(cat.id)}
              className={`px-5 py-2.5 rounded-2xl text-xs font-bold transition-all whitespace-nowrap cursor-pointer ${
                activeTab === cat.id
                  ? 'bg-purple-700 text-white shadow-md shadow-purple-700/20'
                  : 'bg-slate-100 hover:bg-purple-50 text-slate-600 hover:text-purple-800'
              }`}
            >
              {cat.label}
            </button>
          ))}
        </div>

        {/* Services Grid */}
        <div className="grid grid-cols-1 md:grid-cols-2 lg:grid-cols-3 gap-6">
          {filteredServices.map((service) => {
            const IconComponent = service.icon;
            return (
              <div
                key={service.id}
                className="group bg-slate-50/50 hover:bg-purple-50/40 rounded-3xl p-7 border border-slate-100 hover:border-purple-200 transition-all duration-200 shadow-xs hover:shadow-md flex flex-col justify-between space-y-6 text-left"
              >
                <div className="space-y-4">
                  <div className="flex items-center justify-between">
                    <div className="w-12 h-12 rounded-2xl bg-white border border-purple-100 text-purple-700 flex items-center justify-center shadow-xs group-hover:scale-105 transition-transform">
                      <IconComponent className="w-6 h-6" />
                    </div>
                    <span className="text-[10px] font-extrabold uppercase px-2.5 py-1 rounded-full bg-purple-100/70 text-purple-800">
                      {service.highlight}
                    </span>
                  </div>

                  <div>
                    <h3 className="text-xl font-bold text-slate-900">{service.title}</h3>
                    <p className="text-xs text-slate-600 mt-2 leading-relaxed">{service.desc}</p>
                  </div>
                </div>

                <div>
                  <button
                    onClick={() => openWhatsApp(DEFAULT_MESSAGES.service(service.title))}
                    className="inline-flex items-center gap-1.5 text-xs font-bold text-purple-700 hover:text-purple-900 group-hover:translate-x-1 transition-all"
                  >
                    <span>{service.cta}</span>
                    <ArrowRight className="w-4 h-4" />
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
