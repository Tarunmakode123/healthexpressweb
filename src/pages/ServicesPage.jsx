import React, { useState } from 'react';
import { SERVICES_DATA } from '../data/services';
import { 
  FlaskConical, Camera, Home, Dna, HeartPulse, Search, Sparkles, 
  Clock, ShieldCheck, CheckCircle2, ChevronDown, ChevronUp, 
  Upload, MessageSquare, ArrowRight, Activity, MapPin, Zap
} from 'lucide-react';
import { openWhatsApp, DEFAULT_MESSAGES } from '../utils/whatsapp';

const iconMap = {
  FlaskConical,
  Camera,
  Home,
  Dna,
  HeartPulse
};

export default function ServicesPage({ onOpenUploadModal }) {
  const [searchQuery, setSearchQuery] = useState('');
  const [activeCategory, setActiveCategory] = useState('all');
  const [expandedServiceId, setExpandedServiceId] = useState('diagnostics');
  const [collectionModes, setCollectionModes] = useState({});

  const categories = [
    { id: 'all', label: 'All Services' },
    { id: 'diagnostics', label: 'Diagnostics & Labs' },
    { id: 'imaging', label: 'Diagnostic Imaging' },
    { id: 'home-care', label: 'Home Care & Nursing' },
    { id: 'genomics', label: 'Precision Genomics' },
    { id: 'preventive', label: 'Preventive Health' }
  ];

  const toggleExpand = (id) => {
    setExpandedServiceId(prev => (prev === id ? null : id));
  };

  const toggleCollectionMode = (id, mode) => {
    setCollectionModes(prev => ({ ...prev, [id]: mode }));
  };

  // Filter logic
  const filteredServices = SERVICES_DATA.filter((service) => {
    const matchesCategory = activeCategory === 'all' || service.category === activeCategory;
    const matchesSearch = 
      service.title.toLowerCase().includes(searchQuery.toLowerCase()) ||
      service.shortDesc.toLowerCase().includes(searchQuery.toLowerCase()) ||
      service.description.toLowerCase().includes(searchQuery.toLowerCase()) ||
      service.parameters.some(p => p.toLowerCase().includes(searchQuery.toLowerCase()));
    return matchesCategory && matchesSearch;
  });

  return (
    <div className="min-h-screen bg-slate-50/50 pb-20 relative overflow-hidden">
      
      {/* Background ECG Waveform Accent */}
      <div className="absolute top-20 left-0 right-0 h-48 opacity-10 pointer-events-none -z-10 flex items-center justify-center">
        <svg viewBox="0 0 1200 120" className="w-full h-full text-purple-600 fill-none stroke-current stroke-[2] stroke-linecap-round">
          <path d="M0,60 L250,60 L280,30 L300,90 L320,10 L340,110 L360,60 L390,60 L420,60 L1200,60" className="animate-ecg" />
        </svg>
      </div>

      {/* Decorative Orbs */}
      <div className="absolute top-0 right-1/3 w-96 h-96 bg-purple-200/40 rounded-full blur-3xl pointer-events-none -z-10 animate-pulse-glow" />
      <div className="absolute bottom-20 left-10 w-80 h-80 bg-indigo-200/30 rounded-full blur-2xl pointer-events-none -z-10" />

      <div className="max-w-7xl mx-auto px-4 sm:px-6 lg:px-8 pt-10 space-y-12 relative z-10">
        
        {/* Animated Hero Header */}
        <div className="text-center max-w-3xl mx-auto space-y-4">
          <div className="inline-flex items-center gap-2 px-4 py-1.5 rounded-full bg-white border border-purple-200 text-xs font-extrabold text-slate-800 shadow-2xs backdrop-blur-md">
            <span className="relative flex h-2 w-2">
              <span className="animate-ping absolute inline-flex h-full w-full rounded-full bg-emerald-400 opacity-75"></span>
              <span className="relative inline-flex rounded-full h-2 w-2 bg-emerald-500"></span>
            </span>
            <span className="text-purple-900 uppercase tracking-wider text-[11px] font-extrabold">LIVE HEALTHCARE DIRECTORY</span>
            <span className="text-slate-300">|</span>
            <span className="text-emerald-700 font-bold">100% NABL Accredited Partners</span>
          </div>

          <h1 className="text-3xl sm:text-5xl lg:text-6xl font-extrabold text-slate-900 tracking-tight leading-tight">
            Connected Healthcare,<br />
            <span className="gradient-text-purple">Designed Around You.</span>
          </h1>

          <p className="text-base sm:text-lg text-slate-600 leading-relaxed">
            Explore diagnostic blood profiles, certified home nursing care, advanced radiology imaging, and precision genomics. Compare options and book instantly.
          </p>
        </div>

        {/* Search & Category Filter Controls */}
        <div className="max-w-4xl mx-auto space-y-6">
          
          {/* Interactive Search Bar */}
          <div className="relative glass-card p-2 rounded-2xl border border-purple-200 shadow-lg">
            <div className="relative flex items-center">
              <Search className="w-5 h-5 text-purple-600 absolute left-4" />
              <input
                type="text"
                value={searchQuery}
                onChange={(e) => setSearchQuery(e.target.value)}
                placeholder="Search services, blood tests, MRI, home nursing, genetic profiles..."
                className="w-full pl-12 pr-10 py-3.5 rounded-xl bg-white border-0 text-sm font-semibold text-slate-900 placeholder:text-slate-400 focus:outline-none focus:ring-2 focus:ring-purple-600 shadow-inner"
              />
              {searchQuery && (
                <button 
                  onClick={() => setSearchQuery('')}
                  className="absolute right-4 text-xs font-extrabold text-slate-400 hover:text-purple-700"
                >
                  Clear
                </button>
              )}
            </div>
          </div>

          {/* Category Tabs */}
          <div className="flex items-center justify-center gap-2 overflow-x-auto pb-2 no-scrollbar">
            {categories.map((cat) => (
              <button
                key={cat.id}
                onClick={() => setActiveCategory(cat.id)}
                className={`px-4 py-2.5 rounded-2xl text-xs font-extrabold transition-all whitespace-nowrap cursor-pointer ${
                  activeCategory === cat.id
                    ? 'bg-purple-700 text-white shadow-md shadow-purple-700/25 scale-105'
                    : 'bg-white/90 hover:bg-purple-50 text-slate-600 hover:text-purple-900 border border-purple-100/80 shadow-2xs'
                }`}
              >
                {cat.label}
              </button>
            ))}
          </div>

        </div>

        {/* Results Counter */}
        <div className="flex items-center justify-between text-xs font-bold text-slate-500 max-w-7xl mx-auto border-b border-purple-100 pb-3">
          <span>Showing <strong className="text-purple-900">{filteredServices.length}</strong> Healthcare Services</span>
          <span className="flex items-center gap-1 text-emerald-700">
            <Zap className="w-3.5 h-3.5 fill-emerald-600" />
            30-Min Sample Collection Available
          </span>
        </div>

        {/* Services Bento Grid */}
        <div className="grid grid-cols-1 md:grid-cols-2 gap-8">
          {filteredServices.map((service, index) => {
            const IconComp = iconMap[service.iconName] || FlaskConical;
            const isExpanded = expandedServiceId === service.id;
            const currentMode = collectionModes[service.id] || 'home';

            return (
              <div 
                key={service.id}
                className="bento-card rounded-3xl p-7 md:p-8 flex flex-col justify-between space-y-6 group relative transition-all duration-300"
              >
                <div className="space-y-5">
                  
                  {/* Card Header & Badge */}
                  <div className="flex items-start justify-between gap-4">
                    <div className="w-14 h-14 rounded-2xl bg-purple-700 text-white flex items-center justify-center shadow-md group-hover:scale-110 group-hover:bg-purple-800 transition-all duration-300 shrink-0">
                      <IconComp className="w-7 h-7" />
                    </div>
                    
                    <span className="px-3.5 py-1.5 rounded-full bg-purple-100 text-purple-900 text-[11px] font-black uppercase tracking-wider border border-purple-200">
                      {service.badge}
                    </span>
                  </div>

                  {/* Title & Description */}
                  <div>
                    <h3 className="text-2xl font-extrabold text-slate-900 group-hover:text-purple-950 transition-colors">
                      {service.title}
                    </h3>
                    <p className="text-xs sm:text-sm text-slate-600 mt-2 leading-relaxed">
                      {service.description}
                    </p>
                  </div>

                  {/* Clinical Telemetry Bar */}
                  <div className="grid grid-cols-2 gap-2 text-left pt-1">
                    <div className="p-3 rounded-2xl bg-purple-50/70 border border-purple-100 flex items-center gap-2.5">
                      <Clock className="w-4 h-4 text-purple-700 shrink-0" />
                      <div>
                        <div className="text-[10px] font-bold text-slate-500 uppercase">Turnaround Time</div>
                        <div className="text-xs font-extrabold text-purple-950">{service.turnaround}</div>
                      </div>
                    </div>

                    <div className="p-3 rounded-2xl bg-emerald-50/70 border border-emerald-100 flex items-center gap-2.5">
                      <ShieldCheck className="w-4 h-4 text-emerald-700 shrink-0" />
                      <div>
                        <div className="text-[10px] font-bold text-slate-500 uppercase">Sample Transport</div>
                        <div className="text-xs font-extrabold text-emerald-950">{service.pickupTime}</div>
                      </div>
                    </div>
                  </div>

                  {/* Collection Mode Selector */}
                  <div className="p-1 rounded-2xl bg-slate-100 border border-slate-200/70 flex items-center gap-1">
                    <button
                      onClick={() => toggleCollectionMode(service.id, 'home')}
                      className={`flex-1 py-1.5 rounded-xl text-[11px] font-extrabold transition-all ${
                        currentMode === 'home'
                          ? 'bg-white text-purple-950 shadow-xs border border-purple-200'
                          : 'text-slate-500 hover:text-slate-900'
                      }`}
                    >
                      🏡 Home Collection
                    </button>
                    <button
                      onClick={() => toggleCollectionMode(service.id, 'center')}
                      className={`flex-1 py-1.5 rounded-xl text-[11px] font-extrabold transition-all ${
                        currentMode === 'center'
                          ? 'bg-white text-purple-950 shadow-xs border border-purple-200'
                          : 'text-slate-500 hover:text-slate-900'
                      }`}
                    >
                      🏥 Partner Lab Visit
                    </button>
                  </div>

                  {/* Feature Checklist */}
                  <div className="space-y-2 pt-2 border-t border-slate-100">
                    <div className="text-[11px] font-extrabold uppercase text-slate-400 tracking-wider">Key Inclusions:</div>
                    <div className="grid grid-cols-1 sm:grid-cols-2 gap-2">
                      {service.features.map((feat, i) => (
                        <div key={i} className="flex items-center gap-2 text-xs font-bold text-slate-700">
                          <CheckCircle2 className="w-4 h-4 text-purple-600 shrink-0" />
                          <span>{feat}</span>
                        </div>
                      ))}
                    </div>
                  </div>

                  {/* Expandable Parameters Accordion */}
                  <div className="pt-2">
                    <button
                      onClick={() => toggleExpand(service.id)}
                      className="w-full py-2.5 px-4 rounded-xl bg-purple-50 hover:bg-purple-100 border border-purple-200/80 text-purple-900 text-xs font-extrabold flex items-center justify-between transition-colors"
                    >
                      <span>{isExpanded ? 'Hide Included Parameters & Prep' : 'View Included Parameters & Preparation'}</span>
                      {isExpanded ? <ChevronUp className="w-4 h-4" /> : <ChevronDown className="w-4 h-4" />}
                    </button>

                    {isExpanded && (
                      <div className="mt-3 p-4 rounded-2xl bg-white border border-purple-200 space-y-3 animate-fadeIn text-left">
                        <div>
                          <div className="text-xs font-extrabold text-slate-900">Included Parameters / Tests:</div>
                          <ul className="mt-1.5 space-y-1">
                            {service.parameters.map((param, pIdx) => (
                              <li key={pIdx} className="text-xs text-slate-600 flex items-start gap-2">
                                <span className="text-purple-600 font-bold">•</span>
                                <span>{param}</span>
                              </li>
                            ))}
                          </ul>
                        </div>

                        <div className="p-3 rounded-xl bg-amber-50 border border-amber-200/80 text-[11px] text-amber-900 font-semibold">
                          📌 <strong>Preparation Guideline:</strong> {service.prep}
                        </div>
                      </div>
                    )}
                  </div>

                </div>

                {/* Card CTA Row */}
                <div className="pt-4 border-t border-slate-100 flex flex-col sm:flex-row gap-3">
                  
                  {/* Primary Upload Prescription CTA */}
                  <button
                    onClick={onOpenUploadModal}
                    className="flex-1 py-3 px-5 rounded-2xl bg-purple-700 hover:bg-purple-800 text-white font-extrabold text-xs flex items-center justify-center gap-2 transition-all shadow-md active:scale-95 cursor-pointer"
                  >
                    <Upload className="w-4 h-4 text-purple-200" />
                    <span>Upload Order / Prescription</span>
                  </button>

                  {/* Secondary WhatsApp CTA */}
                  <button
                    onClick={() => openWhatsApp(DEFAULT_MESSAGES.service(service.title))}
                    className="py-3 px-5 rounded-2xl bg-white hover:bg-purple-50 border border-purple-200 text-purple-900 font-extrabold text-xs flex items-center justify-center gap-2 transition-all shadow-xs active:scale-95 cursor-pointer"
                  >
                    <MessageSquare className="w-4 h-4 text-emerald-600 fill-emerald-600/20" />
                    <span>Inquire via WhatsApp</span>
                  </button>

                </div>
              </div>
            );
          })}
        </div>

        {/* High-Tech Healthcare Comparison Section */}
        <div className="max-w-5xl mx-auto glass-card p-8 md:p-10 rounded-3xl border border-purple-200 shadow-xl space-y-8 mt-16 text-left">
          <div className="text-center space-y-2">
            <div className="inline-flex items-center gap-1.5 px-3.5 py-1 rounded-full bg-purple-100 text-purple-900 text-xs font-extrabold uppercase">
              <Sparkles className="w-3.5 h-3.5 text-purple-600" />
              <span>THE HEALTH EXPRESS DIFFERENCE</span>
            </div>
            <h2 className="text-2xl sm:text-4xl font-extrabold text-slate-900">
              Why Patients Choose Health Express
            </h2>
            <p className="text-xs sm:text-sm text-slate-600">
              Traditional diagnostic center experience vs. Health Express modern connected care.
            </p>
          </div>

          <div className="grid grid-cols-1 md:grid-cols-2 gap-6">
            
            {/* Traditional Labs */}
            <div className="p-6 rounded-2xl bg-slate-100/80 border border-slate-200 space-y-4">
              <div className="text-sm font-extrabold text-slate-500 uppercase tracking-wider">Traditional Diagnostic Labs</div>
              <ul className="space-y-3 text-xs text-slate-600 font-medium">
                <li className="flex items-start gap-2.5">
                  <span className="text-red-500 font-bold">✕</span>
                  <span>Long waiting times in crowded waiting rooms</span>
                </li>
                <li className="flex items-start gap-2.5">
                  <span className="text-red-500 font-bold">✕</span>
                  <span>Manual paper reports & fragmented history</span>
                </li>
                <li className="flex items-start gap-2.5">
                  <span className="text-red-500 font-bold">✕</span>
                  <span>Uncertain sample transport temperature</span>
                </li>
              </ul>
            </div>

            {/* Health Express */}
            <div className="p-6 rounded-2xl bg-purple-900 text-white border border-purple-800 shadow-lg space-y-4">
              <div className="text-sm font-extrabold text-emerald-400 uppercase tracking-wider flex items-center justify-between">
                <span>Health Express Modern Care</span>
                <span className="px-2 py-0.5 rounded bg-emerald-500/20 text-emerald-300 text-[10px]">100% Certified</span>
              </div>
              <ul className="space-y-3 text-xs text-purple-100 font-medium">
                <li className="flex items-start gap-2.5">
                  <span className="text-emerald-400 font-bold">✓</span>
                  <span>Zero-wait 30-min home sample collection by certified phlebotomists</span>
                </li>
                <li className="flex items-start gap-2.5">
                  <span className="text-emerald-400 font-bold">✓</span>
                  <span>Barcoded sample tubes & 100% temperature-monitored cold chain</span>
                </li>
                <li className="flex items-start gap-2.5">
                  <span className="text-emerald-400 font-bold">✓</span>
                  <span>Auto-synced backend digital health record with post-report doctor chat</span>
                </li>
              </ul>
            </div>

          </div>
        </div>

        {/* Bottom Callout Banner */}
        <div className="bg-gradient-to-r from-purple-900 via-purple-950 to-slate-950 rounded-3xl p-8 md:p-12 text-white shadow-2xl flex flex-col md:flex-row items-center justify-between gap-8 text-left">
          <div className="space-y-3 max-w-xl">
            <span className="text-[10px] font-black uppercase px-3 py-1 rounded-full bg-emerald-500 text-slate-950">
              Need Custom Healthcare Advice?
            </span>
            <h3 className="text-2xl sm:text-3xl font-extrabold text-white">
              Have a doctor's prescription or custom test list?
            </h3>
            <p className="text-xs sm:text-sm text-purple-200 leading-relaxed">
              Upload your prescription file in 30 seconds to receive instant partner lab quotes and free care manager guidance.
            </p>
          </div>

          <div className="flex flex-col sm:flex-row gap-3 w-full md:w-auto shrink-0">
            <button
              onClick={onOpenUploadModal}
              className="px-8 py-4 rounded-2xl bg-emerald-500 hover:bg-emerald-400 text-slate-950 font-extrabold text-xs sm:text-sm shadow-xl flex items-center justify-center gap-2 transition-all hover:scale-105"
            >
              <Upload className="w-4 h-4 text-slate-950" />
              <span>Upload Prescription Now</span>
            </button>

            <button
              onClick={() => openWhatsApp(DEFAULT_MESSAGES.prescription)}
              className="px-6 py-4 rounded-2xl bg-white/10 hover:bg-white/20 text-white font-extrabold text-xs sm:text-sm border border-white/20 flex items-center justify-center gap-2 transition-all"
            >
              <MessageSquare className="w-4 h-4 text-emerald-400" />
              <span>Chat with Care Manager</span>
            </button>
          </div>
        </div>

      </div>
    </div>
  );
}
