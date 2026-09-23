import React from 'react';
import HeroSection from '../components/sections/HeroSection';
import ProblemSection from '../components/sections/ProblemSection';
import HowItWorksSection from '../components/sections/HowItWorksSection';
import ServicesSection from '../components/sections/ServicesSection';
import PreventiveHealthSection from '../components/sections/PreventiveHealthSection';
import QuickHealthChecks from '../components/health-checks/QuickHealthChecks';
import WhyHealthExpressSection from '../components/sections/WhyHealthExpressSection';
import PopularTestsSection from '../components/sections/PopularTestsSection';
import TrustSection from '../components/sections/TrustSection';
import HealthRecordsSection from '../components/sections/HealthRecordsSection';
import CitiesSection from '../components/sections/CitiesSection';
import HealthLibrarySection from '../components/sections/HealthLibrarySection';
import FAQSection from '../components/sections/FAQSection';
import FinalCTASection from '../components/sections/FinalCTASection';
import StickyMobileCTA from '../components/layout/StickyMobileCTA';

export default function HomePage({ onOpenUploadModal }) {
  return (
    <div className="space-y-0 relative">
      {/* 1. WHO ARE YOU? -> Hero */}
      <HeroSection onOpenUploadModal={onOpenUploadModal} />

      {/* 2. WHY DO I NEED YOU? -> Problem */}
      <ProblemSection />

      {/* HOW IT WORKS -> Request to Care */}
      <HowItWorksSection onOpenUploadModal={onOpenUploadModal} />

      {/* 4. WHAT CAN I USE TODAY? -> Current Launch Services */}
      <ServicesSection />

      {/* PREVENTIVE HEALTH -> Reactive to Proactive */}
      <PreventiveHealthSection />

      {/* QUICK HEALTH CHECKS -> Interactive everyday health utilities */}
      <QuickHealthChecks onOpenUploadModal={onOpenUploadModal} />

      {/* POPULAR SERVICES -> High intent tests */}
      <PopularTestsSection />

      {/* BUILT AROUND YOU -> Care Commitment & Benefits */}
      <WhyHealthExpressSection />

      {/* HEALTH RECORDS AND REPORTS */}
      <HealthRecordsSection />

      {/* 6. WHY TRUST YOU? -> Verified partners & Privacy */}
      <TrustSection />

      {/* LOCATION -> Starting with Bengaluru */}
      <CitiesSection />

      {/* HEALTH LIBRARY -> Evidence-informed guides */}
      <HealthLibrarySection />

      {/* FAQ -> Frequently Asked Questions */}
      <FAQSection />

      {/* FINAL CTA -> Healthcare for your family */}
      <FinalCTASection onOpenUploadModal={onOpenUploadModal} />

      {/* Floating Sticky Mobile WhatsApp CTA */}
      <StickyMobileCTA onOpenUploadModal={onOpenUploadModal} />
    </div>
  );
}
