import React from 'react';
import HeroSection from '../components/sections/HeroSection';
import PreventiveHealthSection from '../components/sections/PreventiveHealthSection';
import SimplerHealthcareSection from '../components/sections/SimplerHealthcareSection';
import HowItWorksSection from '../components/sections/HowItWorksSection';
import ServicesSection from '../components/sections/ServicesSection';
import PopularTestsSection from '../components/sections/PopularTestsSection';
import CitiesSection from '../components/sections/CitiesSection';
import HealthLibrarySection from '../components/sections/HealthLibrarySection';
import FinalCTASection from '../components/sections/FinalCTASection';

export default function HomePage({ onOpenUploadModal }) {
  return (
    <div className="space-y-0">
      <HeroSection onOpenUploadModal={onOpenUploadModal} />
      <PreventiveHealthSection />
      <SimplerHealthcareSection />
      <HowItWorksSection onOpenUploadModal={onOpenUploadModal} />
      <ServicesSection />
      <PopularTestsSection />
      <CitiesSection />
      <HealthLibrarySection />
      <FinalCTASection onOpenUploadModal={onOpenUploadModal} />
    </div>
  );
}
