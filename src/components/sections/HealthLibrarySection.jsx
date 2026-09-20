import React from 'react';
import { Link } from 'react-router-dom';
import { ArrowRight, BookOpen, Clock } from 'lucide-react';
import { HEALTH_ARTICLES } from '../../data/articles';

export default function HealthLibrarySection() {
  const topicClusters = [
    'Diagnostics',
    'Health Tests',
    'Family Health',
    'Preventive Health',
    'Home Care'
  ];

  return (
    <section className="py-16 md:py-24 bg-purple-50/20 border-t border-purple-100/40" id="health-library">
      <div className="max-w-7xl mx-auto px-4 sm:px-6 lg:px-8 space-y-10">
        
        {/* Header */}
        <div className="flex flex-col sm:flex-row sm:items-end justify-between gap-4">
          <div className="max-w-2xl">
            <div className="text-xs font-extrabold uppercase tracking-wider text-purple-700">
              HEALTH LIBRARY
            </div>
            <h2 className="text-3xl sm:text-4xl font-extrabold text-slate-900 tracking-tight mt-1">
              Understand your health better.
            </h2>
            <p className="text-sm text-slate-600 mt-1">
              Practical, evidence-informed guides to help you understand tests, reports, conditions and everyday healthcare decisions.
            </p>

            {/* Topic Clusters */}
            <div className="flex flex-wrap items-center gap-2 pt-4">
              {topicClusters.map((cluster) => (
                <span
                  key={cluster}
                  className="px-3 py-1 rounded-full bg-white border border-purple-200 text-xs font-semibold text-purple-900 shadow-xs"
                >
                  {cluster}
                </span>
              ))}
            </div>
          </div>

          <Link
            to="/health-library"
            className="inline-flex items-center gap-1.5 text-xs font-bold text-purple-700 hover:text-purple-900 shrink-0 group"
          >
            <span>Explore Health Library</span>
            <ArrowRight className="w-4 h-4 group-hover:translate-x-1 transition-transform" />
          </Link>
        </div>

        {/* Article Cards Grid */}
        <div className="grid grid-cols-1 sm:grid-cols-2 lg:grid-cols-4 gap-6">
          {HEALTH_ARTICLES.map((article) => (
            <Link
              key={article.id}
              to={`/health-library/${article.slug}`}
              className="group bg-white rounded-3xl overflow-hidden border border-purple-100 shadow-xs hover:shadow-md transition-all flex flex-col justify-between"
            >
              <div>
                <div className="relative h-44 overflow-hidden bg-slate-100">
                  <img
                    src={article.image}
                    alt={article.title}
                    className="w-full h-full object-cover group-hover:scale-105 transition-transform duration-300"
                    loading="lazy"
                  />
                  <div className="absolute top-3 left-3 px-2.5 py-1 rounded-full bg-white/90 backdrop-blur-xs text-[10px] font-bold text-purple-800">
                    {article.category}
                  </div>
                </div>

                <div className="p-5 space-y-2 text-left">
                  <div className="flex items-center gap-1.5 text-[11px] text-slate-400">
                    <Clock className="w-3 h-3" />
                    <span>{article.readTime}</span>
                  </div>

                  <h3 className="text-base font-bold text-slate-900 group-hover:text-purple-700 transition-colors leading-snug">
                    {article.title}
                  </h3>

                  <p className="text-xs text-slate-600 line-clamp-2 leading-relaxed">
                    {article.summary}
                  </p>
                </div>
              </div>

              <div className="p-5 pt-0 text-left">
                <span className="inline-flex items-center gap-1 text-xs font-bold text-purple-700 group-hover:translate-x-1 transition-transform">
                  Read article <ArrowRight className="w-3.5 h-3.5" />
                </span>
              </div>
            </Link>
          ))}
        </div>

      </div>
    </section>
  );
}
