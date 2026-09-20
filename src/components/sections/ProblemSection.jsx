import React from 'react';
import { Layers, CheckCircle2 } from 'lucide-react';

export default function ProblemSection() {
  const painPoints = [
    "Finding a reliable healthcare provider",
    "Comparing prices & diagnostic options",
    "Scheduling a home sample visit or nursing care",
    "Following up on reports & digital records",
    "Managing healthcare for your parents or children"
  ];

  return (
    <section className="py-16 md:py-24 bg-mesh-dark text-white relative overflow-hidden">
      {/* Background Decorative Glow */}
      <div className="absolute top-1/2 left-1/2 -translate-x-1/2 -translate-y-1/2 w-[600px] h-[600px] bg-purple-600/15 rounded-full blur-3xl pointer-events-none animate-pulse-glow" />

      <div className="max-w-7xl mx-auto px-4 sm:px-6 lg:px-8 relative z-10">
        <div className="max-w-3xl mx-auto text-center space-y-8">
          
          <div className="inline-flex items-center gap-2 px-4 py-1.5 rounded-full bg-purple-900/60 border border-purple-500/40 text-xs font-extrabold uppercase tracking-wider text-purple-300 backdrop-blur-md shadow-inner">
            <Layers className="w-3.5 h-3.5 text-purple-400" />
            <span>THE HEALTHCARE CHALLENGE</span>
          </div>

          <h2 className="text-3xl sm:text-4xl lg:text-5xl font-extrabold tracking-tight leading-tight">
            Healthcare shouldn't feel like a <span className="gradient-text-light">second job.</span>
          </h2>

          <div className="glass-card-dark p-7 sm:p-10 rounded-3xl space-y-6 text-left shadow-2xl border border-purple-500/30">
            <div className="grid grid-cols-1 sm:grid-cols-2 gap-4">
              {painPoints.map((item, idx) => (
                <div 
                  key={idx} 
                  className="flex items-start gap-3 p-3 rounded-xl bg-slate-900/50 border border-purple-900/30 hover:border-purple-500/40 transition-all hover:translate-x-1 group"
                >
                  <div className="w-5 h-5 rounded-full bg-purple-900/80 text-purple-300 flex items-center justify-center shrink-0 mt-0.5 font-bold text-[10px] group-hover:bg-purple-600 group-hover:text-white transition-colors">
                    ✕
                  </div>
                  <span className="text-xs sm:text-sm text-slate-300 group-hover:text-white transition-colors">{item}</span>
                </div>
              ))}
            </div>

            <div className="pt-5 border-t border-purple-900/50 text-sm sm:text-base font-semibold text-purple-300 text-center">
              Health Express brings these tasks together, so you don't have to manage healthcare across multiple places.
            </div>
          </div>

        </div>
      </div>
    </section>
  );
}
