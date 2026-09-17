import React, { useState, useEffect } from 'react';
import { Link, useLocation } from 'react-router-dom';
import { Activity, Menu, X, MessageSquare, ArrowRight } from 'lucide-react';
import { openWhatsApp, DEFAULT_MESSAGES } from '../../utils/whatsapp';

export default function Navbar({ onOpenUploadModal }) {
  const [isScrolled, setIsScrolled] = useState(false);
  const [isMobileMenuOpen, setIsMobileMenuOpen] = useState(false);
  const location = useLocation();

  useEffect(() => {
    const handleScroll = () => {
      setIsScrolled(window.scrollY > 20);
    };
    window.addEventListener('scroll', handleScroll);
    return () => window.removeEventListener('scroll', handleScroll);
  }, []);

  // Close mobile menu when route changes
  useEffect(() => {
    setIsMobileMenuOpen(false);
  }, [location]);

  const navLinks = [
    { label: 'Services', href: '/services' },
    { label: 'Health Library', href: '/health-library' },
    { label: 'For Providers', href: '/providers' },
    { label: 'About', href: '/about' },
  ];

  return (
    <header className={`sticky top-0 z-40 transition-all duration-200 ${
      isScrolled 
        ? 'bg-white/90 backdrop-blur-md shadow-sm border-b border-purple-100/50 py-3' 
        : 'bg-white/80 backdrop-blur-sm border-b border-slate-100 py-4'
    }`}>
      <div className="max-w-7xl mx-auto px-4 sm:px-6 lg:px-8">
        <div className="flex items-center justify-between">
          
          {/* Logo */}
          <Link to="/" className="flex items-center gap-2.5 group">
            <div className="w-9 h-9 rounded-xl bg-purple-700 text-white flex items-center justify-center shadow-md shadow-purple-700/20 group-hover:bg-purple-800 transition-colors">
              <Activity className="w-5 h-5 stroke-[2.5]" />
            </div>
            <span className="text-xl font-extrabold tracking-tight text-slate-900 group-hover:text-purple-700 transition-colors">
              Health Express
            </span>
          </Link>

          {/* Desktop Navigation */}
          <nav className="hidden md:flex items-center gap-8">
            {navLinks.map((link) => (
              <Link
                key={link.label}
                to={link.href}
                className={`text-sm font-semibold transition-colors ${
                  location.pathname === link.href
                    ? 'text-purple-700 font-bold'
                    : 'text-slate-600 hover:text-purple-700'
                }`}
              >
                {link.label}
              </Link>
            ))}
          </nav>

          {/* Header Right Actions */}
          <div className="hidden md:flex items-center gap-3">
            <button
              onClick={() => openWhatsApp(DEFAULT_MESSAGES.general)}
              className="text-xs font-semibold text-slate-700 hover:text-purple-700 px-3 py-2 rounded-xl hover:bg-purple-50 transition-colors flex items-center gap-1.5"
            >
              <MessageSquare className="w-4 h-4 text-emerald-600" />
              <span>WhatsApp Us</span>
            </button>

            <button
              onClick={onOpenUploadModal}
              className="px-4 py-2 rounded-xl text-xs font-bold text-slate-700 bg-slate-100 hover:bg-purple-100 hover:text-purple-800 transition-all border border-slate-200/80 shadow-xs"
            >
              Sign In
            </button>
          </div>

          {/* Mobile Menu Button */}
          <div className="md:hidden flex items-center gap-2">
            <button
              onClick={onOpenUploadModal}
              className="px-3 py-1.5 text-xs font-semibold text-white bg-purple-700 rounded-lg shadow-sm"
            >
              Upload
            </button>
            <button
              onClick={() => setIsMobileMenuOpen(!isMobileMenuOpen)}
              className="p-2 text-slate-600 hover:text-slate-900 hover:bg-slate-100 rounded-lg"
              aria-label="Toggle Navigation Menu"
            >
              {isMobileMenuOpen ? <X className="w-6 h-6" /> : <Menu className="w-6 h-6" />}
            </button>
          </div>
        </div>

        {/* Mobile Navigation Drawer */}
        {isMobileMenuOpen && (
          <div className="md:hidden mt-3 pt-3 pb-4 border-t border-slate-100 animate-in slide-in-from-top-2 duration-150">
            <div className="flex flex-col gap-2">
              {navLinks.map((link) => (
                <Link
                  key={link.label}
                  to={link.href}
                  className={`px-4 py-2.5 rounded-xl text-sm font-medium transition-colors ${
                    location.pathname === link.href
                      ? 'bg-purple-50 text-purple-700 font-semibold'
                      : 'text-slate-700 hover:bg-slate-50'
                  }`}
                >
                  {link.label}
                </Link>
              ))}
              
              <div className="pt-2 mt-2 border-t border-slate-100 flex flex-col gap-2">
                <button
                  onClick={() => {
                    openWhatsApp(DEFAULT_MESSAGES.general);
                    setIsMobileMenuOpen(false);
                  }}
                  className="w-full py-2.5 px-4 rounded-xl bg-emerald-50 text-emerald-700 font-medium text-sm flex items-center justify-between"
                >
                  <span className="flex items-center gap-2">
                    <MessageSquare className="w-4 h-4 text-emerald-600" />
                    Chat on WhatsApp
                  </span>
                  <ArrowRight className="w-4 h-4" />
                </button>

                <button
                  onClick={() => {
                    onOpenUploadModal();
                    setIsMobileMenuOpen(false);
                  }}
                  className="w-full py-2.5 px-4 rounded-xl bg-purple-700 text-white font-medium text-sm flex items-center justify-between shadow-sm"
                >
                  <span>Upload Prescription</span>
                  <ArrowRight className="w-4 h-4" />
                </button>
              </div>
            </div>
          </div>
        )}
      </div>
    </header>
  );
}
