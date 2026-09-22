import React, { useState } from 'react';
import { FlaskConical, HeartPulse, Camera, Home, Dna, Activity, ArrowRight, CheckCircle2, ShieldCheck, Sparkles } from 'lucide-react';
import { openWhatsApp, DEFAULT_MESSAGES } from '../../utils/whatsapp';

export default function ServicesSection() {
  const [activeTab, setActiveTab] = useState('all');

  const categories = [
    { id: 'all', label: 'All Categories' },
    { id: 'diagnostics', label: 'Diagnostics & Labs' },
    { id: 'home-care', label: 'Care at Home' },
    { id: 'specialty', label: 'Specialized Care' }
  ];

  const services = [
    {
      id: 'home-nursing',
      category: 'home-care',
      title: 'Home Healthcare & Nursing',
      desc: 'Professional nursing care, eldercare, and post-op recovery coordinated around your family by verified medical professionals in Bengaluru.',
      cta: 'Explore Home Care',
      icon: Home,
      highlight: 'Featured Service',
      badgeColor: 'bg-emerald-100 text-emerald-900 border-emerald-200',
      isAnchor: true
    },
    {
      id: 'diagnostics',
      category: 'diagnostics',
      title: 'Diagnostics & Blood Tests',
      desc: 'Book diagnostic tests and packages with home sample collection and digital report delivery.',
      cta: 'Explore Diagnostics',
      icon: FlaskConical,
      highlight: 'Home Collection',
      badgeColor: 'bg-purple-100 text-purple-900 border-purple-200'
    },
    {
      id: 'preventive-health',
      category: 'diagnostics',
      title: 'Preventive Health Packages',
      desc: 'Stay ahead with comprehensive checkups for every age and family member.',
      cta: 'Explore Health Packages',
      icon: HeartPulse,
      highlight: 'Full Body Checkups',
      badgeColor: 'bg-amber-100 text-amber-900 border-amber-200'
    },
    {
      id: 'imaging',
      category: 'diagnostics',
      title: 'Imaging & Scans',
      desc: 'Convenient access and coordination for X-Ray, Ultrasound, MRI, and CT scans.',
      cta: 'Explore Imaging',
      icon: Camera,
      highlight: 'Partner Centres',
      badgeColor: 'bg-sky-100 text-sky-900 border-sky-200'
    },
    {
      id: 'genetic-testing',
      category: 'specialty',
      title: 'Genetic Testing',
      desc: 'Personalized DNA and hereditary screening insights for better-informed care decisions.',
      cta: 'Explore Genomics',
      icon: Dna,
      highlight: 'Hereditary Screening',
      badgeColor: 'bg-indigo-100 text-indigo-900 border-indigo-200'
    },
    {
      id: 'surgical-care',
      category: 'specialty',
      title: 'Specialist & Surgical Guidance',
      desc: 'Navigate procedures with trusted specialists and care coordination support.',
      cta: 'Explore Guidance',
      icon: Activity,
      highlight: 'Specialist Support',
      badgeColor: 'bg-rose-100 text-rose-900 border-rose-200'
    }
  ];

  const filteredServices = activeTab === 'all' 
    ? services 
    : services.filter(s => s.category === activeTab);

  return (
    <section className="py-20 md:py-28 bg-gradient-to-b from-slate-50 via-purple-50/20 to-slate-50 relative overflow-hidden" id="services">
      
      {/* Subtle Glow Node */}
      <div className="absolute top-1/3 left-1/2 -translate-x-1/2 w-[700px] h-[400px] bg-purple-100/30 rounded-full blur-3xl pointer-events-none -z-10" />

      <div className="max-w-7xl mx-auto px-4 sm:px-6 lg:px-8 space-y-12 relative z-10">
        
        {/* Section Header */}
        <div className="text-center max-w-3xl mx-auto space-y-3">
          <div className="inline-flex items-center gap-2 px-3.5 py-1.5 rounded-full bg-purple-100/80 border border-purple-200/80 text-purple-900 text-xs font-extrabold uppercase tracking-widest shadow-xs">
            <Sparkles className="w-3.5 h-3.5 text-purple-700" />
            <span>ONE CONNECTED PLATFORM</span>
          </div>
          <h2 className="text-3xl sm:text-4xl lg:text-5xl font-extrabold text-slate-900 tracking-tight leading-[1.15]">
            Healthcare for the <span className="text-purple-700">moments that matter.</span>
          </h2>
          <p className="text-base sm:text-lg text-slate-600 font-medium max-w-2xl mx-auto leading-relaxed">
            From diagnostics and home healthcare to preventive care and specialist support, Health Express brings your family's care together.
          </p>
        </div>

        {/* Category Pills Bar */}
        <div className="flex items-center justify-center gap-2 overflow-x-auto pb-2 no-scrollbar">
          {categories.map((cat) => (
            <button
              key={cat.id}
              onClick={() => setActiveTab(cat.id)}
              className={`px-5 py-2.5 rounded-2xl text-xs font-extrabold transition-all whitespace-nowrap cursor-pointer ${
                activeTab === cat.id
                  ? 'bg-purple-700 text-white shadow-md shadow-purple-700/20 scale-[1.03]'
                  : 'bg-white hover:bg-purple-50 text-slate-600 hover:text-purple-800 border border-slate-200/80'
              }`}
            >
              {cat.label}
            </button>
          ))}
        </div>

        {/* Bento Grid Services Composition */}
        <div className="grid grid-cols-1 md:grid-cols-12 gap-6 items-stretch">
          {filteredServices.map((service, idx) => {
            const IconComponent = service.icon;
            const isAnchor = service.isAnchor && activeTab === 'all';
            const colSpan = isAnchor ? 'md:col-span-12 lg:col-span-7' : (activeTab !== 'all' ? 'md:col-span-6 lg:col-span-4' : 'md:col-span-6 lg:col-span-5');

            return (
              <div
                key={service.id}
                className={`${colSpan} bg-white rounded-3xl p-7 sm:p-8 border border-slate-200/80 shadow-md shadow-slate-900/5 hover:border-purple-300 hover:shadow-xl transition-all group cursor-pointer flex flex-col justify-between relative overflow-hidden`}
                onClick={() => openWhatsApp(DEFAULT_MESSAGES.service(service.title))}
              >
                <div className="space-y-5 relative z-10">
                  <div className="flex items-center justify-between gap-3">
                    <div className="w-12 h-12 rounded-2xl bg-purple-700 text-white flex items-center justify-center shadow-md shadow-purple-700/20 group-hover:scale-105 transition-transform">
                      <IconComponent className="w-6 h-6" />
                    </div>
                    <span className={`text-[10px] font-extrabold uppercase tracking-widest px-3 py-1 rounded-full border ${service.badgeColor}`}>
                      {service.highlight}
                    </span>
                  </div>

                  <div className="space-y-2">
                    <h3 className="text-xl sm:text-2xl font-extrabold text-slate-900 group-hover:text-purple-950 transition-colors">
                      {service.title}
                    </h3>
                    <p className="text-xs sm:text-sm text-slate-600 font-medium leading-relaxed">
                      {service.desc}
                    </p>
                  </div>
                </div>

                <div className="pt-6 relative z-10">
                  <button
                    onClick={(e) => {
                      e.stopPropagation();
                      openWhatsApp(DEFAULT_MESSAGES.service(service.title));
                    }}
                    className="inline-flex items-center gap-2 text-xs font-extrabold text-purple-700 group-hover:text-purple-900 group-hover:translate-x-1.5 transition-all"
                  >
                    <span>{service.cta}</span>
                    <ArrowRight className="w-4 h-4" />
                  </button>
                </div>
              </div>
            );
          })}
        </div>

        {/* Expansion notice */}
        <div className="text-center pt-2 text-xs font-bold text-purple-900 bg-purple-100/60 py-2.5 px-6 rounded-full max-w-md mx-auto border border-purple-200">
          ⚡ More healthcare verticals & partner labs being onboarded continuously across Bengaluru.
        </div>

      </div>
    </section>
  );
}
