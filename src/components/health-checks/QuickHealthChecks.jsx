import React, { useState } from 'react';
import { Pill, HeartPulse, Thermometer, Droplet, Sparkles, MessageSquare, ArrowRight } from 'lucide-react';
import MedicineTimingTool from './MedicineTimingTool';
import BloodPressureTool from './BloodPressureTool';
import TemperatureTool from './TemperatureTool';
import HydrationTool from './HydrationTool';
import HealthCheckDisclaimer from './HealthCheckDisclaimer';

export default function QuickHealthChecks({ onOpenUploadModal }) {
  const [activeTab, setActiveTab] = useState('medicine');

  const tabs = [
    { id: 'medicine', label: 'Medicine Timing', icon: Pill, color: 'text-purple-700' },
    { id: 'bp', label: 'BP Check', icon: HeartPulse, color: 'text-rose-600' },
    { id: 'temp', label: 'Temperature', icon: Thermometer, color: 'text-amber-600' },
    { id: 'hydration', label: 'Hydration', icon: Droplet, color: 'text-sky-600' }
  ];

  const handleOpenAssistant = (query) => {
    window.dispatchEvent(new CustomEvent('open-health-express-assistant', {
      detail: { initialQuery: query }
    }));
  };

  const renderActiveTool = () => {
    switch (activeTab) {
      case 'medicine':
        return <MedicineTimingTool onOpenUploadModal={onOpenUploadModal} />;
      case 'bp':
        return <BloodPressureTool />;
      case 'temp':
        return <TemperatureTool />;
      case 'hydration':
        return <HydrationTool />;
      default:
        return null;
    }
  };

  return (
    <section className="py-16 md:py-24 bg-white relative overflow-hidden">
      
      {/* Background Subtle Ambient Glow */}
      <div className="absolute top-1/3 left-1/2 -translate-x-1/2 w-[700px] h-[400px] bg-purple-50/50 rounded-full blur-3xl pointer-events-none -z-10" />

      <div className="max-w-7xl mx-auto px-4 sm:px-6 lg:px-8 space-y-10">
        
        {/* ===================================================
            SECTION HEADER
           =================================================== */}
        <div className="text-center max-w-3xl mx-auto space-y-3">
          
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
            Quick answers to everyday health questions.
          </p>

        </div>

        {/* ===================================================
            TAB NAVIGATION BAR (APPLE-LIKE PRODUCT SWITCHER)
           =================================================== */}
        <div className="flex items-center justify-center">
          <div className="inline-flex items-center gap-1.5 p-1.5 rounded-2xl bg-slate-100/90 border border-slate-200/80 shadow-xs max-w-full overflow-x-auto no-scrollbar">
            {tabs.map((tab) => {
              const Icon = tab.icon;
              const isActive = activeTab === tab.id;
              return (
                <button
                  key={tab.id}
                  onClick={() => setActiveTab(tab.id)}
                  className={`flex items-center gap-2 px-4 py-2.5 rounded-xl text-xs sm:text-sm font-extrabold transition-all whitespace-nowrap ${
                    isActive
                      ? 'bg-white text-slate-900 shadow-md scale-[1.02]'
                      : 'text-slate-600 hover:text-slate-900 hover:bg-white/50'
                  }`}
                >
                  <Icon className={`w-4 h-4 ${isActive ? tab.color : 'text-slate-500'}`} />
                  <span>{tab.label}</span>
                </button>
              );
            })}
          </div>
        </div>

        {/* ===================================================
            FEATURED WORKSPACE: SINGLE ACTIVE TOOL SPOTLIGHT
           =================================================== */}
        <div className="bg-white rounded-3xl p-6 sm:p-10 border border-slate-200/80 shadow-xl shadow-slate-900/5 max-w-5xl mx-auto transition-all duration-300">
          <div key={activeTab} className="animate-in fade-in zoom-in-98 duration-300">
            {renderActiveTool()}
          </div>
        </div>

        {/* ===================================================
            GLOBAL AI ASSISTANT BRIDGE & FOOTER DISCLAIMER
           =================================================== */}
        <div className="pt-2 space-y-6">
          
          {/* AI Assistant Trigger Ribbon */}
          <div className="bg-slate-50 border border-purple-100/80 rounded-2xl p-4 sm:p-5 max-w-3xl mx-auto flex flex-col sm:flex-row items-center justify-between gap-4 text-center sm:text-left shadow-xs">
            <div className="flex items-center gap-3">
              <div className="w-9 h-9 rounded-xl bg-purple-700 text-white flex items-center justify-center shrink-0 shadow-xs">
                <Sparkles className="w-4 h-4" />
              </div>
              <div>
                <h4 className="text-xs font-extrabold text-slate-900">Not sure what you need?</h4>
                <p className="text-[11px] text-slate-600 font-medium">Ask Priya, your Health Express AI Assistant for instant service guidance.</p>
              </div>
            </div>

            <button
              onClick={() => handleOpenAssistant("Hello! I have a question about my health needs.")}
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
    </section>
  );
}
