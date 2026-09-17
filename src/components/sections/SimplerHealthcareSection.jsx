import React from 'react';
import { FileText, Users, CheckCircle2 } from 'lucide-react';

export default function SimplerHealthcareSection() {
  const threePillars = [
    {
      num: '01',
      title: 'Tell us what you need',
      description: 'Upload a prescription, medical order or simply describe the healthcare service you\'re looking for.',
      icon: FileText
    },
    {
      num: '02',
      title: 'We do the legwork',
      description: 'We help identify relevant services and available healthcare providers based on your requirement.',
      icon: Users
    },
    {
      num: '03',
      title: 'You stay in control',
      description: 'Review your options, make your choice and book when you\'re ready.',
      icon: CheckCircle2
    }
  ];

  return (
    <section className="py-16 md:py-24 bg-white">
      <div className="max-w-7xl mx-auto px-4 sm:px-6 lg:px-8 space-y-12">
        
        {/* Header */}
        <div className="text-center max-w-3xl mx-auto space-y-4">
          <div className="text-xs font-extrabold uppercase tracking-wider text-purple-700">
            YOU ASK. WE COORDINATE.
          </div>
          <h2 className="text-3xl sm:text-4xl font-extrabold text-slate-900 tracking-tight">
            Healthcare should be simpler.
          </h2>
          <div className="text-base sm:text-lg text-slate-600 leading-relaxed space-y-3">
            <p>
              Finding the right test, healthcare provider or service can mean searching across multiple websites, comparing providers, checking availability and coordinating appointments.
            </p>
            <p className="font-semibold text-slate-800">
              Health Express brings that journey together.
            </p>
            <p className="text-sm sm:text-base text-slate-600">
              Upload your prescription, share what you need, or simply tell us what you're looking for. We help coordinate the next steps so you can spend less time navigating healthcare and more time taking care of yourself.
            </p>
          </div>
        </div>

        {/* 3 Feature Blocks */}
        <div className="grid grid-cols-1 md:grid-cols-3 gap-8">
          {threePillars.map((pillar) => {
            const IconComponent = pillar.icon;
            return (
              <div 
                key={pillar.num}
                className="bg-purple-50/40 hover:bg-purple-50 border border-purple-100 rounded-3xl p-8 transition-all hover:shadow-md text-left space-y-4 relative group"
              >
                <div className="flex items-center justify-between">
                  <div className="w-12 h-12 rounded-2xl bg-white border border-purple-200 text-purple-700 flex items-center justify-center shadow-xs">
                    <IconComponent className="w-6 h-6" />
                  </div>
                  <span className="text-sm font-extrabold text-purple-400 group-hover:text-purple-600">
                    {pillar.num}
                  </span>
                </div>

                <h3 className="text-xl font-bold text-slate-900">{pillar.title}</h3>
                <p className="text-sm text-slate-600 leading-relaxed">{pillar.description}</p>
              </div>
            );
          })}
        </div>

      </div>
    </section>
  );
}
