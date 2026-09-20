import React from 'react';
import { Droplet, Grid, Activity, Sun, Target, Heart, UserCheck, Shield, MessageSquare, ArrowRight } from 'lucide-react';
import { openWhatsApp, DEFAULT_MESSAGES } from '../../utils/whatsapp';

export default function PopularTestsSection() {
  const popularServices = [
    {
      id: 'cbc-test',
      title: 'CBC Test',
      desc: 'Complete blood count evaluating overall health, infection & anemia.',
      whatsappMsg: DEFAULT_MESSAGES.cbc,
      icon: Grid
    },
    {
      id: 'hba1c-test',
      title: 'HbA1c Test',
      desc: 'Average blood glucose indicator for 3-month diabetes evaluation.',
      whatsappMsg: DEFAULT_MESSAGES.test('HbA1c Test'),
      icon: Target
    },
    {
      id: 'thyroid-tests',
      title: 'Thyroid Tests',
      desc: 'T3, T4, TSH panel evaluating thyroid gland metabolic balance.',
      whatsappMsg: DEFAULT_MESSAGES.test('Thyroid Panel'),
      icon: Activity
    },
    {
      id: 'vitamin-d-test',
      title: 'Vitamin D Test',
      desc: '25-Hydroxy Vitamin D level check for bone health & immunity.',
      whatsappMsg: DEFAULT_MESSAGES.test('Vitamin D Test'),
      icon: Sun
    },
    {
      id: 'lipid-profile',
      title: 'Lipid Profile',
      desc: 'Cholesterol, HDL, LDL & Triglycerides cardiovascular screening.',
      whatsappMsg: DEFAULT_MESSAGES.test('Lipid Profile'),
      icon: Heart
    },
    {
      id: 'full-body-checkup',
      title: 'Full Body Health Checkup',
      desc: 'Comprehensive preventive health checkup covering 70+ essential parameters.',
      whatsappMsg: DEFAULT_MESSAGES.test('Full Body Health Checkup'),
      icon: UserCheck
    },
    {
      id: 'blood-tests',
      title: 'Routine Blood Tests',
      desc: 'Routine biochemistry, organ profiles, and metabolic screening.',
      whatsappMsg: DEFAULT_MESSAGES.test('Routine Blood Test'),
      icon: Droplet
    },
    {
      id: 'health-screening',
      title: 'Health Screening',
      desc: 'Proactive wellness packages for early risk identification.',
      whatsappMsg: DEFAULT_MESSAGES.preventive,
      icon: Shield
    }
  ];

  return (
    <section className="py-16 md:py-24 bg-purple-50/20 border-t border-purple-100/40">
      <div className="max-w-7xl mx-auto px-4 sm:px-6 lg:px-8 space-y-10">
        
        {/* Header */}
        <div className="text-center max-w-2xl mx-auto space-y-3">
          <div className="text-xs font-extrabold uppercase tracking-wider text-purple-700">
            POPULAR TESTS & DIAGNOSTICS
          </div>
          <h2 className="text-3xl sm:text-4xl font-extrabold text-slate-900 tracking-tight">
            Start with what you need.
          </h2>
          <p className="text-sm sm:text-base text-slate-600">
            Explore diagnostic tests commonly requested with convenient home sample collection.
          </p>
        </div>

        {/* Popular Test Cards Grid */}
        <div className="grid grid-cols-1 sm:grid-cols-2 lg:grid-cols-4 gap-5">
          {popularServices.map((service) => {
            const IconComp = service.icon;
            return (
              <button
                key={service.id}
                onClick={() => openWhatsApp(service.whatsappMsg)}
                className="group bg-white hover:bg-purple-50/80 p-6 rounded-3xl border border-purple-100/80 shadow-xs hover:shadow-md transition-all text-left flex flex-col justify-between space-y-4 cursor-pointer"
              >
                <div className="flex items-center justify-between">
                  <div className="w-11 h-11 rounded-2xl bg-purple-50 text-purple-700 flex items-center justify-center group-hover:scale-110 transition-transform">
                    <IconComp className="w-5 h-5" />
                  </div>
                  <MessageSquare className="w-4 h-4 text-emerald-600 group-hover:scale-110 transition-transform" />
                </div>
                
                <div>
                  <h4 className="text-base font-bold text-slate-900 group-hover:text-purple-800 transition-colors">
                    {service.title}
                  </h4>
                  <p className="text-xs text-slate-500 mt-1 leading-relaxed">
                    {service.desc}
                  </p>
                </div>

                <div className="pt-1 text-xs font-bold text-emerald-700 flex items-center gap-1">
                  <span>Inquire on WhatsApp</span>
                  <ArrowRight className="w-3.5 h-3.5 group-hover:translate-x-1 transition-transform" />
                </div>
              </button>
            );
          })}
        </div>

      </div>
    </section>
  );
}
