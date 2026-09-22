import React, { useState } from 'react';
import { Pill, HeartPulse, Thermometer, Droplet, Sparkles, MessageSquare, ShieldCheck, ArrowRight } from 'lucide-react';
import HealthCheckCard from './HealthCheckCard';
import HealthCheckModal from './HealthCheckModal';
import HealthCheckDisclaimer from './HealthCheckDisclaimer';

export default function QuickHealthChecks({ onOpenUploadModal }) {
  const [activeToolKey, setActiveToolKey] = useState(null);

  const tools = [
    {
      id: 'medicine',
      title: 'When should I take my medicine?',
      description: 'Organize your daily medication doses around breakfast, lunch, dinner and sleep routine.',
      icon: Pill,
      categoryBadge: 'MEDICINE TIMING',
      badgeColor: 'bg-purple-50 text-purple-700 border-purple-100',
      spanCol: 'md:col-span-7' // Anchor Card
    },
    {
      id: 'bp',
      title: 'What does my BP reading mean?',
      description: 'Check if your blood pressure falls within standard adult reference ranges in seconds.',
      icon: HeartPulse,
      categoryBadge: 'BLOOD PRESSURE',
      badgeColor: 'bg-rose-50 text-rose-700 border-rose-100',
      spanCol: 'md:col-span-5'
    },
    {
      id: 'temp',
      title: 'Is my temperature concerning?',
      description: 'Convert between °F and °C and review age-appropriate fever guidance.',
      icon: Thermometer,
      categoryBadge: 'TEMPERATURE CHECK',
      badgeColor: 'bg-amber-50 text-amber-700 border-amber-100',
      spanCol: 'md:col-span-6'
    },
    {
      id: 'hydration',
      title: 'Am I drinking enough water?',
      description: 'Calculate your estimated daily fluid target based on weight, activity and climate.',
      icon: Droplet,
      categoryBadge: 'HYDRATION TARGET',
      badgeColor: 'bg-sky-50 text-sky-700 border-sky-100',
      spanCol: 'md:col-span-6'
    }
  ];

  const handleOpenAssistant = (query) => {
    window.dispatchEvent(new CustomEvent('open-health-express-assistant', {
      detail: { initialQuery: query }
    }));
  };

  return (
    <section className="py-20 md:py-28 bg-white relative overflow-hidden">
      
      {/* Background Subtle Ambient Lighting */}
      <div className="absolute top-1/4 right-0 w-96 h-96 bg-purple-50/60 rounded-full blur-3xl pointer-events-none -z-10" />
      <div className="absolute bottom-10 left-10 w-96 h-96 bg-emerald-50/50 rounded-full blur-3xl pointer-events-none -z-10" />

      <div className="max-w-7xl mx-auto px-4 sm:px-6 lg:px-8 space-y-12">
        
        {/* ===================================================
            SECTION HEADER
           =================================================== */}
        <div className="text-center max-w-3xl mx-auto space-y-4">
          
          {/* Eyebrow */}
          <div className="inline-flex items-center gap-2 px-3.5 py-1.5 rounded-full bg-purple-100/80 border border-purple-200/80 text-purple-900 text-xs font-extrabold uppercase tracking-widest shadow-xs">
            <Sparkles className="w-3.5 h-3.5 text-purple-700" />
            <span>QUICK HEALTH CHECKS</span>
          </div>

          {/* Main Heading */}
          <h2 className="text-3xl sm:text-4xl lg:text-5xl font-extrabold text-slate-900 tracking-tight leading-[1.15]">
            What's on your mind today?
          </h2>

          {/* Supporting Copy */}
          <p className="text-base sm:text-lg text-slate-600 font-medium max-w-xl mx-auto leading-relaxed">
            Get a quick, practical health check for everyday questions. Small questions. Useful answers. In seconds.
          </p>

        </div>

        {/* ===================================================
            4-TOOL ASYMMETRIC BENTO GRID
           =================================================== */}
        <div className="grid grid-cols-1 md:grid-cols-12 gap-6 items-stretch">
          {tools.map((tool) => (
            <HealthCheckCard
              key={tool.id}
              id={tool.id}
              title={tool.title}
              description={tool.description}
              icon={tool.icon}
              categoryBadge={tool.categoryBadge}
              badgeColor={tool.badgeColor}
              spanCol={tool.spanCol}
              onClick={() => setActiveToolKey(tool.id)}
            />
          ))}
        </div>

        {/* ===================================================
            GLOBAL AI ASSISTANT BRIDGE & FOOTER DISCLAIMER
           =================================================== */}
        <div className="pt-4 space-y-6">
          
          {/* AI Assistant Trigger Ribbon */}
          <div className="bg-slate-50 border border-purple-100/80 rounded-2xl p-4 sm:p-5 max-w-3xl mx-auto flex flex-col sm:flex-row items-center justify-between gap-4 text-center sm:text-left shadow-xs">
            <div className="flex items-center gap-3">
              <div className="w-9 h-9 rounded-xl bg-purple-700 text-white flex items-center justify-center shrink-0 shadow-xs">
                <Sparkles className="w-4 h-4" />
              </div>
              <div>
                <h4 className="text-xs font-extrabold text-slate-900">Have a different everyday health question?</h4>
                <p className="text-[11px] text-slate-600 font-medium">Ask Priya, your Health Express AI Assistant for instant service guidance.</p>
              </div>
            </div>

            <button
              onClick={() => handleOpenAssistant("Hello! I have a question about my health services.")}
              className="w-full sm:w-auto px-4 py-2 rounded-xl bg-purple-700 hover:bg-purple-800 text-white text-xs font-extrabold flex items-center justify-center gap-1.5 transition-all shadow-xs shrink-0"
            >
              <span>Ask AI Assistant</span>
              <ArrowRight className="w-3.5 h-3.5" />
            </button>
          </div>

          {/* Section Footer Disclaimer */}
          <div className="max-w-2xl mx-auto text-center">
            <HealthCheckDisclaimer compact />
          </div>

        </div>

      </div>

      {/* Interactive Tool Modal */}
      <HealthCheckModal
        activeTool={activeToolKey}
        onClose={() => setActiveToolKey(null)}
        onOpenUploadModal={onOpenUploadModal}
      />

    </section>
  );
}
