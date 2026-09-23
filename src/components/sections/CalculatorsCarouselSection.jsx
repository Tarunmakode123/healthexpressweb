import React, { useState } from 'react';
import { Link } from 'react-router-dom';
import { 
  Sparkles, ArrowRight, Scale, Flame, Zap, Target, Activity, Droplet, 
  HeartPulse, Calendar, Heart, ChevronLeft, ChevronRight, Calculator 
} from 'lucide-react';
import { CALCULATORS, CALCULATOR_CATEGORIES } from '../../data/calculators';

const iconMap = {
  Scale, Flame, Zap, Target, Activity, Droplet, HeartPulse, Calendar, Heart, Sparkles
};

export default function CalculatorsCarouselSection({ onOpenCalculatorModal }) {
  const [activeCategory, setActiveCategory] = useState('all');

  const filteredCalculators = activeCategory === 'all' 
    ? CALCULATORS 
    : CALCULATORS.filter(c => c.category === activeCategory);

  const handleCardClick = (slug) => {
    if (onOpenCalculatorModal) {
      onOpenCalculatorModal(slug);
    } else {
      window.dispatchEvent(new CustomEvent('open-calculator-modal', { detail: { slug } }));
    }
  };

  return (
    <section className="py-16 sm:py-24 bg-gradient-to-b from-white via-purple-50/20 to-slate-50 border-t border-b border-purple-100/60 relative overflow-hidden" id="calculators">
      
      {/* Background Accent Blur */}
      <div className="absolute top-1/2 left-1/2 -translate-x-1/2 -translate-y-1/2 w-[700px] h-[350px] bg-purple-100/30 rounded-full blur-3xl pointer-events-none -z-10" />

      <div className="max-w-7xl mx-auto px-4 sm:px-6 lg:px-8 space-y-10 text-left">
        
        {/* Section Header */}
        <div className="flex flex-col md:flex-row md:items-end justify-between gap-6">
          <div className="space-y-3 max-w-2xl">
            <div className="inline-flex items-center gap-2 px-3.5 py-1.5 rounded-full bg-purple-100 border border-purple-200 text-purple-900 text-xs font-extrabold uppercase tracking-widest shadow-2xs">
              <Sparkles className="w-3.5 h-3.5 text-purple-700" />
              <span>FREE HEALTH CALCULATORS & TOOLS</span>
            </div>
            <h2 className="text-3xl sm:text-4xl font-extrabold text-slate-900 tracking-tight leading-tight">
              Simple Health Tools,<br />
              <span className="gradient-text-purple">Instant Clinical Insights.</span>
            </h2>
            <p className="text-sm sm:text-base text-slate-600 font-medium leading-relaxed">
              Understand your BMI, daily calorie expenditure, pregnancy dates, hydration target, and blood pressure categories in seconds.
            </p>
          </div>

          <Link
            to="/health-calculators"
            className="inline-flex items-center gap-2 px-5 py-3 rounded-2xl bg-purple-700 hover:bg-purple-800 text-white font-extrabold text-xs sm:text-sm shadow-md shadow-purple-700/20 transition-all hover:scale-105 shrink-0"
          >
            <span>Explore Full Tool Library</span>
            <ArrowRight className="w-4 h-4" />
          </Link>
        </div>

        {/* Category Pills Filter */}
        <div className="flex items-center gap-2 overflow-x-auto pb-2 no-scrollbar">
          <button
            onClick={() => setActiveCategory('all')}
            className={`px-4 py-2 rounded-xl text-xs font-extrabold transition-all whitespace-nowrap cursor-pointer ${
              activeCategory === 'all'
                ? 'bg-purple-700 text-white shadow-md'
                : 'bg-white hover:bg-purple-50 text-slate-700 border border-slate-200'
            }`}
          >
            All Calculators ({CALCULATORS.length})
          </button>
          {CALCULATOR_CATEGORIES.map((cat) => (
            <button
              key={cat.id}
              onClick={() => setActiveCategory(cat.id)}
              className={`px-4 py-2 rounded-xl text-xs font-extrabold transition-all whitespace-nowrap cursor-pointer ${
                activeCategory === cat.id
                  ? 'bg-purple-700 text-white shadow-md'
                  : 'bg-white hover:bg-purple-50 text-slate-700 border border-slate-200'
              }`}
            >
              {cat.name}
            </button>
          ))}
        </div>

        {/* Carousel Grid Cards */}
        <div className="grid grid-cols-1 sm:grid-cols-2 lg:grid-cols-3 gap-6">
          {filteredCalculators.map((calc) => {
            const IconComponent = iconMap[calc.iconName] || Calculator;

            return (
              <div
                key={calc.id}
                onClick={() => handleCardClick(calc.slug)}
                className="bg-white rounded-3xl p-6 border border-purple-100 shadow-md shadow-purple-900/5 hover:border-purple-300 hover:shadow-xl transition-all duration-300 group cursor-pointer flex flex-col justify-between space-y-5 text-left transform hover:-translate-y-1 relative overflow-hidden"
              >
                <div className="space-y-4">
                  <div className="flex items-center justify-between">
                    <div className="w-12 h-12 rounded-2xl bg-purple-50 text-purple-700 border border-purple-100 flex items-center justify-center group-hover:bg-purple-700 group-hover:text-white transition-colors shadow-2xs">
                      <IconComponent className="w-6 h-6" />
                    </div>
                    <span className="text-[10px] font-extrabold uppercase tracking-wider px-2.5 py-1 rounded-full bg-purple-50 text-purple-800 border border-purple-100">
                      {calc.categoryName}
                    </span>
                  </div>

                  <div className="space-y-1.5">
                    <h3 className="text-lg font-extrabold text-slate-900 group-hover:text-purple-900 transition-colors">
                      {calc.title}
                    </h3>
                    <p className="text-xs text-slate-600 font-medium leading-relaxed line-clamp-2">
                      {calc.shortDesc}
                    </p>
                  </div>
                </div>

                <div className="pt-3 border-t border-slate-100 flex items-center justify-between text-xs font-extrabold text-purple-700 group-hover:text-purple-900">
                  <span className="flex items-center gap-1.5">
                    <Calculator className="w-3.5 h-3.5" />
                    <span>Calculate Now (Instant)</span>
                  </span>
                  <ArrowRight className="w-4 h-4 group-hover:translate-x-1.5 transition-transform" />
                </div>
              </div>
            );
          })}
        </div>

      </div>
    </section>
  );
}
