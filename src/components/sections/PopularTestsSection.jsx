import React from 'react';
import { Link } from 'react-router-dom';
import { Droplet, Grid, Activity, Sun, Target, UserCheck, ArrowRight } from 'lucide-react';
import { POPULAR_TESTS } from '../../data/popularTests';
import { openWhatsApp, DEFAULT_MESSAGES } from '../../utils/whatsapp';

const iconMap = {
  Droplet,
  Grid,
  Activity,
  Sun,
  Target,
  UserCheck
};

export default function PopularTestsSection() {
  return (
    <section className="py-16 md:py-24 bg-purple-50/20 border-t border-purple-100/40">
      <div className="max-w-7xl mx-auto px-4 sm:px-6 lg:px-8 space-y-10">
        
        {/* Header with Title and "View all services" link */}
        <div className="flex flex-col sm:flex-row sm:items-end justify-between gap-4">
          <div>
            <div className="text-xs font-extrabold uppercase tracking-wider text-purple-700">
              POPULAR SERVICES
            </div>
            <h2 className="text-3xl sm:text-4xl font-extrabold text-slate-900 tracking-tight mt-1">
              Start with what you need.
            </h2>
            <p className="text-sm text-slate-600 mt-1">
              Explore some of the healthcare services people commonly search for and book.
            </p>
          </div>

          <Link
            to="/services"
            className="inline-flex items-center gap-1.5 text-xs font-bold text-purple-700 hover:text-purple-900 shrink-0 group"
          >
            <span>View all services</span>
            <ArrowRight className="w-4 h-4 group-hover:translate-x-1 transition-transform" />
          </Link>
        </div>

        {/* Popular Tests Cards Grid */}
        <div className="grid grid-cols-2 sm:grid-cols-3 lg:grid-cols-6 gap-4">
          {POPULAR_TESTS.map((test) => {
            const IconComp = iconMap[test.iconName] || Droplet;
            return (
              <button
                key={test.id}
                onClick={() => openWhatsApp(DEFAULT_MESSAGES.test(test.title))}
                className="group bg-white hover:bg-purple-50/80 p-6 rounded-3xl border border-purple-100/80 shadow-xs hover:shadow-md transition-all text-center flex flex-col items-center justify-between h-44 cursor-pointer"
              >
                <div className="w-12 h-12 rounded-2xl bg-purple-50 text-purple-700 flex items-center justify-center group-hover:scale-110 transition-transform">
                  <IconComp className="w-6 h-6" />
                </div>
                
                <div>
                  <h4 className="text-sm font-bold text-slate-900 group-hover:text-purple-800 transition-colors">
                    {test.title}
                  </h4>
                  <p className="text-[11px] text-slate-500 mt-0.5 line-clamp-1">
                    {test.category}
                  </p>
                </div>
              </button>
            );
          })}
        </div>

      </div>
    </section>
  );
}
