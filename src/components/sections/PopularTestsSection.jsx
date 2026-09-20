import React, { useState } from 'react';
import { Droplet, Grid, Activity, Sun, Target, Heart, UserCheck, Shield, Check, MessageCircle, Upload, ArrowRight } from 'lucide-react';
import { openWhatsApp, DEFAULT_MESSAGES } from '../../utils/whatsapp';

export default function PopularTestsSection({ onOpenUploadModal }) {
  const [selectedTests, setSelectedTests] = useState(['cbc-test', 'thyroid-tests']);
  const [searchQuery, setSearchQuery] = useState('');

  const popularServices = [
    {
      id: 'cbc-test',
      title: 'Complete Blood Count (CBC)',
      category: 'Blood Tests',
      desc: 'Evaluates overall health, detects anemia, infection, and various blood disorders.',
      preparation: 'No special preparation required. Fasting not mandatory.',
      icon: Grid
    },
    {
      id: 'thyroid-tests',
      title: 'Thyroid Profile (T3, T4, TSH)',
      category: 'Hormone Tests',
      desc: 'Assesses thyroid gland function to screen for hypothyroidism or hyperthyroidism.',
      preparation: 'Overnight fasting recommended (8-10 hours).',
      icon: Activity
    },
    {
      id: 'vitamin-d-test',
      title: 'Vitamin D (25-OH)',
      category: 'Vitamins',
      desc: 'Measures Vitamin D level crucial for bone health and immune function.',
      preparation: 'No fasting required.',
      icon: Sun
    },
    {
      id: 'hba1c-test',
      title: 'HbA1c (Glycated Hemoglobin)',
      category: 'Diabetes Care',
      desc: 'Evaluates average blood sugar levels over the past 2 to 3 months.',
      preparation: 'No fasting required. Can be done anytime.',
      icon: Target
    },
    {
      id: 'lipid-profile',
      title: 'Lipid Profile (Cholesterol)',
      category: 'Heart Care',
      desc: 'Measures total cholesterol, HDL, LDL, and triglycerides for cardiac health.',
      preparation: 'Overnight fasting mandatory (10-12 hours).',
      icon: Heart
    },
    {
      id: 'full-body-checkup',
      title: 'Full Body Health Checkup',
      category: 'Health Packages',
      desc: 'Comprehensive preventive health profile covering liver, kidney, blood, and metabolic parameters.',
      preparation: '10-12 hours overnight fasting required.',
      icon: UserCheck
    }
  ];

  const toggleTest = (id) => {
    setSelectedTests(prev => 
      prev.includes(id) ? prev.filter(item => item !== id) : [...prev, id]
    );
  };

  const filteredTests = searchQuery.trim()
    ? popularServices.filter(t => 
        t.title.toLowerCase().includes(searchQuery.toLowerCase()) || 
        t.category.toLowerCase().includes(searchQuery.toLowerCase())
      )
    : popularServices;

  const selectedTitles = popularServices
    .filter(s => selectedTests.includes(s.id))
    .map(s => s.title);

  const handleBookPackage = () => {
    if (selectedTitles.length === 0) {
      openWhatsApp("Hello Health Express, I would like to inquire about popular diagnostic lab tests.");
      return;
    }
    const message = `Hello Health Express, I would like to inquire about booking the following diagnostic tests: ${selectedTitles.join(', ')}. Please share available options & home sample collection details.`;
    openWhatsApp(message);
  };

  return (
    <section className="py-16 md:py-24 bg-white border-t border-purple-100/60" id="tests">
      <div className="max-w-7xl mx-auto px-4 sm:px-6 lg:px-8 space-y-10">
        
        {/* Header */}
        <div className="text-center max-w-2xl mx-auto space-y-3">
          <div className="inline-flex items-center gap-2 px-3 py-1 rounded-full bg-purple-100 text-purple-800 text-xs font-bold uppercase tracking-wider">
            POPULAR DIAGNOSTIC TESTS
          </div>
          <h2 className="text-3xl sm:text-4xl font-extrabold text-slate-900 tracking-tight">
            Start with what you need.
          </h2>
          <p className="text-sm sm:text-base text-slate-600">
            Select one or multiple diagnostic tests below to inquire or coordinate home sample collection.
          </p>
        </div>

        {/* Search Bar */}
        <div className="max-w-md mx-auto">
          <input
            type="text"
            value={searchQuery}
            onChange={(e) => setSearchQuery(e.target.value)}
            placeholder="Search tests (e.g. CBC, Thyroid, HbA1c)..."
            className="w-full px-4 py-3 rounded-2xl bg-purple-50/50 border border-purple-200 text-xs sm:text-sm font-medium text-slate-900 placeholder:text-slate-400 focus:outline-none focus:ring-2 focus:ring-purple-600 shadow-2xs"
          />
        </div>

        {/* Test Cards Grid */}
        <div className="grid grid-cols-1 sm:grid-cols-2 lg:grid-cols-3 gap-6">
          {filteredTests.map((service) => {
            const IconComp = service.icon;
            const isSelected = selectedTests.includes(service.id);
            return (
              <div
                key={service.id}
                className={`bento-card rounded-3xl p-6 flex flex-col justify-between space-y-5 text-left relative transition-all ${
                  isSelected
                    ? 'border-2 border-purple-600 ring-2 ring-purple-600/10 bg-purple-50/20'
                    : 'bg-white hover:border-purple-200'
                }`}
              >
                <div className="space-y-3">
                  <div className="flex items-center justify-between">
                    <div className="w-10 h-10 rounded-2xl bg-purple-100 text-purple-800 flex items-center justify-center font-bold">
                      <IconComp className="w-5 h-5" />
                    </div>
                    
                    <button
                      onClick={() => toggleTest(service.id)}
                      className={`px-3 py-1 rounded-full text-[11px] font-bold flex items-center gap-1 transition-all cursor-pointer ${
                        isSelected
                          ? 'bg-purple-700 text-white shadow-xs'
                          : 'bg-slate-100 hover:bg-purple-100 text-slate-600 hover:text-purple-800'
                      }`}
                    >
                      {isSelected ? <Check className="w-3.5 h-3.5" /> : '+ Select'}
                    </button>
                  </div>
                  
                  <div>
                    <span className="text-[10px] font-extrabold uppercase text-purple-700 tracking-wider">
                      {service.category}
                    </span>
                    <h3 className="text-base font-extrabold text-slate-900 mt-0.5">
                      {service.title}
                    </h3>
                    <p className="text-xs text-slate-600 mt-1.5 leading-relaxed">
                      {service.desc}
                    </p>
                  </div>

                  <div className="pt-2 border-t border-purple-100/60 text-[11px] text-slate-500 font-medium">
                    <strong className="text-slate-700 font-bold">Prep:</strong> {service.preparation}
                  </div>
                </div>

                {/* Card Dual CTAs */}
                <div className="pt-2 flex items-center gap-2">
                  <button
                    onClick={() => openWhatsApp(`Hello Health Express, I would like to inquire about booking the ${service.title}.`)}
                    className="flex-1 py-2.5 px-3 rounded-xl bg-purple-50 hover:bg-purple-100 border border-purple-200 text-purple-900 text-xs font-bold flex items-center justify-center gap-1.5 transition-colors cursor-pointer"
                  >
                    <MessageCircle className="w-3.5 h-3.5 text-emerald-600" />
                    <span>Ask on WhatsApp</span>
                  </button>

                  {onOpenUploadModal && (
                    <button
                      onClick={onOpenUploadModal}
                      className="py-2.5 px-3 rounded-xl bg-white hover:bg-purple-50 border border-slate-200 text-slate-700 text-xs font-bold flex items-center justify-center gap-1 transition-colors cursor-pointer"
                      title="Upload Prescription"
                    >
                      <Upload className="w-3.5 h-3.5 text-purple-700" />
                    </button>
                  )}
                </div>
              </div>
            );
          })}
        </div>

        {/* Selected Package Action Banner */}
        <div className="bg-purple-950 text-white rounded-3xl p-6 shadow-xl max-w-3xl mx-auto flex flex-col sm:flex-row items-center justify-between gap-5">
          <div className="space-y-1 text-center sm:text-left">
            <div className="text-xs font-extrabold text-purple-200 flex items-center justify-center sm:justify-start gap-2">
              <span className="w-2.5 h-2.5 rounded-full bg-emerald-400 animate-pulse"></span>
              <span>{selectedTests.length} {selectedTests.length === 1 ? 'Test' : 'Tests'} Selected</span>
            </div>
            <p className="text-xs text-slate-300 font-normal">
              {selectedTitles.length > 0
                ? selectedTitles.join(' • ')
                : 'Select test cards above to build your customized inquiry package'}
            </p>
          </div>

          <button
            onClick={handleBookPackage}
            className="w-full sm:w-auto px-6 py-3.5 rounded-2xl bg-purple-600 hover:bg-purple-700 text-white font-extrabold text-xs flex items-center justify-center gap-2 shadow-md transition-all hover:scale-[1.02] cursor-pointer"
          >
            <MessageCircle className="w-4 h-4 fill-white text-purple-600" />
            <span>Inquire Selected Package</span>
            <ArrowRight className="w-4 h-4" />
          </button>
        </div>

      </div>
    </section>
  );
}
