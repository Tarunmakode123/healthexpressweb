import React, { useState } from 'react';
import { Link } from 'react-router-dom';
import { 
  ALL_SERVICES, CATEGORIES 
} from '../data/services';
import { 
  FlaskConical, Scan, Dna, Home, Stethoscope, ShieldCheck, 
  Search, Clock, ChevronRight, MessageSquare, PhoneCall, 
  Upload, ArrowRight, Zap, AlertCircle, CheckCircle2
} from 'lucide-react';
import { openWhatsApp } from '../utils/whatsapp';
import { HEALTH_MANAGER_PHONE } from '../config/constants';

import DiscountHeroBanner from '../components/common/DiscountHeroBanner';

const categoryIconMap = {
  'lab-tests': FlaskConical,
  'imaging': Scan,
  'genetics': Dna,
  'home-care': Home,
  'surgery': Stethoscope,
  'health-packages': ShieldCheck
};

export default function ServicesPage({ onOpenUploadModal }) {
  const [searchQuery, setSearchQuery] = useState('');
  const [activeCategoryId, setActiveCategoryId] = useState('all');

  // Filter logic across all 50 services
  const filteredServices = ALL_SERVICES.filter((service) => {
    const matchesCategory = activeCategoryId === 'all' || service.category_id === activeCategoryId;
    const q = searchQuery.toLowerCase().trim();
    if (!q) return matchesCategory;

    const matchesSearch = 
      service.name.toLowerCase().includes(q) ||
      service.shortDesc.toLowerCase().includes(q) ||
      service.description.toLowerCase().includes(q) ||
      (service.parameters && service.parameters.some(p => p.toLowerCase().includes(q)));

    return matchesCategory && matchesSearch;
  });

  return (
    <div className="min-h-screen bg-slate-50/50 pb-20 relative overflow-hidden">
      
      {/* Header Banner */}
      <div className="bg-gradient-to-b from-purple-50/80 via-white to-slate-50/50 py-12 md:py-16 border-b border-purple-100/60">
        <div className="max-w-7xl mx-auto px-4 sm:px-6 lg:px-8 space-y-6 text-center">
          
          <DiscountHeroBanner />

          <div className="inline-flex items-center gap-2 px-4 py-1.5 rounded-full bg-purple-100/80 border border-purple-200 text-xs font-extrabold text-purple-900 shadow-2xs">
            ⚡ LIVE HEALTHCARE DIRECTORY
          </div>

          <h1 className="text-3xl sm:text-5xl font-extrabold text-slate-900 tracking-tight leading-tight max-w-3xl mx-auto">
            Comprehensive Healthcare Services,<br />
            <span className="gradient-text-purple">Coordinated For You.</span>
          </h1>

          <p className="text-sm sm:text-base text-slate-600 max-w-2xl mx-auto leading-relaxed">
            Browse verified Lab Tests, Diagnostic Imaging, Precision Genetics, Home Care Nursing, and Full Body Packages.
          </p>

          {/* Search Bar */}
          <div className="max-w-2xl mx-auto relative pt-2">
            <div className="relative flex items-center shadow-lg rounded-2xl overflow-hidden border border-purple-200 bg-white">
              <Search className="w-5 h-5 text-purple-600 absolute left-4" />
              <input
                type="text"
                value={searchQuery}
                onChange={(e) => setSearchQuery(e.target.value)}
                placeholder="Search tests (e.g. CBC, HbA1c, Thyroid, MRI, Chest X-Ray, Home Care)..."
                className="w-full pl-12 pr-10 py-4 text-xs sm:text-sm font-semibold text-slate-900 placeholder:text-slate-400 outline-none"
              />
              {searchQuery && (
                <button
                  onClick={() => setSearchQuery('')}
                  className="absolute right-4 text-xs font-bold text-slate-400 hover:text-purple-700"
                >
                  Clear
                </button>
              )}
            </div>
          </div>

        </div>
      </div>

      <div className="max-w-7xl mx-auto px-4 sm:px-6 lg:px-8 pt-8 space-y-8">
        
        {/* Category Pill Filters (Requirement 7 & 18) */}
        <div className="flex items-center justify-center gap-2 overflow-x-auto pb-2 no-scrollbar">
          <button
            onClick={() => setActiveCategoryId('all')}
            className={`px-5 py-2.5 rounded-2xl text-xs font-extrabold transition-all whitespace-nowrap ${
              activeCategoryId === 'all'
                ? 'bg-purple-700 text-white shadow-md scale-105'
                : 'bg-white hover:bg-purple-50 text-slate-700 border border-slate-200'
            }`}
          >
            All Services ({ALL_SERVICES.length})
          </button>

          {CATEGORIES.map((cat) => {
            const IconComponent = categoryIconMap[cat.id] || FlaskConical;
            const count = ALL_SERVICES.filter(s => s.category_id === cat.id).length;

            return (
              <button
                key={cat.id}
                onClick={() => setActiveCategoryId(cat.id)}
                className={`flex items-center gap-2 px-4 py-2.5 rounded-2xl text-xs font-extrabold transition-all whitespace-nowrap ${
                  activeCategoryId === cat.id
                    ? 'bg-purple-700 text-white shadow-md scale-105'
                    : 'bg-white hover:bg-purple-50 text-slate-700 border border-slate-200'
                }`}
              >
                <IconComponent className="w-3.5 h-3.5" />
                <span>{cat.name} ({count})</span>
              </button>
            );
          })}
        </div>

        {/* Results Count Strip */}
        <div className="flex items-center justify-between text-xs font-bold text-slate-500 border-b border-slate-200 pb-3">
          <span>Showing <strong className="text-purple-900">{filteredServices.length}</strong> Healthcare Services</span>
          <button onClick={onOpenUploadModal} className="text-purple-700 hover:underline flex items-center gap-1 font-extrabold">
            <Upload className="w-3.5 h-3.5" />
            <span>Have a prescription? Upload here</span>
          </button>
        </div>

        {/* SERVICE CARDS GRID */}
        {filteredServices.length > 0 ? (
          <div className="grid grid-cols-1 md:grid-cols-2 lg:grid-cols-3 gap-6">
            {filteredServices.map((service) => {
              const cat = CATEGORIES.find(c => c.id === service.category_id);
              const IconComp = categoryIconMap[service.category_id] || FlaskConical;

              return (
                <div 
                  key={service.id}
                  className="bg-white rounded-3xl p-6 border border-slate-200/80 hover:border-purple-300 shadow-xs hover:shadow-xl transition-all duration-300 flex flex-col justify-between text-left group"
                >
                  <div className="space-y-4">
                    
                    {/* Badge & Category */}
                    <div className="flex items-center justify-between gap-2">
                      <span className="text-[10px] uppercase font-black px-2.5 py-1 rounded-full bg-purple-50 text-purple-700 border border-purple-100 flex items-center gap-1">
                        <IconComp className="w-3 h-3" />
                        {cat?.name || 'Healthcare'}
                      </span>

                      <span className={`text-[10px] font-extrabold px-2.5 py-0.5 rounded-full ${
                        service.centre_visit_required
                          ? 'bg-amber-100 text-amber-900 border border-amber-200'
                          : 'bg-emerald-100 text-emerald-900 border border-emerald-200'
                      }`}>
                        {service.centre_visit_required ? 'Centre Visit Required' : 'Home Collection'}
                      </span>
                    </div>

                    {/* Title */}
                    <div>
                      <Link 
                        to={`/services/${service.slug}`}
                        className="text-lg font-bold text-slate-900 group-hover:text-purple-900 transition-colors line-clamp-1"
                      >
                        {service.name}
                      </Link>
                      <p className="text-xs text-slate-500 mt-1 line-clamp-2 leading-relaxed">
                        {service.shortDesc}
                      </p>
                    </div>

                    {/* Meta Info Pills */}
                    <div className="flex items-center gap-3 text-[11px] text-slate-600 pt-1">
                      <span className="flex items-center gap-1">
                        <Clock className="w-3.5 h-3.5 text-purple-700" />
                        {service.turnaround_time}
                      </span>
                      {service.sample_type && (
                        <span className="truncate max-w-[140px]">
                          • {service.sample_type}
                        </span>
                      )}
                    </div>

                  </div>

                  {/* Pricing & Footer Actions */}
                  <div className="pt-5 border-t border-slate-100 mt-5 space-y-3">
                    <div className="flex items-baseline justify-between">
                      <div>
                        <span className="text-xl font-extrabold text-slate-900">₹{service.discount_price}</span>
                        {service.price && (
                          <span className="text-xs text-slate-400 line-through ml-2">₹{service.price}</span>
                        )}
                      </div>
                      {service.discount_percentage && (
                        <span className="text-[10px] font-extrabold text-emerald-700 bg-emerald-50 px-2 py-0.5 rounded border border-emerald-200">
                          {service.discount_percentage} OFF
                        </span>
                      )}
                    </div>

                    <div className="grid grid-cols-2 gap-2">
                      <Link
                        to={`/services/${service.slug}`}
                        className="py-2.5 px-3 rounded-xl bg-purple-50 hover:bg-purple-100 text-purple-900 font-extrabold text-xs flex items-center justify-center gap-1 transition-colors"
                      >
                        <span>View Details</span>
                        <ChevronRight className="w-3.5 h-3.5" />
                      </Link>

                      <button
                        onClick={onOpenUploadModal}
                        className="py-2.5 px-3 rounded-xl bg-purple-700 hover:bg-purple-800 text-white font-extrabold text-xs flex items-center justify-center gap-1 transition-colors shadow-sm"
                      >
                        <span>Book Now</span>
                      </button>
                    </div>
                  </div>

                </div>
              );
            })}
          </div>
        ) : (
          /* EMPTY SEARCH STATE (Requirement 11) */
          <div className="bg-white rounded-3xl p-8 sm:p-12 border border-purple-200 shadow-xl max-w-xl mx-auto text-center space-y-5 my-8">
            <div className="w-16 h-16 rounded-full bg-purple-100 text-purple-700 flex items-center justify-center mx-auto shadow-inner">
              <Search className="w-8 h-8" />
            </div>

            <div className="space-y-2">
              <h3 className="text-2xl font-extrabold text-slate-900">Looking for something else?</h3>
              <p className="text-sm text-slate-600 leading-relaxed max-w-md mx-auto">
                Your Health Manager is here to help you navigate it. We can arrange customized blood profiles, specialized radiology scans, or home nursing options tailored for you.
              </p>
            </div>

            <div className="pt-2 flex flex-col sm:flex-row items-center justify-center gap-3">
              <a
                href={`tel:${HEALTH_MANAGER_PHONE}`}
                className="w-full sm:w-auto px-6 py-3.5 rounded-2xl bg-slate-900 hover:bg-slate-950 text-white font-extrabold text-xs flex items-center justify-center gap-2 shadow-md transition-all"
              >
                <PhoneCall className="w-4 h-4 text-purple-300" />
                <span>Speak to Your Health Manager</span>
              </a>

              <button
                onClick={() => openWhatsApp(`Hello Health Express!\n\nI searched for "${searchQuery}" on the website and would like assistance with booking.`)}
                className="w-full sm:w-auto px-6 py-3.5 rounded-2xl bg-emerald-600 hover:bg-emerald-700 text-white font-extrabold text-xs flex items-center justify-center gap-2 shadow-md transition-all"
              >
                <MessageSquare className="w-4 h-4 fill-current" />
                <span>Chat on WhatsApp</span>
              </button>
            </div>
          </div>
        )}

      </div>
    </div>
  );
}
