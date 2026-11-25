import React, { useState } from 'react';
import { useNavigate, Link } from 'react-router-dom';
import { Search, Upload, ArrowRight, X, Sparkles } from 'lucide-react';
import { openWhatsApp } from '../../utils/whatsapp';
import CareManagerBookingCard from './CareManagerBookingCard';

export default function PageHeroBanner({
  badge,
  headline,
  supportingLine,
  showSearch = true,
  searchPlaceholder = "Search for tests, scans, packages, or services...",
  searchValue = "",
  onSearchChange,
  ctaButton, // Optional e.g. { label: "Explore Services", href: "/services" }
  bgImage, // Optional background image URL for subtle right-fade
  onOpenUploadModal,
  rightContent
}) {
  const navigate = useNavigate();
  const [localSearch, setLocalSearch] = useState('');

  const currentSearch = onSearchChange ? searchValue : localSearch;

  const handleSearchSubmit = (e) => {
    e.preventDefault();
    const query = currentSearch.trim();
    if (!query) return;
    navigate(`/services?search=${encodeURIComponent(query)}`);
  };

  const handleChange = (e) => {
    const val = e.target.value;
    if (onSearchChange) {
      onSearchChange(val);
    } else {
      setLocalSearch(val);
    }
  };

  const handleClear = () => {
    if (onSearchChange) {
      onSearchChange('');
    } else {
      setLocalSearch('');
    }
  };

  return (
    <section className="relative overflow-hidden bg-gradient-to-b from-slate-50 via-purple-50/15 to-white pt-3 pb-8 sm:pt-4 sm:pb-10 font-sans border-b border-slate-100">
      
      {/* Optional Light Background Image (Faded from Left to Right) */}
      {bgImage && (
        <div 
          className="absolute inset-0 bg-right bg-no-repeat bg-contain opacity-10 pointer-events-none -z-10"
          style={{ backgroundImage: `url('${bgImage}')` }}
        />
      )}

      {/* Ambient Lighting Backdrop */}
      <div className="absolute top-0 right-1/4 w-[400px] h-[400px] bg-purple-200/20 rounded-full blur-3xl pointer-events-none -z-10" />

      <div className="max-w-7xl mx-auto px-4 sm:px-6 lg:px-8 relative z-10">
        
        {/* TOP NOTICE: UP TO 70% OFF & CARE MANAGER WHATSAPP LINK */}
        <div className="mb-4 bg-gradient-to-r from-slate-900 via-purple-950 to-slate-900 text-white py-2 px-3.5 sm:px-5 rounded-xl shadow-xs border border-purple-800/40 flex flex-wrap items-center justify-between gap-2.5 text-xs font-medium">
          <div className="flex flex-wrap items-center gap-2">
            <span className="bg-amber-400 text-slate-950 font-black px-2 py-0.5 rounded text-[10px] uppercase tracking-wider shrink-0">
              OFFER
            </span>
            <span className="font-extrabold text-amber-300 text-xs sm:text-sm">Upto 70% off</span>
            <span className="text-slate-300">on select services.</span>
          </div>

          <button
            onClick={() => openWhatsApp("Hello Health Express, I would like to connect with my Care Manager today for the up to 70% discount offer.")}
            className="text-amber-300 hover:text-white font-bold underline transition-colors cursor-pointer inline-flex items-center gap-1 active:scale-95"
          >
            <span>Connect with your Care Manager Today</span>
            <span>→</span>
          </button>
        </div>

        <div className="grid grid-cols-1 lg:grid-cols-12 gap-6 lg:gap-8 items-center">
          
          {/* LEFT SIDE: HEADLINE, SUPPORTING LINE, SEARCH, MICROCOPY & CTAS */}
          <div className="lg:col-span-7 space-y-4 text-left">
            
            {/* Optional Category Eyebrow */}
            {badge && (
              <div>
                <span className="inline-flex items-center gap-1.5 px-3 py-0.5 rounded-full bg-purple-100 text-purple-900 border border-purple-200 text-[10px] sm:text-[11px] font-extrabold uppercase tracking-widest">
                  <Sparkles className="w-3 h-3 text-purple-700" />
                  {badge}
                </span>
              </div>
            )}

            {/* Headline */}
            <h1 className="text-2xl sm:text-3xl lg:text-4xl font-extrabold text-slate-900 tracking-tight leading-tight">
              {headline}
            </h1>

            {/* Supporting line */}
            <p className="text-xs sm:text-sm text-slate-600 font-medium leading-relaxed max-w-xl">
              {supportingLine}
            </p>

            {/* PROMINENT SEARCH BAR OR EXPLORE CTA */}
            {showSearch ? (
              <div className="space-y-1.5 pt-1 max-w-xl">
                <form onSubmit={handleSearchSubmit} className="relative flex items-center bg-white rounded-xl border-2 border-slate-200 hover:border-purple-300 focus-within:border-purple-600 focus-within:ring-3 focus-within:ring-purple-100 transition-all shadow-xs">
                  <div className="pl-3.5 text-purple-700">
                    <Search className="w-4 h-4 sm:w-5 sm:h-5" />
                  </div>

                  <input
                    type="text"
                    value={currentSearch}
                    onChange={handleChange}
                    placeholder={searchPlaceholder}
                    className="w-full py-3 pl-2.5 pr-20 text-xs sm:text-sm font-semibold text-slate-900 placeholder:text-slate-400 bg-transparent outline-none"
                  />

                  {currentSearch ? (
                    <button
                      type="button"
                      onClick={handleClear}
                      className="pr-3 text-slate-400 hover:text-slate-600 text-xs font-bold cursor-pointer"
                    >
                      <X className="w-4 h-4" />
                    </button>
                  ) : (
                    <button
                      type="submit"
                      className="mr-2 hidden sm:flex items-center gap-1 text-[11px] font-bold text-white bg-purple-700 hover:bg-purple-800 px-3 py-1.5 rounded-lg transition-colors cursor-pointer"
                    >
                      <span>Search</span>
                      <ArrowRight className="w-3 h-3" />
                    </button>
                  )}
                </form>

                {/* MANDATORY MICROCOPY BELOW SEARCH BAR */}
                <p className="text-[11px] sm:text-xs text-slate-500 font-medium italic pl-1">
                  Book with confidence—your Health Manager will call with preparation instructions.
                </p>
              </div>
            ) : ctaButton ? (
              <div className="space-y-2 pt-1">
                <Link
                  to={ctaButton.href || "/services"}
                  className="inline-flex items-center gap-2 px-6 py-3 rounded-xl bg-purple-700 hover:bg-purple-800 text-white font-bold text-xs sm:text-sm shadow-md transition-all active:scale-95"
                >
                  <span>{ctaButton.label || "Explore Services"}</span>
                  <ArrowRight className="w-4 h-4" />
                </Link>
                {/* MANDATORY MICROCOPY */}
                <p className="text-[11px] sm:text-xs text-slate-500 font-medium italic pl-0.5">
                  Book with confidence—your Health Manager will call with preparation instructions.
                </p>
              </div>
            ) : null}

            {/* CTAS: BIGGER & WIDER UPLOAD PRESCRIPTION */}
            {onOpenUploadModal && (
              <div className="pt-2 flex flex-col sm:flex-row items-stretch sm:items-center gap-3">
                <button
                  type="button"
                  onClick={onOpenUploadModal}
                  className="w-full sm:w-auto px-8 py-3.5 rounded-xl bg-purple-700 hover:bg-purple-800 text-white font-extrabold text-sm shadow-md shadow-purple-700/20 transition-all flex items-center justify-center gap-2.5 active:scale-95 cursor-pointer"
                >
                  <Upload className="w-4.5 h-4.5 text-purple-200" />
                  <span>Upload Prescription</span>
                  <ArrowRight className="w-4 h-4 text-purple-200" />
                </button>

                <Link
                  to="/services"
                  className="w-full sm:w-auto px-6 py-3.5 rounded-xl bg-white hover:bg-slate-50 border border-slate-200 text-slate-800 font-semibold text-xs sm:text-sm shadow-2xs transition-all flex items-center justify-center gap-2 active:scale-95"
                >
                  <span>Explore All Services</span>
                </Link>
              </div>
            )}

          </div>

          {/* RIGHT SIDE: HASSLE-FREE HEALTHCARE BOOKING WHATSAPP CARD OR CUSTOM CONTENT */}
          <div className="lg:col-span-5 flex justify-center pt-2 lg:pt-0">
            {rightContent || <CareManagerBookingCard className="w-full max-w-md" />}
          </div>

        </div>

      </div>
    </section>
  );
}
