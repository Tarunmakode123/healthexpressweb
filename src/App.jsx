import React, { useState, useEffect } from 'react';
import { BrowserRouter as Router, Routes, Route, useLocation } from 'react-router-dom';
import Navbar from './components/layout/Navbar';
import Footer from './components/layout/Footer';
import PrescriptionModal from './components/common/PrescriptionModal';
import StickyCTABar from './components/common/StickyCTABar';

import HomePage from './pages/HomePage';
import ServicesPage from './pages/ServicesPage';
import HealthLibraryPage from './pages/HealthLibraryPage';
import ArticleDetailPage from './pages/ArticleDetailPage';
import AboutPage from './pages/AboutPage';
import ProvidersPage from './pages/ProvidersPage';
import ContactPage from './pages/ContactPage';
import LegalPage from './pages/LegalPage';

// Helper component to scroll window to top on route navigation
function ScrollToTop() {
  const { pathname } = useLocation();

  useEffect(() => {
    window.scrollTo(0, 0);
  }, [pathname]);

  return null;
}

export default function App() {
  const [isUploadModalOpen, setIsUploadModalOpen] = useState(false);

  const handleOpenUploadModal = () => setIsUploadModalOpen(true);
  const handleCloseUploadModal = () => setIsUploadModalOpen(false);

  return (
    <Router>
      <ScrollToTop />
      <div className="min-h-screen flex flex-col bg-white text-slate-900 font-sans selection:bg-purple-100 selection:text-purple-900 antialiased pb-16 md:pb-0">
        
        {/* Responsive Header Navbar */}
        <Navbar onOpenUploadModal={handleOpenUploadModal} />

        {/* Main Content Area */}
        <main className="flex-1">
          <Routes>
            <Route path="/" element={<HomePage onOpenUploadModal={handleOpenUploadModal} />} />
            <Route path="/services" element={<ServicesPage onOpenUploadModal={handleOpenUploadModal} />} />
            <Route path="/health-library" element={<HealthLibraryPage />} />
            <Route path="/health-library/:slug" element={<ArticleDetailPage onOpenUploadModal={handleOpenUploadModal} />} />
            <Route path="/about" element={<AboutPage onOpenUploadModal={handleOpenUploadModal} />} />
            <Route path="/providers" element={<ProvidersPage />} />
            <Route path="/contact" element={<ContactPage />} />
            <Route path="/legal/:type" element={<LegalPage />} />
          </Routes>
        </main>

        {/* Footer */}
        <Footer onOpenUploadModal={handleOpenUploadModal} />

        {/* Persistent Floating Desktop & Mobile Bottom Sticky CTAs */}
        <StickyCTABar onOpenUploadModal={handleOpenUploadModal} />

        {/* Global Upload Prescription Modal */}
        <PrescriptionModal 
          isOpen={isUploadModalOpen} 
          onClose={handleCloseUploadModal} 
        />

      </div>
    </Router>
  );
}
