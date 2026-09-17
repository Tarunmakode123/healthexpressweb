import React from 'react';
import HeroSection from '../components/sections/HeroSection';
import SimplerHealthcareSection from '../components/sections/SimplerHealthcareSection';
import HowItWorksSection from '../components/sections/HowItWorksSection';
import ServicesSection from '../components/sections/ServicesSection';
import PreventiveHealthSection from '../components/sections/PreventiveHealthSection';
import WhyHealthExpressSection from '../components/sections/WhyHealthExpressSection';
import PopularTestsSection from '../components/sections/PopularTestsSection';
import CitiesSection from '../components/sections/CitiesSection';
import HealthLibrarySection from '../components/sections/HealthLibrarySection';
import TrustSection from '../components/sections/TrustSection';
import FamilyHealthSection from '../components/sections/FamilyHealthSection';
import FAQSection from '../components/sections/FAQSection';
import FinalCTASection from '../components/sections/FinalCTASection';

export default function HomePage({ onOpenUploadModal }) {
  return (
    <div className="space-y-0">
      {/* SECTION 01 — ABOVE THE FOLD */}
      <HeroSection onOpenUploadModal={onOpenUploadModal} />
      
      {/* SECTION 02 — THE CORE PROMISE (YOU ASK. WE COORDINATE.) */}
      <SimplerHealthcareSection />
      
      {/* SECTION 03 — HOW IT WORKS */}
      <HowItWorksSection onOpenUploadModal={onOpenUploadModal} />
      
      {/* SECTION 04 — WHAT HEALTH EXPRESS CAN HELP WITH */}
      <ServicesSection />
      
      {/* SECTION 05 — PREVENTIVE HEALTH */}
      <PreventiveHealthSection />
      
      {/* SECTION 06 — WHY HEALTH EXPRESS (BUILT AROUND YOU) */}
      <WhyHealthExpressSection />
      
      {/* SECTION 07 — POPULAR HEALTH SERVICES */}
      <PopularTestsSection />
      
      {/* SECTION 08 — HEALTHCARE WHERE YOU ARE */}
      <CitiesSection />
      
      {/* SECTION 09 — HEALTH LIBRARY */}
      <HealthLibrarySection />
      
      {/* SECTION 10 — TRUST */}
      <TrustSection />
      
      {/* SECTION 11 — FAMILY HEALTH / HEALTH RECORDS */}
      <FamilyHealthSection />
      
      {/* SECTION 12 — FAQ */}
      <FAQSection />
      
      {/* SECTION 13 — FINAL CTA */}
      <FinalCTASection onOpenUploadModal={onOpenUploadModal} />
    </div>
  );
}
