import React from 'react';
import HeroSection from '../components/sections/HeroSection';
import NewServicesSection from '../components/sections/NewServicesSection';
import HealthiansTrustStrip from '../components/sections/HealthiansTrustStrip';
import HealthCheckupJourney from '../components/sections/HealthCheckupJourney';
import HealthExpressAdvantage from '../components/sections/HealthExpressAdvantage';
import HealthRecordsSection from '../components/sections/HealthRecordsSection';
import Newreviewsection from '../components/sections/Newreviewsection';
import Newfaqsection from '../components/sections/Newfaqsection';
import HealthLibrarySection from '../components/sections/HealthLibrarySection';
import StickyMobileCTA from '../components/layout/StickyMobileCTA';

export default function HomePage({ onOpenUploadModal, onOpenCalculatorModal }) {
  return (
    <div className="space-y-0 relative font-healthians">
      {/* 1. HERO SECTION */}
      <HeroSection onOpenUploadModal={onOpenUploadModal} />

      {/* 2. SERVICES SLIDER */}
      <NewServicesSection />

      {/* 3. HEALTHIANS-STYLE COMPACT TRUST STRIP */}
      <HealthiansTrustStrip />

      {/* 4. PATIENT HEALTH CHECKUP JOURNEY (3 CONNECTED STEPS + DUAL CTAs) */}
      <HealthCheckupJourney onOpenUploadModal={onOpenUploadModal} />

      {/* 5. THE HEALTH EXPRESS ADVANTAGE */}
      <HealthExpressAdvantage />

      {/* 6. HEALTH RECORDS & SMART REPORTS */}
      <HealthRecordsSection />

      {/* 7. PATIENT REVIEWS & TESTIMONIALS */}
      <Newreviewsection />

      {/* 8. FREQUENTLY ASKED QUESTIONS */}
      <Newfaqsection />

      {/* 9. HEALTH LIBRARY */}
      <HealthLibrarySection />

      {/* 10. FLOATING STICKY MOBILE CTA */}
      <StickyMobileCTA onOpenUploadModal={onOpenUploadModal} />
    </div>
  );
}
