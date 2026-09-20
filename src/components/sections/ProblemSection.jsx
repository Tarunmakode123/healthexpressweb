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
    <section className="py-14 md:py-20 bg-slate-900 text-white relative overflow-hidden">
      <div className="max-w-7xl mx-auto px-4 sm:px-6 lg:px-8">
        <div className="max-w-3xl mx-auto text-center space-y-6">
          
          <div className="inline-flex items-center gap-2 px-3.5 py-1.5 rounded-full bg-purple-900/80 border border-purple-700/60 text-xs font-extrabold uppercase tracking-wider text-purple-300">
            <Layers className="w-3.5 h-3.5 text-purple-400" />
            THE HEALTHCARE CHALLENGE
          </div>

          <h2 className="text-3xl sm:text-4xl lg:text-5xl font-extrabold text-white tracking-tight leading-tight">
            Healthcare shouldn't feel like a second job.
          </h2>

          <div className="bg-slate-800/80 border border-slate-700/80 p-6 sm:p-8 rounded-3xl space-y-4 text-left shadow-xl">
            <div className="grid grid-cols-1 sm:grid-cols-2 gap-3">
              {painPoints.map((item, idx) => (
                <div key={idx} className="flex items-start gap-3 text-xs sm:text-sm text-slate-300">
                  <div className="w-5 h-5 rounded-full bg-purple-900/80 text-purple-400 flex items-center justify-center shrink-0 mt-0.5 font-bold text-[10px]">
                    ✕
                  </div>
                  <span>{item}</span>
                </div>
              ))}
            </div>

            <div className="pt-4 border-t border-slate-700/80 text-sm sm:text-base font-semibold text-purple-300 text-center">
              Health Express brings these tasks together, so you don't have to manage healthcare across multiple places.
            </div>
          </div>

        </div>
      </div>
    </section>
  );
}
