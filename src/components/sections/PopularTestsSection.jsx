import React, { useState, useMemo } from 'react';
import { Search, Sparkles, MessageCircle, ArrowRight, CheckCircle2, ShieldCheck, Droplet, Activity, Sun, Target, Heart, UserCheck, Shield, ShoppingBag } from 'lucide-react';
import { openWhatsApp } from '../../utils/whatsapp';
import { useCart } from '../../context/CartContext';

export default function PopularTestsSection() {
  const [searchQuery, setSearchQuery] = useState('');
  const { addToCart } = useCart();

  const popularServices = [
    {
      id: 'cbc-test',
      title: 'CBC Test (Complete Blood Count)',
      category: 'Blood Test',
      desc: 'Evaluates overall health, infection markers, hemoglobin, and blood cell counts.',
      keywords: ['cbc', 'blood', 'hemoglobin', 'count', 'infection'],
      icon: Droplet
    },
    {
      id: 'thyroid-tests',
      title: 'Thyroid Profile (T3, T4, TSH)',
      category: 'Hormone Screening',
      desc: 'Assesses thyroid gland function, metabolism, and endocrine balance.',
      keywords: ['thyroid', 'tsh', 't3', 't4', 'hormone', 'metabolism'],
      icon: Activity
    },
    {
      id: 'vitamin-d-test',
      title: 'Vitamin D (25-OH)',
      category: 'Vitamin & Mineral',
      desc: 'Measures Vitamin D levels essential for bone health and immune function.',
      keywords: ['vitamin', 'd', 'vitamin d', 'bones', 'deficiency'],
      icon: Sun
    },
    {
      id: 'hba1c-test',
      title: 'HbA1c Glycated Hemoglobin',
      category: 'Diabetes Care',
      desc: 'Evaluates average blood sugar levels over the past 2 to 3 months.',
      keywords: ['hba1c', 'diabetes', 'sugar', 'glucose'],
      icon: Target
    },
    {
      id: 'lipid-profile',
      title: 'Lipid Profile (Cholesterol)',
      category: 'Cardiac & Lipid',
      desc: 'Measures HDL, LDL, triglycerides, and overall cardiovascular risk markers.',
      keywords: ['lipid', 'cholesterol', 'cardiac', 'hdl', 'ldl', 'triglycerides'],
      icon: Heart
    },
    {
      id: 'full-body-checkup',
      title: 'Full Body Health Package',
      category: 'Comprehensive',
      desc: 'Comprehensive multi-parameter health screening including liver, kidney, and blood profiles.',
      keywords: ['full body', 'checkup', 'package', 'screening', 'annual'],
      icon: UserCheck
    },
    {
      id: 'liver-function',
      title: 'Liver Function Test (LFT)',
      category: 'Organ Function',
      desc: 'Assesses bilirubin, enzymes, and proteins to evaluate liver health.',
      keywords: ['liver', 'lft', 'sgot', 'sgpt', 'bilirubin'],
      icon: Shield
    },
    {
      id: 'kidney-function',
      title: 'Kidney Function Test (KFT)',
      category: 'Organ Function',
      desc: 'Measures creatinine, urea, and electrolytes for renal health assessment.',
      keywords: ['kidney', 'kft', 'creatinine', 'urea', 'renal'],
      icon: ShieldCheck
    }
  ];

  const filteredTests = useMemo(() => {
    const q = searchQuery.trim().toLowerCase();
    if (!q) return popularServices;
    return popularServices.filter(s => 
      s.title.toLowerCase().includes(q) ||
      s.category.toLowerCase().includes(q) ||
      s.desc.toLowerCase().includes(q) ||
      s.keywords.some(k => k.includes(q))
    );
  }, [searchQuery]);

  const handleOpenAssistant = () => {
    window.dispatchEvent(new CustomEvent('open-health-express-assistant', {
      detail: { initialQuery: "Hello! I am looking for a specific diagnostic test or checkup package." }
    }));
  };

  return (
    <section className="py-20 md:py-28 bg-white border-t border-slate-100" id="tests">
      <div className="max-w-7xl mx-auto px-4 sm:px-6 lg:px-8 space-y-10">
        
        {/* Section Header */}
        <div className="text-center max-w-3xl mx-auto space-y-3">
          <div className="inline-flex items-center gap-2 px-3.5 py-1.5 rounded-full bg-purple-100 border border-purple-200 text-xs font-extrabold uppercase tracking-widest text-purple-700 shadow-2xs">
            <Sparkles className="w-3.5 h-3.5 text-purple-600" />
            <span>POPULAR DIAGNOSTIC TESTS</span>
          </div>
          <h2 className="text-3xl sm:text-4xl lg:text-5xl font-extrabold text-slate-900 tracking-tight leading-[1.15]">
            Looking for a specific test?
          </h2>
          <p className="text-base sm:text-lg text-slate-600 font-medium max-w-xl mx-auto leading-relaxed">
            Search diagnostic tests and checkup packages available across our verified partner laboratories in Bengaluru.
          </p>
        </div>

        {/* Search Bar & Suggestion Chips */}
        <div className="max-w-2xl mx-auto space-y-4">
          <div className="relative">
            <Search className="w-5 h-5 text-slate-400 absolute left-4 top-1/2 -translate-y-1/2" />
            <input
              type="text"
              value={searchQuery}
              onChange={(e) => setSearchQuery(e.target.value)}
              placeholder="Search CBC, thyroid, vitamin D, lipid, full body..."
              className="w-full pl-12 pr-4 py-3.5 rounded-2xl border border-slate-200 text-sm font-medium text-slate-900 focus:ring-2 focus:ring-purple-600 outline-none shadow-xs"
            />
          </div>

          {/* Suggestion Chips */}
          <div className="flex items-center justify-center gap-2 flex-wrap text-xs">
            <span className="text-slate-400 font-bold">Quick suggestions:</span>
            {['CBC', 'HbA1c', 'Vitamin D', 'Thyroid', 'Lipid Profile', 'Full Body'].map((chip) => (
              <button
                key={chip}
                onClick={() => setSearchQuery(chip)}
                className="px-3 py-1 rounded-lg bg-slate-100 hover:bg-purple-100 text-slate-700 hover:text-purple-900 font-bold transition-colors"
              >
                {chip}
              </button>
            ))}
          </div>
        </div>

        {/* Filtered Test Results Grid */}
        <div className="grid grid-cols-1 sm:grid-cols-2 lg:grid-cols-4 gap-5">
          {filteredTests.map((service) => {
            const IconComp = service.icon;
            return (
              <div
                key={service.id}
                onClick={() => addToCart({
                  id: service.id,
                  name: service.title,
                  category: service.category,
                  price: service.id === 'full-body-checkup' ? 999 : 299,
                  originalPrice: service.id === 'full-body-checkup' ? 2499 : 599,
                  turnaround: '6-12 Hours'
                })}
                className="bg-white rounded-3xl p-6 border border-slate-200/80 shadow-md shadow-slate-900/5 hover:border-purple-300 hover:shadow-xl transition-all group cursor-pointer flex flex-col justify-between space-y-4 text-left relative overflow-hidden"
              >
                <div className="space-y-3">
                  <div className="flex items-center justify-between">
                    <div className="w-10 h-10 rounded-2xl bg-purple-50 text-purple-700 border border-purple-100 flex items-center justify-center group-hover:bg-purple-700 group-hover:text-white transition-colors shadow-2xs">
                      <IconComp className="w-5 h-5" />
                    </div>
                    <span className="text-[10px] font-extrabold uppercase tracking-wider px-2.5 py-1 rounded-full bg-slate-100 text-slate-700 border border-slate-200">
                      {service.category}
                    </span>
                  </div>

                  <div>
                    <h4 className="text-base font-extrabold text-slate-900 group-hover:text-purple-900 transition-colors">
                      {service.title}
                    </h4>
                    <p className="text-xs text-slate-600 font-medium mt-1 leading-relaxed">
                      {service.desc}
                    </p>
                  </div>
                </div>

                <div className="pt-2 flex items-center justify-between text-xs font-extrabold text-purple-700 group-hover:text-purple-900">
                  <span className="flex items-center gap-1">
                    <ShoppingBag className="w-3.5 h-3.5" />
                    <span>Book & Add to Basket</span>
                  </span>
                  <ArrowRight className="w-4 h-4 group-hover:translate-x-1 transition-transform" />
                </div>
              </div>
            );
          })}
        </div>



      </div>
    </section>
  );
}
