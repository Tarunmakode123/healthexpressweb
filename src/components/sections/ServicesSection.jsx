import React, { useState } from 'react';
import { FlaskConical, HeartPulse, Camera, Home, Dna, ArrowRight } from 'lucide-react';
import { openWhatsApp, DEFAULT_MESSAGES } from '../../utils/whatsapp';

export default function ServicesSection() {
  const [activeCategory, setActiveCategory] = useState('all');

  const categories = [
    { id: 'all', label: 'All Services' },
    { id: 'diagnostics', label: 'Diagnostics & Pathology' },
    { id: 'home-care', label: 'Home Healthcare' },
    { id: 'specialty', label: 'Specialized Care' }
  ];

  const services = [
    {
      id: 'diagnostics',
      category: 'diagnostics',
      title: 'Diagnostics & Pathology',
      desc: 'Complete blood tests and laboratory investigations with home sample collection support across Bengaluru.',
      cta: 'Explore Diagnostics',
      icon: FlaskConical,
      badge: 'Home Sample Collection'
    },
    {
      id: 'preventive-health',
      category: 'diagnostics',
      title: 'Preventive Health Packages',
      desc: 'Comprehensive full-body checkups and screening profiles tailored for every age group.',
      cta: 'Explore Health Packages',
      icon: HeartPulse,
      badge: 'Full Body Profiles'
    },
    {
      id: 'imaging',
      category: 'diagnostics',
      title: 'Diagnostic Imaging',
      desc: 'Convenient coordination for X-Rays, Ultrasound, MRI, and CT scans through partner diagnostic centres.',
      cta: 'Explore Imaging',
      icon: Camera,
      badge: 'X-Ray, MRI & CT'
    },
    {
      id: 'home-nursing',
      category: 'home-care',
      title: 'Home Healthcare Nursing',
      desc: 'Professional nursing care, post-operative support, and ongoing health management in the comfort of your home.',
      cta: 'Explore Home Nursing',
      icon: Home,
      badge: 'Nursing Care at Home'
    },
    {
      id: 'genetic-testing',
      category: 'specialty',
      title: 'Genetic & Wellness Testing',
      desc: 'Explore genetic insights and hereditary screening options for personalized preventive health management.',
      cta: 'Explore Genetic Testing',
      icon: Dna,
      badge: 'Personalized Insights'
    }
  ];

  const filteredServices = activeCategory === 'all' 
    ? services 
    : services.filter(s => s.category === activeCategory);

  return (
    <section className="py-16 md:py-24 bg-mesh-purple relative overflow-hidden" id="services">
      <div className="max-w-7xl mx-auto px-4 sm:px-6 lg:px-8 space-y-12 relative z-10">
        
        {/* Header */}
        <div className="text-center max-w-3xl mx-auto space-y-3">
          <div className="inline-flex items-center gap-2 px-3.5 py-1.5 rounded-full bg-purple-100 border border-purple-200 text-xs font-bold uppercase tracking-wider text-purple-800 shadow-2xs">
            CONNECTED HEALTHCARE SERVICES
          </div>
          <h2 className="text-3xl sm:text-4xl lg:text-5xl font-extrabold text-slate-900 tracking-tight">
            From everyday diagnostics <span className="gradient-text-purple">to home care.</span>
          </h2>
          <p className="text-base sm:text-lg text-slate-600 leading-relaxed">
            Whether you need a diagnostic blood test, home nursing support, or a preventive checkup, Health Express connects your care requirements seamlessly.
          </p>
        </div>

        {/* Category Filter Pills */}
        <div className="flex items-center justify-center gap-2 overflow-x-auto pb-2 no-scrollbar">
          {categories.map((cat) => (
            <button
              key={cat.id}
              onClick={() => setActiveCategory(cat.id)}
              className={`px-5 py-2.5 rounded-2xl text-xs font-bold transition-all whitespace-nowrap cursor-pointer ${
                activeCategory === cat.id
                  ? 'bg-purple-700 text-white shadow-md shadow-purple-700/20 scale-105'
                  : 'bg-white hover:bg-purple-50 text-slate-700 hover:text-purple-900 border border-purple-100'
              }`}
            >
              {cat.label}
            </button>
          ))}
        </div>

        {/* Bento Grid Services Layout */}
        <div className="grid grid-cols-1 md:grid-cols-2 lg:grid-cols-3 gap-6">
          {filteredServices.map((service, idx) => {
            const IconComponent = service.icon;
            const isFeatured = idx === 0 && activeCategory === 'all';
            return (
              <div
                key={service.id}
                className={`bento-card rounded-3xl p-7 flex flex-col justify-between space-y-6 text-left group cursor-pointer ${
                  isFeatured ? 'md:col-span-2 lg:col-span-2 bg-gradient-to-br from-white via-purple-50/40 to-white' : ''
                }`}
                onClick={() => openWhatsApp(DEFAULT_MESSAGES.service(service.title))}
              >
                <div className="space-y-4">
                  <div className="flex items-center justify-between">
                    <div className="w-12 h-12 rounded-2xl bg-purple-700 text-white flex items-center justify-center shadow-xs group-hover:scale-105 group-hover:bg-purple-800 transition-all duration-300">
                      <IconComponent className="w-6 h-6" />
                    </div>
                    <span className="text-[10px] font-extrabold uppercase tracking-wider px-3 py-1 rounded-full bg-purple-50 text-purple-800 border border-purple-200/80">
                      {service.badge}
                    </span>
                  </div>

                  <div>
                    <h3 className="text-xl font-extrabold text-slate-900 group-hover:text-purple-950 transition-colors">{service.title}</h3>
                    <p className="text-xs sm:text-sm text-slate-600 mt-2 leading-relaxed">{service.desc}</p>
                  </div>
                </div>

                <div className="pt-2">
                  <button
                    onClick={(e) => {
                      e.stopPropagation();
                      openWhatsApp(DEFAULT_MESSAGES.service(service.title));
                    }}
                    className="inline-flex items-center gap-2 text-xs font-extrabold text-purple-700 group-hover:text-purple-900 group-hover:translate-x-1.5 transition-all"
                  >
                    <span>{service.cta} →</span>
                  </button>
                </div>
              </div>
            );
          })}
        </div>

      </div>
    </section>
  );
}
