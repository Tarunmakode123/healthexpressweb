import React, { useState } from 'react';
import { Droplet, Grid, Activity, Sun, Target, Heart, UserCheck, Shield, ArrowRight, Check, Sparkles, MessageCircle } from 'lucide-react';
import { openWhatsApp, DEFAULT_MESSAGES } from '../../utils/whatsapp';

export default function PopularTestsSection() {
  const [selectedTests, setSelectedTests] = useState(['cbc-test', 'thyroid-tests']);

  const popularServices = [
    {
      id: 'blood-tests',
      title: 'Blood Tests',
      desc: 'Home sample collection and diagnostic blood testing.',
      icon: Droplet
    },
    {
      id: 'cbc-test',
      title: 'CBC Test',
      desc: 'Learn about complete blood count testing and available booking options.',
      icon: Grid
    },
    {
      id: 'thyroid-tests',
      title: 'Thyroid Tests',
      desc: 'Explore thyroid-related diagnostic testing.',
      icon: Activity
    },
    {
      id: 'vitamin-d-test',
      title: 'Vitamin D Test',
      desc: 'Find Vitamin D testing options.',
      icon: Sun
    },
    {
      id: 'hba1c-test',
      title: 'HbA1c Test',
      desc: 'Explore testing used to assess average blood glucose levels.',
      icon: Target
    },
    {
      id: 'lipid-profile',
      title: 'Lipid Profile',
      desc: 'Find cholesterol and lipid testing options.',
      icon: Heart
    },
    {
      id: 'full-body-checkup',
      title: 'Full Body Health Checkup',
      desc: 'Explore comprehensive preventive health checkup options.',
      icon: UserCheck
    },
    {
      id: 'health-screening',
      title: 'Health Screening',
      desc: 'Discover preventive screening services.',
      icon: Shield
    }
  ];

  const toggleTest = (id) => {
    setSelectedTests(prev => 
      prev.includes(id) ? prev.filter(item => item !== id) : [...prev, id]
    );
  };

  const selectedTitles = popularServices
    .filter(s => selectedTests.includes(s.id))
    .map(s => s.title);

  const handleBookPackage = () => {
    if (selectedTitles.length === 0) {
      openWhatsApp("Hello Health Express, I would like to inquire about popular diagnostic tests.");
      return;
    }
    const message = `Hello Health Express, I would like to inquire about booking the following selected test package: ${selectedTitles.join(', ')}. Please provide available options & home sample collection details.`;
    openWhatsApp(message);
  };

  return (
    <section className="py-16 md:py-24 bg-purple-50/20 border-t border-purple-100/40" id="tests">
      <div className="max-w-7xl mx-auto px-4 sm:px-6 lg:px-8 space-y-10">
        
        {/* Header */}
        <div className="text-center max-w-2xl mx-auto space-y-3">
          <div className="text-xs font-extrabold uppercase tracking-wider text-purple-700 flex items-center justify-center gap-1.5">
            <Sparkles className="w-3.5 h-3.5 text-purple-600" />
            <span>INTERACTIVE TEST PACKAGE ESTIMATOR</span>
          </div>
          <h2 className="text-3xl sm:text-4xl font-extrabold text-slate-900 tracking-tight">
            Start with what you need.
          </h2>
          <p className="text-sm sm:text-base text-slate-600">
            Select one or multiple tests below to customize your health checkup package and request instant partner lab coordination.
          </p>
        </div>

        {/* Popular Test Link Cards (Interactive Grid) */}
        <div className="grid grid-cols-1 sm:grid-cols-2 lg:grid-cols-4 gap-5">
          {popularServices.map((service) => {
            const IconComp = service.icon;
            const isSelected = selectedTests.includes(service.id);
            return (
              <div
                key={service.id}
                onClick={() => toggleTest(service.id)}
                className={`group p-6 rounded-3xl border transition-all cursor-pointer flex flex-col justify-between space-y-4 text-left relative ${
                  isSelected
                    ? 'bg-purple-900 text-white border-purple-800 shadow-lg scale-[1.02]'
                    : 'bg-white hover:bg-purple-50/80 border-purple-100/80 shadow-xs hover:shadow-md text-slate-900'
                }`}
              >
                <div className="flex items-center justify-between">
                  <div className={`w-11 h-11 rounded-2xl flex items-center justify-center transition-transform ${
                    isSelected ? 'bg-purple-800 text-white' : 'bg-purple-50 text-purple-700 group-hover:scale-110'
                  }`}>
                    <IconComp className="w-5 h-5" />
                  </div>
                  <div className={`w-6 h-6 rounded-full flex items-center justify-center text-xs font-bold transition-all ${
                    isSelected ? 'bg-emerald-400 text-slate-950' : 'bg-slate-100 text-slate-400 group-hover:bg-purple-200 group-hover:text-purple-900'
                  }`}>
                    {isSelected ? <Check className="w-3.5 h-3.5 stroke-[3]" /> : '+'}
                  </div>
                </div>
                
                <div>
                  <h4 className={`text-base font-bold transition-colors ${isSelected ? 'text-white' : 'group-hover:text-purple-800'}`}>
                    {service.title}
                  </h4>
                  <p className={`text-xs mt-1 leading-relaxed ${isSelected ? 'text-purple-200' : 'text-slate-500'}`}>
                    {service.desc}
                  </p>
                </div>
              </div>
            );
          })}
        </div>

        {/* Selected Package Banner / Action bar */}
        <div className="bg-white rounded-3xl p-6 border border-purple-200 shadow-md max-w-3xl mx-auto flex flex-col sm:flex-row items-center justify-between gap-5">
          <div className="space-y-1 text-center sm:text-left">
            <div className="text-xs font-bold text-slate-900 flex items-center justify-center sm:justify-start gap-2">
              <span className="w-2.5 h-2.5 rounded-full bg-purple-700 animate-pulse"></span>
              <span>{selectedTests.length} {selectedTests.length === 1 ? 'Test' : 'Tests'} Selected</span>
            </div>
            <p className="text-xs text-slate-500">
              {selectedTitles.length > 0
                ? selectedTitles.join(' • ')
                : 'Tap test cards above to build your custom package'}
            </p>
          </div>

          <button
            onClick={handleBookPackage}
            className="w-full sm:w-auto px-6 py-3.5 rounded-2xl bg-purple-700 hover:bg-purple-800 text-white font-bold text-xs flex items-center justify-center gap-2 shadow-sm transition-all hover:scale-[1.02]"
          >
            <MessageCircle className="w-4 h-4 fill-white text-purple-700" />
            <span>Book Custom Package on WhatsApp</span>
            <ArrowRight className="w-4 h-4" />
          </button>
        </div>

      </div>
    </section>
  );
}
