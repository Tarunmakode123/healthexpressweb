import React from 'react';
import HeroSection from '../components/sections/HeroSection';
import ProblemSection from '../components/sections/ProblemSection';
import SimplerHealthcareSection from '../components/sections/SimplerHealthcareSection';
import HowItWorksSection from '../components/sections/HowItWorksSection';
import ServicesSection from '../components/sections/ServicesSection';
import PreventiveHealthSection from '../components/sections/PreventiveHealthSection';
import QuickHealthChecks from '../components/health-checks/QuickHealthChecks';
import WhyHealthExpressSection from '../components/sections/WhyHealthExpressSection';
import PopularTestsSection from '../components/sections/PopularTestsSection';
import FamilySection from '../components/sections/FamilySection';
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

      {/* 3. WHAT DO YOU DO? -> What Health Express Does */}
      <SimplerHealthcareSection />

      {/* HOW IT WORKS -> Request to Care */}
      <HowItWorksSection onOpenUploadModal={onOpenUploadModal} />

      {/* 4. WHAT CAN I USE TODAY? -> Current Launch Services */}
      <ServicesSection />

      {/* PREVENTIVE HEALTH -> Reactive to Proactive */}
      <PreventiveHealthSection />

      {/* QUICK HEALTH CHECKS -> Interactive everyday health utilities */}
      <QuickHealthChecks onOpenUploadModal={onOpenUploadModal} />

      {/* BUILT AROUND YOU -> Feature Cards */}
      <WhyHealthExpressSection />

      {/* POPULAR SERVICES -> High intent tests */}
      <PopularTestsSection />

      {/* 5. WHY FOR MY FAMILY? -> Family Health Manager */}
      <FamilySection onOpenUploadModal={onOpenUploadModal} />

      {/* 6. WHY TRUST YOU? -> Verified partners & Privacy */}
      <TrustSection />

      {/* 7. WHAT ELSE? -> Health Records */}
      <HealthRecordsSection />

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
