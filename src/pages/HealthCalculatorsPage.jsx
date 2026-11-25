import React, { useState } from 'react';
import { Link } from 'react-router-dom';
import { 
  ALL_SERVICES 
} from '../data/services';
import { 
  CALCULATORS, CALCULATOR_CATEGORIES 
} from '../data/calculators';
import { 
  Search, Sparkles, ArrowRight, ShieldCheck, CheckCircle2, ChevronRight, Calculator,
  Scale, Flame, Zap, Target, Activity, Droplet, HeartPulse, Calendar, Heart
} from 'lucide-react';
import DiscountHeroBanner from '../components/common/DiscountHeroBanner';
import PageHeroBanner from '../components/common/PageHeroBanner';

const iconMap = {
  Scale, Flame, Zap, Target, Activity, Droplet, HeartPulse, Calendar, Heart, Sparkles
};

export default function HealthCalculatorsPage({ onOpenCalculatorModal }) {
  const [searchQuery, setSearchQuery] = useState('');
  const [activeCategory, setActiveCategory] = useState('all');

  const filteredCalculators = CALCULATORS.filter(calc => {
    const matchesCat = activeCategory === 'all' || calc.category === activeCategory;
    const q = searchQuery.toLowerCase().trim();
    if (!q) return matchesCat;

    const matchesSearch = 
      calc.title.toLowerCase().includes(q) ||
      calc.shortDesc.toLowerCase().includes(q) ||
      calc.categoryName.toLowerCase().includes(q);

    return matchesCat && matchesSearch;
  });

  const handleLaunchModal = (slug) => {
    if (onOpenCalculatorModal) {
      onOpenCalculatorModal(slug);
    } else {
      window.dispatchEvent(new CustomEvent('open-calculator-modal', { detail: { slug } }));
    }
  };

  return (
    <div className="min-h-screen bg-slate-50/50 pb-20 relative text-left">
      
      {/* 1. HERO BANNER */}
      <PageHeroBanner
        badge="HEALTH CALCULATORS"
        headline="Know Your Numbers"
        supportingLine="Simple tools for smarter health choices."
        showSearch={false}
        ctaButton={{ label: "Explore Services", href: "/services" }}
        bgImage="/images/services/testimggnew.webp"
      />

      <div className="max-w-7xl mx-auto px-4 sm:px-6 lg:px-8 pt-8 space-y-8">
        
        {/* In-Page Calculator Tool Search */}
        <div className="max-w-2xl mx-auto relative">
          <div className="relative flex items-center shadow-xs rounded-xl overflow-hidden border border-purple-200 bg-white">
            <Search className="w-4 h-4 text-purple-600 absolute left-3.5" />
            <input
              type="text"
              value={searchQuery}
              onChange={(e) => setSearchQuery(e.target.value)}
              placeholder="Filter calculators (e.g. BMI, Calorie, Due Date, BMR, Water Intake)..."
              className="w-full pl-10 pr-10 py-3 text-xs sm:text-sm font-semibold text-slate-900 placeholder:text-slate-400 outline-none"
            />
            {searchQuery && (
              <button
                onClick={() => setSearchQuery('')}
                className="absolute right-3.5 text-xs font-bold text-slate-400 hover:text-purple-700 cursor-pointer"
              >
                Clear
              </button>
            )}
          </div>
        </div>
        
        {/* Category Pill Filters */}
        <div className="flex items-center justify-center gap-2 overflow-x-auto pb-2 no-scrollbar">
          <button
            onClick={() => setActiveCategory('all')}
            className={`px-5 py-2.5 rounded-2xl text-xs font-extrabold transition-all whitespace-nowrap cursor-pointer ${
              activeCategory === 'all'
                ? 'bg-purple-700 text-white shadow-md scale-105'
                : 'bg-white hover:bg-purple-50 text-slate-700 border border-slate-200'
            }`}
          >
            All Tools ({CALCULATORS.length})
          </button>

          {CALCULATOR_CATEGORIES.map((cat) => {
            const count = CALCULATORS.filter(c => c.category === cat.id).length;
            return (
              <button
                key={cat.id}
                onClick={() => setActiveCategory(cat.id)}
                className={`px-4 py-2.5 rounded-2xl text-xs font-extrabold transition-all whitespace-nowrap cursor-pointer ${
                  activeCategory === cat.id
                    ? 'bg-purple-700 text-white shadow-md scale-105'
                    : 'bg-white hover:bg-purple-50 text-slate-700 border border-slate-200'
                }`}
              >
                <span>{cat.name} ({count})</span>
              </button>
            );
          })}
        </div>

        {/* Results Count Strip */}
        <div className="flex items-center justify-between text-xs font-bold text-slate-500 border-b border-slate-200 pb-3">
          <span>Showing <strong className="text-purple-900">{filteredCalculators.length}</strong> Clinical Calculators</span>
          <span className="text-purple-700 flex items-center gap-1 font-extrabold">
            <CheckCircle2 className="w-3.5 h-3.5 text-emerald-600" />
            <span>Validated Formulas & CDC/WHO References</span>
          </span>
        </div>

        {/* TOOL CARDS GRID */}
        <div className="grid grid-cols-1 md:grid-cols-2 lg:grid-cols-3 gap-6">
          {filteredCalculators.map((calc) => {
            const IconComp = iconMap[calc.iconName] || Calculator;

            return (
              <div 
                key={calc.id}
                className="bg-white rounded-3xl p-6 border border-slate-200/80 hover:border-purple-300 shadow-xs hover:shadow-xl transition-all duration-300 flex flex-col justify-between text-left group"
              >
                <div className="space-y-4">
                  
                  {/* Badge & Category */}
                  <div className="flex items-center justify-between gap-2">
                    <span className="text-[10px] uppercase font-black px-2.5 py-1 rounded-full bg-purple-50 text-purple-700 border border-purple-100 flex items-center gap-1">
                      <IconComp className="w-3 h-3" />
                      {calc.categoryName}
                    </span>

                    <span className="text-[10px] font-extrabold px-2.5 py-0.5 rounded-full bg-emerald-50 text-emerald-700 border border-emerald-200">
                      Free Tool
                    </span>
                  </div>

                  {/* Title & Desc */}
                  <div>
                    <Link 
                      to={`/health-calculators/${calc.slug}`}
                      className="text-lg font-bold text-slate-900 group-hover:text-purple-900 transition-colors line-clamp-1"
                    >
                      {calc.title}
                    </Link>
                    <p className="text-xs text-slate-500 mt-1 line-clamp-2 leading-relaxed">
                      {calc.shortDesc}
                    </p>
                  </div>

                </div>

                {/* Footer Action Buttons */}
                <div className="pt-5 border-t border-slate-100 mt-5 grid grid-cols-2 gap-2">
                  <button
                    onClick={() => handleLaunchModal(calc.slug)}
                    className="py-2.5 px-3 rounded-xl bg-purple-700 hover:bg-purple-800 text-white font-extrabold text-xs flex items-center justify-center gap-1 transition-colors shadow-xs cursor-pointer"
                  >
                    <span>Quick Calculate</span>
                  </button>

                  <Link
                    to={`/health-calculators/${calc.slug}`}
                    className="py-2.5 px-3 rounded-xl bg-purple-50 hover:bg-purple-100 text-purple-900 font-extrabold text-xs flex items-center justify-center gap-1 transition-colors"
                  >
                    <span>Full Guide</span>
                    <ChevronRight className="w-3.5 h-3.5" />
                  </Link>
                </div>

              </div>
            );
          })}
        </div>

      </div>
    </div>
  );
}
