import React from 'react';
import { ShieldCheck, Lock, UserCheck, FileCheck, CheckCircle2 } from 'lucide-react';

export default function TrustSection() {
  const trustItems = [
    {
      icon: Lock,
      title: 'Private & Secure Document Handling',
      description: 'Your prescriptions and medical orders are stored securely with encrypted storage and private access policies.'
    },
    {
      icon: UserCheck,
      title: 'Dedicated Care Team Coordination',
      description: 'Every enquiry is handled by a human care coordinator who verifies requirements before matching with healthcare providers.'
    },
    {
      icon: FileCheck,
      title: 'Transparent Enquiry Tracking',
      description: 'Receive a dedicated Enquiry ID (e.g. HE-2026-XXXXX) for transparent tracking and seamless WhatsApp communication.'
    },
    {
      icon: ShieldCheck,
      title: 'Zero Login Barrier for Guests',
      description: 'Submit your health service request or prescription immediately without complex account creation steps.'
    }
  ];

  return (
    <section className="py-16 md:py-24 bg-white border-t border-purple-100/60 relative overflow-hidden" id="trust">
      <div className="max-w-7xl mx-auto px-4 sm:px-6 lg:px-8 space-y-12 relative z-10">
        
        {/* Header */}
        <div className="text-center max-w-3xl mx-auto space-y-3">
          <div className="inline-flex items-center gap-2 px-3.5 py-1.5 rounded-full bg-purple-100 border border-purple-200 text-xs font-bold uppercase tracking-wider text-purple-800 shadow-2xs">
            PRODUCT TRUST & TRANSPARENCY
          </div>
          <h2 className="text-3xl sm:text-4xl font-extrabold text-slate-900 tracking-tight">
            Healthcare coordination <span className="gradient-text-purple">built around trust.</span>
          </h2>
          <p className="text-base sm:text-lg text-slate-600">
            We prioritize privacy, clarity, and human support throughout your healthcare request.
          </p>
        </div>

        {/* 4 Trust Cards Grid */}
        <div className="grid grid-cols-1 sm:grid-cols-2 lg:grid-cols-4 gap-6">
          {trustItems.map((item, idx) => {
            const IconComponent = item.icon;
            return (
              <div 
                key={idx}
                className="bento-card rounded-3xl p-6 border border-purple-100/80 shadow-xs space-y-4 text-left group"
              >
                <div className="w-12 h-12 rounded-2xl bg-purple-700 text-white flex items-center justify-center shadow-xs group-hover:scale-105 group-hover:bg-purple-800 transition-all">
                  <IconComponent className="w-6 h-6" />
                </div>
                <h3 className="text-base font-extrabold text-slate-900 group-hover:text-purple-950 transition-colors">
                  {item.title}
                </h3>
                <p className="text-xs text-slate-600 leading-relaxed">
                  {item.description}
                </p>
              </div>
            );
          })}
        </div>

      </div>
    </section>
  );
}
