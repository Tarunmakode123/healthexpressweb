import React from 'react';
import HeroSection from '../components/sections/HeroSection';
import HomeCategoryTiles from '../components/sections/HomeCategoryTiles';
import HealthiansTrustStrip from '../components/sections/HealthiansTrustStrip';
import NewServicesSection from '../components/sections/NewServicesSection';
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

      {/* 2. HEALTHIANS-STYLE 6 PASTEL CATEGORY TILES (EVERY BOX HAS ICON) */}
      <HomeCategoryTiles onOpenUploadModal={onOpenUploadModal} />

      {/* 3. HEALTHIANS-STYLE COMPACT TRUST STRIP */}
      <HealthiansTrustStrip />

      {/* 4. SERVICES SLIDER (EVERY CARD BOX HAS MEDICAL ICON BADGE) */}
      <NewServicesSection />

      {/* 5. PATIENT HEALTH CHECKUP JOURNEY (TIMELINE CIRCULAR ICON BADGES) */}
      <HealthCheckupJourney onOpenUploadModal={onOpenUploadModal} />

      {/* 6. THE HEALTH EXPRESS ADVANTAGE (6-COLUMN BORDERLESS ICONS) */}
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
