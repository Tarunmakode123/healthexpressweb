import React, { useState, useEffect, useRef } from 'react';
import { Link, useNavigate } from 'react-router-dom';
import { 
  Search, Upload, ArrowRight, CheckCircle, Sparkles, MessageSquare, 
  FlaskConical, Scan, Home, Dna, FileCheck, ShieldCheck, ChevronRight, X
} from 'lucide-react';
import { openWhatsApp } from '../../utils/whatsapp';
import { searchServicesQuery } from '../../services/serviceSearchEngine';

const ROTATING_PLACEHOLDERS = [
  "Search healthcare services, tests, scans or care...",
  "Search for a blood test (e.g. CBC, HbA1c)...",
  "Find nursing care or dressing at home...",
  "Search a diagnostic scan (e.g. MRI, CT)...",
  "Find a health package..."
];

const POPULAR_CHIPS = [
  { label: 'CBC', query: 'cbc' },
  { label: 'Thyroid Profile', query: 'thyroid' },
  { label: 'MRI Brain', query: 'mri' },
  { label: 'HbA1c', query: 'hba1c' },
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
    }, 3500);
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
    window.dispatchEvent(new CustomEvent('open-health-express-assistant'));
  };

  return (
    <section className="relative overflow-hidden bg-slate-50/50 pt-4 pb-12 sm:pt-8 sm:pb-20">
      
      {/* Soft Ambient Radial Background Lighting */}
      <div className="absolute top-0 right-1/4 w-[480px] h-[480px] bg-purple-100/40 rounded-full blur-3xl pointer-events-none -z-10" />
      <div className="absolute bottom-0 left-10 w-96 h-96 bg-indigo-100/30 rounded-full blur-3xl pointer-events-none -z-10" />

      <div className="max-w-7xl mx-auto px-4 sm:px-6 lg:px-8 relative z-10">
        <div className="grid grid-cols-1 lg:grid-cols-12 gap-8 lg:gap-12 items-center">
          
          {/* LEFT COLUMN: EDITORIAL BRAND POSITIONING & DISCOVERY SYSTEM */}
          <div className="lg:col-span-7 space-y-5 text-left">
            
            {/* SINGLE SUBTLE EYEBROW */}
            <div>
              <span className="inline-flex items-center gap-1.5 px-3 py-1 rounded-full bg-purple-100/80 border border-purple-200/60 text-purple-900 font-extrabold text-[11px] uppercase tracking-widest shadow-2xs">
                YOUR FAMILY'S HEALTH, SIMPLIFIED
              </span>
            </div>

            {/* EDITORIAL BRAND HEADLINE */}
            <h1 className="text-3xl sm:text-5xl lg:text-[56px] font-extrabold text-slate-900 tracking-tight leading-[1.12]">
              Your personal<br />
              <span className="text-purple-700">health manager,</span><br />
              for you and your family.
            </h1>

            {/* CONCISE SUPPORTING COPY */}
            <p className="text-base sm:text-lg text-slate-600 font-normal leading-relaxed max-w-[560px]">
              From diagnostics and home healthcare to specialist services and preventive care, Health Express helps you discover, coordinate and manage healthcare for you and your family.
            </p>

            {/* UNIVERSAL HEALTHCARE COMMAND SEARCH */}
            <div ref={searchContainerRef} className="relative max-w-xl space-y-2.5 pt-1">
              
              {/* Search Bar Input */}
              <div 
                className={`relative flex items-center bg-white rounded-2xl border transition-all duration-200 shadow-sm ${
                  isSearchFocused ? 'border-purple-600 ring-3 ring-purple-100' : 'border-slate-200 hover:border-slate-300'
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
                  className="w-full py-3.5 pl-3 pr-10 text-xs sm:text-sm font-medium text-slate-900 placeholder:text-slate-400 bg-transparent outline-none"
                />

                {searchQuery ? (
                  <button
                    onClick={() => setSearchQuery('')}
                    className="pr-4 text-slate-400 hover:text-slate-600 text-xs font-bold"
                  >
                    <X className="w-4 h-4" />
                  </button>
                ) : (
                  <div className="pr-4 hidden sm:flex items-center gap-1 text-[11px] font-bold text-slate-500 bg-slate-100 px-2.5 py-1 rounded-lg">
                    <span>Search</span>
                    <ArrowRight className="w-3 h-3" />
                  </div>
                )}
              </div>

              {/* SEARCH AUTOCOMPLETE DROPDOWN */}
              {isSearchFocused && (
                <div className="absolute top-full left-0 right-0 mt-2 bg-white rounded-2xl border border-slate-200 shadow-xl z-50 overflow-hidden animate-in fade-in">
                  
                  {isSearching ? (
                    <div className="p-4 text-xs font-semibold text-slate-500 flex items-center gap-2">
                      <div className="w-3.5 h-3.5 border-2 border-purple-600 border-t-transparent rounded-full animate-spin" />
                      <span>Searching catalog...</span>
                    </div>
                  ) : searchQuery && searchResults.length > 0 ? (
                    <div className="p-2 space-y-1">
                      <div className="px-3 py-1 text-[10px] uppercase font-bold tracking-wider text-slate-400">
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
                      <p className="text-xs text-slate-600 font-medium">No direct service matches for "{searchQuery}".</p>
                      <button
                        onClick={() => {
                          setIsSearchFocused(false);
                          openWhatsApp(`Hello Health Express! I am looking for assistance with "${searchQuery}". Please guide me.`);
                        }}
                        className="inline-flex items-center gap-1.5 text-xs text-emerald-700 font-bold hover:underline"
                      >
                        <MessageSquare className="w-3.5 h-3.5 fill-current" />
                        <span>Ask your Health Manager on WhatsApp</span>
                      </button>
                    </div>
                  ) : (
                    /* Default Service Quick Categories */
                    <div className="p-3 space-y-2 text-left">
                      <div className="px-2 text-[10px] uppercase font-bold tracking-wider text-slate-400">
                        Popular Service Categories
                      </div>
                      <div className="grid grid-cols-2 gap-2">
                        <Link to="/services" onClick={() => setIsSearchFocused(false)} className="p-2.5 rounded-xl bg-slate-50 hover:bg-purple-50 text-xs font-semibold text-slate-900 hover:text-purple-900 flex items-center gap-2 transition-colors">
                          <FlaskConical className="w-4 h-4 text-purple-700" />
                          <span>Lab Blood Tests</span>
                        </Link>
                        <Link to="/services" onClick={() => setIsSearchFocused(false)} className="p-2.5 rounded-xl bg-slate-50 hover:bg-purple-50 text-xs font-semibold text-slate-900 hover:text-purple-900 flex items-center gap-2 transition-colors">
                          <Scan className="w-4 h-4 text-purple-700" />
                          <span>Diagnostic Imaging</span>
                        </Link>
                        <Link to="/services" onClick={() => setIsSearchFocused(false)} className="p-2.5 rounded-xl bg-slate-50 hover:bg-purple-50 text-xs font-semibold text-slate-900 hover:text-purple-900 flex items-center gap-2 transition-colors">
                          <Home className="w-4 h-4 text-purple-700" />
                          <span>Home Nursing Care</span>
                        </Link>
                        <Link to="/services" onClick={() => setIsSearchFocused(false)} className="p-2.5 rounded-xl bg-slate-50 hover:bg-purple-50 text-xs font-semibold text-slate-900 hover:text-purple-900 flex items-center gap-2 transition-colors">
                          <Dna className="w-4 h-4 text-purple-700" />
                          <span>Genetics & Genomics</span>
                        </Link>
                      </div>
                    </div>
                  )}

                </div>
              )}

              {/* POPULAR SEARCH SUGGESTION CHIPS */}
              <div className="flex flex-wrap items-center gap-1.5 pt-1">
                <span className="text-[11px] font-semibold text-slate-400 mr-1">Popular:</span>
                {POPULAR_CHIPS.map((chip) => (
                  <button
                    key={chip.label}
                    onClick={() => {
                      setSearchQuery(chip.query);
                      setIsSearchFocused(true);
                    }}
                    className="px-2.5 py-1 rounded-full bg-slate-100 hover:bg-purple-50 text-slate-700 hover:text-purple-900 text-[11px] font-medium transition-colors cursor-pointer"
                  >
                    {chip.label}
                  </button>
                ))}
              </div>

            </div>

            {/* PRIMARY & SECONDARY ACTION BUTTONS */}
            <div className="flex flex-col sm:flex-row items-stretch sm:items-center gap-3.5 pt-2">
              
              {/* PRIMARY CTA */}
              <div>
                <button
                  onClick={onOpenUploadModal}
                  className="w-full sm:w-auto px-7 py-3.5 rounded-xl bg-purple-700 hover:bg-purple-800 text-white font-bold text-sm shadow-md shadow-purple-700/15 transition-all flex items-center justify-center gap-2.5 touch-target active:scale-95"
                >
                  <Upload className="w-4 h-4 text-purple-200" />
                  <span>Upload Prescription</span>
                  <ArrowRight className="w-4 h-4 text-purple-200" />
                </button>
                <div className="text-[11px] text-slate-500 font-medium text-center sm:text-left pt-1 pl-0.5">
                  ✓ No account required • Private & secure
                </div>
              </div>

              {/* SECONDARY CTA */}
              <Link
                to="/services"
                className="w-full sm:w-auto px-6 py-3.5 rounded-xl bg-white hover:bg-slate-50 border border-slate-200 text-slate-800 font-semibold text-sm shadow-2xs transition-all flex items-center justify-center gap-2 touch-target active:scale-95"
              >
                <span>Explore Services</span>
                <ChevronRight className="w-4 h-4 text-slate-400" />
              </Link>

            </div>

            {/* ASSISTANT ENTRY LINK */}
            <div className="pt-1">
              <button
                onClick={handleOpenChatbot}
                className="inline-flex items-center gap-1.5 text-xs text-purple-700 font-semibold hover:text-purple-900 group cursor-pointer"
              >
                <Sparkles className="w-3.5 h-3.5 text-purple-600 fill-purple-100" />
                <span>Need help finding a service? Ask Health Express Assistant</span>
                <ArrowRight className="w-3.5 h-3.5 group-hover:translate-x-1 transition-transform" />
              </button>
            </div>

            {/* TRUST STATEMENTS */}
            <div className="flex flex-wrap items-center gap-5 text-xs font-semibold text-slate-500 pt-3 border-t border-slate-200/80 max-w-xl">
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

          {/* RIGHT COLUMN: INTEGRATED EDITORIAL HUMAN CARE PHOTOGRAPHY */}
          <div className="lg:col-span-5 flex justify-center pt-4 lg:pt-0">
            <div className="relative w-full max-w-md">
              
              {/* Subtle Natural Background Depth Glow */}
              <div className="absolute -inset-3 bg-gradient-to-tr from-purple-200/40 via-indigo-100/30 to-slate-100/50 rounded-[32px] blur-xl -z-10" />

              {/* SINGLE SUBTLE CONTEXTUAL FLOATING CARD (STRICT MAX 1) */}
              <div className="hidden sm:flex absolute -bottom-3 -right-3 sm:-right-4 z-20 bg-white/95 px-4 py-3 rounded-2xl shadow-lg border border-slate-200/80 items-center gap-3 backdrop-blur-sm">
                <div className="w-8 h-8 rounded-xl bg-slate-900 text-white flex items-center justify-center font-bold text-xs shrink-0">
                  <FileCheck className="w-4 h-4 text-purple-300" />
                </div>
                <div className="text-left">
                  <div className="text-xs font-bold text-slate-900">Prescription Received</div>
                  <div className="text-[10px] text-slate-500 font-medium">Care Team Assigned</div>
                </div>
              </div>

              {/* EDITORIAL HEALTHCARE PHOTOGRAPHY CONTAINER */}
              <div className="relative bg-white rounded-3xl overflow-hidden shadow-xl border border-slate-100 text-left">
                <div className="relative h-80 sm:h-96 w-full overflow-hidden">
                  <img
                    src="/hero_home_care.jpg"
                    alt="Health Express Care Manager providing personalized home healthcare"
                    className="w-full h-full object-cover object-center"
                  />
                  <div className="absolute inset-0 bg-gradient-to-t from-slate-950/80 via-slate-950/15 to-transparent" />
                  
                  <div className="absolute bottom-5 left-5 right-5 text-white">
                    <span className="text-[10px] font-bold uppercase tracking-wider px-2.5 py-1 rounded-md bg-purple-700/90 text-white backdrop-blur-xs">
                      Professional Home Care
                    </span>
                    <h3 className="text-sm font-semibold text-white/95 mt-2">
                      Care coordinated in the comfort of your home.
                    </h3>
                  </div>
                </div>
              </div>

            </div>
          </div>

        </div>
      </div>
    </section>
  );
}

