import React, { useState, useEffect, useRef } from 'react';
import { Link, useNavigate } from 'react-router-dom';
import { 
  Search, Upload, ArrowRight, CheckCircle, Sparkles, MessageSquare, 
  FlaskConical, Scan, Home, Dna, FileCheck, ShieldCheck, ChevronRight, Activity, X
} from 'lucide-react';
import { openWhatsApp, DEFAULT_MESSAGES } from '../../utils/whatsapp';
import DiscountHeroBanner from '../common/DiscountHeroBanner';
import { searchServicesQuery } from '../../services/serviceSearchEngine';

const ROTATING_PLACEHOLDERS = [
  "Search for a blood test (e.g. CBC, HbA1c)...",
  "Find nursing care or dressing at home...",
  "Search a diagnostic scan (e.g. MRI, CT, X-Ray)...",
  "Search a health package or full body checkup...",
  "Find genetic screening or precision tests..."
];

const POPULAR_CHIPS = [
  { label: 'CBC Test', query: 'cbc' },
  { label: 'Thyroid Profile', query: 'thyroid' },
  { label: 'MRI Brain', query: 'mri' },
  { label: 'HbA1c Test', query: 'hba1c' },
  { label: 'Home Nursing', query: 'nursing' }
];

export default function HeroSection({ onOpenUploadModal }) {
  const navigate = useNavigate();
  const [placeholderIndex, setPlaceholderIndex] = useState(0);
  const [searchQuery, setSearchQuery] = useState('');
  const [isSearchFocused, setIsSearchFocused] = useState(false);
  const [searchResults, setSearchResults] = useState([]);
  const [isSearching, setIsSearching] = useState(false);
  const searchContainerRef = useRef(null);

  // Rotating placeholder effect
  useEffect(() => {
    const interval = setInterval(() => {
      setPlaceholderIndex((prev) => (prev + 1) % ROTATING_PLACEHOLDERS.length);
    }, 3200);
    return () => clearInterval(interval);
  }, []);

  // Debounced search query resolution
  useEffect(() => {
    if (!searchQuery.trim()) {
      setSearchResults([]);
      setIsSearching(false);
      return;
    }

    setIsSearching(true);
    const handler = setTimeout(async () => {
      const res = await searchServicesQuery(searchQuery, { limit: 5 });
      setSearchResults(res.items || []);
      setIsSearching(false);
    }, 200);

    return () => clearTimeout(handler);
  }, [searchQuery]);

  // Close search dropdown on click outside
  useEffect(() => {
    const handleClickOutside = (e) => {
      if (searchContainerRef.current && !searchContainerRef.current.contains(e.target)) {
        setIsSearchFocused(false);
      }
    };
    document.addEventListener('mousedown', handleClickOutside);
    return () => document.removeEventListener('mousedown', handleClickOutside);
  }, []);

  const handleSelectService = (slug) => {
    setIsSearchFocused(false);
    navigate(`/services/${slug}`);
  };

  const handleOpenChatbot = () => {
    // Dispatch custom event to trigger global assistant modal
    window.dispatchEvent(new CustomEvent('open-health-express-assistant'));
  };

  return (
    <section className="relative overflow-hidden bg-gradient-to-b from-purple-50/80 via-slate-50/50 to-white pt-6 pb-16 md:pt-12 md:pb-24">
      
      {/* Background ECG Waveform & Ambient Glow Orbs */}
      <div className="absolute top-1/4 left-0 right-0 h-48 opacity-10 pointer-events-none -z-10 flex items-center justify-center">
        <svg viewBox="0 0 1200 120" className="w-full h-full text-purple-600 fill-none stroke-current stroke-[2] stroke-linecap-round">
          <path d="M0,60 L250,60 L280,30 L300,90 L320,10 L340,110 L360,60 L390,60 L420,60 L1200,60" className="animate-ecg" />
        </svg>
      </div>

      <div className="absolute top-0 right-1/4 w-96 h-96 bg-purple-200/40 rounded-full blur-3xl pointer-events-none -z-10 animate-pulse-glow" />
      <div className="absolute bottom-10 left-10 w-80 h-80 bg-indigo-200/30 rounded-full blur-2xl pointer-events-none -z-10" />

      <div className="max-w-7xl mx-auto px-4 sm:px-6 lg:px-8 relative z-10">
        <div className="grid grid-cols-1 lg:grid-cols-12 gap-10 lg:gap-8 items-center">
          
          {/* LEFT COLUMN: POSITIONING, HEADLINE, SEARCH & CTAS */}
          <div className="lg:col-span-7 space-y-6 text-left">
            
            {/* Positioning Eyebrow & Promo Offer */}
            <div className="flex flex-wrap items-center gap-2">
              <DiscountHeroBanner />

              <span className="px-3.5 py-1 rounded-full bg-purple-100/90 border border-purple-200 text-purple-900 font-extrabold text-[11px] uppercase tracking-wider shadow-2xs">
                ⚡ HEALTH EXPRESS PLATFORM
              </span>
            </div>

            {/* Premium Editorial Headline */}
            <h1 className="text-3xl sm:text-5xl lg:text-6xl font-extrabold text-slate-900 tracking-tight leading-[1.12]">
              Healthcare,<br />
              <span className="gradient-text-purple">connected around you.</span>
            </h1>

            {/* Supporting Description */}
            <p className="text-sm sm:text-base text-slate-600 font-medium leading-relaxed max-w-xl">
              From diagnostics and home healthcare to specialist services and preventive care, Health Express helps you discover, coordinate and manage healthcare for you and your family.
            </p>

            {/* UNIVERSAL HEALTHCARE COMMAND SEARCH */}
            <div ref={searchContainerRef} className="relative max-w-xl space-y-2.5 pt-1">
              
              {/* Command Search Bar Input Container */}
              <div 
                className={`relative flex items-center bg-white rounded-2xl border-2 transition-all duration-300 shadow-lg ${
                  isSearchFocused ? 'border-purple-600 ring-4 ring-purple-100' : 'border-purple-200 hover:border-purple-300'
                }`}
              >
                <div className="pl-4 text-purple-700">
                  <Search className="w-5 h-5" />
                </div>

                <input
                  type="text"
                  value={searchQuery}
                  onChange={(e) => setSearchQuery(e.target.value)}
                  onFocus={() => setIsSearchFocused(true)}
                  placeholder={ROTATING_PLACEHOLDERS[placeholderIndex]}
                  className="w-full py-4 pl-3 pr-10 text-xs sm:text-sm font-semibold text-slate-900 placeholder:text-slate-400 bg-transparent outline-none"
                />

                {searchQuery ? (
                  <button
                    onClick={() => setSearchQuery('')}
                    className="pr-4 text-slate-400 hover:text-slate-600 text-xs font-bold"
                  >
                    <X className="w-4 h-4" />
                  </button>
                ) : (
                  <div className="pr-4 hidden sm:flex items-center gap-1 text-[11px] font-extrabold text-purple-700 bg-purple-50 px-2.5 py-1 rounded-lg border border-purple-100">
                    <span>Search</span>
                    <ArrowRight className="w-3 h-3" />
                  </div>
                )}
              </div>

              {/* SEARCH SUGGESTIONS & AUTOCOMPLETE DROPDOWN */}
              {isSearchFocused && (
                <div className="absolute top-full left-0 right-0 mt-2 bg-white rounded-2xl border border-purple-200 shadow-2xl z-50 overflow-hidden animate-in fade-in">
                  
                  {isSearching ? (
                    <div className="p-4 text-xs font-semibold text-slate-500 flex items-center gap-2">
                      <div className="w-3.5 h-3.5 border-2 border-purple-600 border-t-transparent rounded-full animate-spin" />
                      <span>Searching healthcare catalog...</span>
                    </div>
                  ) : searchQuery && searchResults.length > 0 ? (
                    <div className="p-2 space-y-1">
                      <div className="px-3 py-1 text-[10px] uppercase font-extrabold tracking-wider text-slate-400">
                        Matching Healthcare Services
                      </div>
                      {searchResults.map((item) => (
                        <button
                          key={item.id}
                          onClick={() => handleSelectService(item.slug)}
                          className="w-full text-left p-3 rounded-xl hover:bg-purple-50 flex items-center justify-between transition-colors group cursor-pointer"
                        >
                          <div className="overflow-hidden">
                            <div className="text-xs font-bold text-slate-900 group-hover:text-purple-900 truncate">
                              {item.name}
                            </div>
                            <div className="text-[10px] text-slate-500 truncate">
                              {item.shortDesc || item.subcategory}
                            </div>
                          </div>
                          <span className="text-[10px] font-bold text-purple-700 bg-purple-100 px-2 py-0.5 rounded-full shrink-0">
                            View →
                          </span>
                        </button>
                      ))}
                    </div>
                  ) : searchQuery && searchResults.length === 0 ? (
                    <div className="p-5 text-center space-y-2">
                      <p className="text-xs text-slate-600 font-semibold">No direct service matches for "{searchQuery}".</p>
                      <button
                        onClick={() => {
                          setIsSearchFocused(false);
                          openWhatsApp(`Hello Health Express! I am looking for assistance with "${searchQuery}". Please guide me.`);
                        }}
                        className="inline-flex items-center gap-1.5 text-xs text-emerald-700 font-extrabold hover:underline"
                      >
                        <MessageSquare className="w-3.5 h-3.5 fill-current" />
                        <span>Ask your Health Manager on WhatsApp</span>
                      </button>
                    </div>
                  ) : (
                    /* Default Quick Categories when search focused */
                    <div className="p-3 space-y-2 text-left">
                      <div className="px-2 text-[10px] uppercase font-extrabold tracking-wider text-slate-400">
                        Popular Service Categories
                      </div>
                      <div className="grid grid-cols-2 gap-2">
                        <Link to="/services" onClick={() => setIsSearchFocused(false)} className="p-2.5 rounded-xl bg-purple-50/70 hover:bg-purple-100 text-xs font-bold text-purple-900 flex items-center gap-2">
                          <FlaskConical className="w-4 h-4 text-purple-700" />
                          <span>Lab Blood Tests</span>
                        </Link>
                        <Link to="/services" onClick={() => setIsSearchFocused(false)} className="p-2.5 rounded-xl bg-purple-50/70 hover:bg-purple-100 text-xs font-bold text-purple-900 flex items-center gap-2">
                          <Scan className="w-4 h-4 text-purple-700" />
                          <span>Diagnostic Imaging</span>
                        </Link>
                        <Link to="/services" onClick={() => setIsSearchFocused(false)} className="p-2.5 rounded-xl bg-purple-50/70 hover:bg-purple-100 text-xs font-bold text-purple-900 flex items-center gap-2">
                          <Home className="w-4 h-4 text-purple-700" />
                          <span>Home Nursing Care</span>
                        </Link>
                        <Link to="/services" onClick={() => setIsSearchFocused(false)} className="p-2.5 rounded-xl bg-purple-50/70 hover:bg-purple-100 text-xs font-bold text-purple-900 flex items-center gap-2">
                          <Dna className="w-4 h-4 text-purple-700" />
                          <span>Genetics & Genomics</span>
                        </Link>
                      </div>
                    </div>
                  )}

                </div>
              )}

              {/* 4-5 POPULAR SEARCH CHIPS */}
              <div className="flex flex-wrap items-center gap-1.5 pt-1">
                <span className="text-[11px] font-bold text-slate-400 mr-1">Popular:</span>
                {POPULAR_CHIPS.map((chip) => (
                  <button
                    key={chip.label}
                    onClick={() => {
                      setSearchQuery(chip.query);
                      setIsSearchFocused(true);
                    }}
                    className="px-2.5 py-1 rounded-full bg-white hover:bg-purple-50 text-slate-700 hover:text-purple-900 border border-slate-200 text-[11px] font-bold transition-all shadow-2xs cursor-pointer"
                  >
                    {chip.label}
                  </button>
                ))}
              </div>

            </div>

            {/* PRIMARY & SECONDARY ACTION BUTTONS */}
            <div className="flex flex-col sm:flex-row items-stretch sm:items-center gap-3.5 pt-2">
              
              {/* PRIMARY CTA: Upload Prescription with Microcopy */}
              <div className="space-y-1">
                <button
                  onClick={onOpenUploadModal}
                  className="w-full sm:w-auto group relative px-8 py-4 rounded-2xl bg-purple-700 hover:bg-purple-800 text-white font-extrabold text-sm shadow-xl shadow-purple-700/25 transition-all duration-300 hover:scale-[1.02] active:scale-[0.98] flex items-center justify-center gap-3 touch-target"
                >
                  <Upload className="w-4 h-4 text-purple-200 group-hover:scale-110 transition-transform" />
                  <span>Upload Prescription</span>
                  <ArrowRight className="w-4 h-4 text-purple-200 group-hover:translate-x-1 transition-transform" />
                </button>
                <div className="text-[11px] text-slate-500 font-semibold text-center sm:text-left pl-1">
                  ✓ No account required • Private & secure
                </div>
              </div>

              {/* SECONDARY CTA: Explore Services */}
              <Link
                to="/services"
                className="w-full sm:w-auto px-7 py-4 rounded-2xl bg-white hover:bg-purple-50 border-2 border-purple-200 text-purple-950 font-extrabold text-sm shadow-xs transition-all duration-300 hover:scale-[1.02] active:scale-[0.98] flex items-center justify-center gap-2 touch-target"
              >
                <span>Explore Services</span>
                <ChevronRight className="w-4 h-4 text-purple-700" />
              </Link>

            </div>

            {/* CONTEXTUAL AI ASSISTANT ENTRY LINK */}
            <div className="pt-2">
              <button
                onClick={handleOpenChatbot}
                className="inline-flex items-center gap-1.5 text-xs text-purple-700 font-bold hover:text-purple-900 group cursor-pointer"
              >
                <Sparkles className="w-3.5 h-3.5 text-purple-600 fill-purple-200" />
                <span>Need help finding a service? Ask Health Express Assistant</span>
                <ArrowRight className="w-3.5 h-3.5 group-hover:translate-x-1 transition-transform" />
              </button>
            </div>

            {/* Clinical Trust Statements (Factual Only) */}
            <div className="flex flex-wrap items-center gap-4 text-xs font-bold text-slate-600 pt-3 border-t border-slate-200/60 max-w-xl">
              <div className="flex items-center gap-1.5">
                <CheckCircle className="w-4 h-4 text-emerald-600 shrink-0" />
                <span>NABL Accredited Partner Labs</span>
              </div>
              <div className="flex items-center gap-1.5">
                <CheckCircle className="w-4 h-4 text-emerald-600 shrink-0" />
                <span>Certified Nursing Staff</span>
              </div>
            </div>

          </div>

          {/* RIGHT COLUMN: ASYMMETRIC LAYERED VISUAL ENVIRONMENT */}
          <div className="lg:col-span-5 flex justify-center pt-6 lg:pt-0">
            <div className="relative w-full max-w-md">
              
              {/* LAYER 1: Ambient Lighting Glow */}
              <div className="absolute -inset-4 bg-gradient-to-r from-purple-500/20 to-indigo-600/20 rounded-3xl opacity-70 blur-2xl -z-10"></div>

              {/* LAYER 3: TRANSLUCENT GLASS UI FLOATING CARDS */}
              
              {/* Floating Card 1: Home Healthcare */}
              <div className="hidden sm:flex absolute -top-4 -left-6 z-20 glass-card px-4 py-3 rounded-2xl shadow-xl border border-purple-200/90 items-center gap-3 backdrop-blur-md animate-float">
                <div className="w-8 h-8 rounded-xl bg-purple-700 text-white flex items-center justify-center font-bold text-xs shadow-xs shrink-0">
                  <Home className="w-4 h-4" />
                </div>
                <div className="text-left">
                  <div className="text-xs font-extrabold text-slate-900">Home Healthcare</div>
                  <div className="text-[10px] text-emerald-700 font-bold flex items-center gap-1">
                    <span className="w-1.5 h-1.5 rounded-full bg-emerald-500 animate-pulse" />
                    Certified Nursing Care
                  </div>
                </div>
              </div>

              {/* Floating Card 2: Lab Tests */}
              <div className="hidden sm:flex absolute -bottom-4 -right-4 z-20 glass-card px-4 py-3 rounded-2xl shadow-xl border border-purple-200/90 items-center gap-3 backdrop-blur-md animate-float-delayed">
                <div className="w-8 h-8 rounded-xl bg-emerald-600 text-white flex items-center justify-center font-bold text-xs shadow-xs shrink-0">
                  <FlaskConical className="w-4 h-4" />
                </div>
                <div className="text-left">
                  <div className="text-xs font-extrabold text-slate-900">Lab Tests</div>
                  <div className="text-[10px] text-purple-700 font-bold">NABL Accredited Partner Labs</div>
                </div>
              </div>

              {/* Floating Card 3: Prescription Received Status */}
              <div className="hidden sm:flex absolute top-1/2 -right-6 z-20 glass-card px-3.5 py-2.5 rounded-2xl shadow-lg border border-purple-200/90 items-center gap-2.5 backdrop-blur-md">
                <div className="w-7 h-7 rounded-full bg-slate-900 text-white flex items-center justify-center shrink-0">
                  <FileCheck className="w-3.5 h-3.5 text-purple-300" />
                </div>
                <div className="text-left">
                  <div className="text-[11px] font-extrabold text-slate-900">Prescription Received</div>
                  <div className="text-[9px] text-slate-500 font-semibold">Care Team Assigned</div>
                </div>
              </div>

              {/* LAYER 2: MAIN HEALTHCARE EDITORIAL PHOTOGRAPHY CONTAINER */}
              <div className="relative bg-white rounded-3xl overflow-hidden shadow-2xl border-4 border-white group text-left">
                <div className="relative h-72 sm:h-84 w-full overflow-hidden">
                  <img
                    src="/hero_home_care.jpg"
                    alt="Health Express Care Manager providing personalized healthcare assistance"
                    className="w-full h-full object-cover object-center group-hover:scale-105 transition-transform duration-700"
                  />
                  <div className="absolute inset-0 bg-gradient-to-t from-slate-950/85 via-slate-950/20 to-transparent" />
                  
                  <div className="absolute bottom-4 left-4 right-4 text-white">
                    <span className="text-[10px] font-black uppercase px-3 py-1 rounded-full bg-purple-700 text-white backdrop-blur-md shadow-inner">
                      Professional Home Care
                    </span>
                    <h3 className="text-sm font-extrabold text-white mt-2 drop-shadow-sm">
                      Care coordinated in the comfort of your home.
                    </h3>
                  </div>
                </div>

                {/* Direct Action Link Strip */}
                <div className="p-4 bg-white">
                  <Link
                    to="/services"
                    className="w-full py-3 rounded-xl bg-slate-900 hover:bg-purple-900 text-white font-extrabold text-xs flex items-center justify-center gap-2 transition-all shadow-md active:scale-95"
                  >
                    <span>View All Healthcare Services</span>
                    <ArrowRight className="w-4 h-4 text-purple-300" />
                  </Link>
                </div>
              </div>

            </div>
          </div>

        </div>
      </div>
    </section>
  );
}
