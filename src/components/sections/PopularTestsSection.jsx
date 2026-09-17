import React from 'react';
import { Droplet, Grid, Activity, Sun, Target, Heart, UserCheck, Shield, ArrowRight } from 'lucide-react';
import { openWhatsApp, DEFAULT_MESSAGES } from '../../utils/whatsapp';

export default function PopularTestsSection() {
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

  return (
    <section className="py-16 md:py-24 bg-purple-50/20 border-t border-purple-100/40">
      <div className="max-w-7xl mx-auto px-4 sm:px-6 lg:px-8 space-y-10">
        
        {/* Header */}
        <div className="text-center max-w-2xl mx-auto space-y-3">
          <div className="text-xs font-extrabold uppercase tracking-wider text-purple-700">
            POPULAR SERVICES
          </div>
          <h2 className="text-3xl sm:text-4xl font-extrabold text-slate-900 tracking-tight">
            Start with what you need.
          </h2>
          <p className="text-sm sm:text-base text-slate-600">
            Explore some of the healthcare services people commonly search for and book.
          </p>
        </div>

        {/* Popular Test Link Cards (Grid) */}
        <div className="grid grid-cols-1 sm:grid-cols-2 lg:grid-cols-4 gap-5">
          {popularServices.map((service) => {
            const IconComp = service.icon;
            return (
              <button
                key={service.id}
                onClick={() => openWhatsApp(DEFAULT_MESSAGES.test(service.title))}
                className="group bg-white hover:bg-purple-50/80 p-6 rounded-3xl border border-purple-100/80 shadow-xs hover:shadow-md transition-all text-left flex flex-col justify-between space-y-4 cursor-pointer"
              >
                <div className="flex items-center justify-between">
                  <div className="w-11 h-11 rounded-2xl bg-purple-50 text-purple-700 flex items-center justify-center group-hover:scale-110 transition-transform">
                    <IconComp className="w-5 h-5" />
                  </div>
                  <ArrowRight className="w-4 h-4 text-purple-400 group-hover:translate-x-1 group-hover:text-purple-700 transition-all" />
                </div>
                
                <div>
                  <h4 className="text-base font-bold text-slate-900 group-hover:text-purple-800 transition-colors">
                    {service.title}
                  </h4>
                  <p className="text-xs text-slate-500 mt-1 leading-relaxed">
                    {service.desc}
                  </p>
                </div>
              </button>
            );
          })}
        </div>

      </div>
    </section>
  );
}
