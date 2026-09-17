import React, { useState, useEffect } from 'react';
import { Link, useLocation } from 'react-router-dom';
import { Activity, Menu, X, MessageSquare, ArrowRight, Upload } from 'lucide-react';
import { openWhatsApp, DEFAULT_MESSAGES } from '../../utils/whatsapp';

export default function Navbar({ onOpenUploadModal }) {
  const [isScrolled, setIsScrolled] = useState(false);
  const [isMobileMenuOpen, setIsMobileMenuOpen] = useState(false);
  const location = useLocation();

  useEffect(() => {
    const handleScroll = () => {
      setIsScrolled(window.scrollY > 15);
    };
    window.addEventListener('scroll', handleScroll, { passive: true });
    return () => window.removeEventListener('scroll', handleScroll);
  }, []);

  // Close mobile menu when route changes
  useEffect(() => {
    setIsMobileMenuOpen(false);
  }, [location]);

  // Lock body scroll when mobile drawer is open
  useEffect(() => {
    if (isMobileMenuOpen) {
      document.body.style.overflow = 'hidden';
    } else {
      document.body.style.overflow = '';
    }
    return () => {
      document.body.style.overflow = '';
    };
  }, [isMobileMenuOpen]);

  const navLinks = [
    { label: 'Services', href: '/services' },
    { label: 'Health Library', href: '/health-library' },
    { label: 'For Providers', href: '/providers' },
    { label: 'About', href: '/about' },
  ];

  return (
    <header className={`sticky top-0 z-40 transition-all duration-200 ${
      isScrolled 
        ? 'bg-white/95 backdrop-blur-md shadow-sm border-b border-purple-100/60 py-2.5 sm:py-3' 
        : 'bg-white/85 backdrop-blur-sm border-b border-slate-100 py-3 sm:py-4'
    }`}>
      <div className="max-w-7xl mx-auto px-4 sm:px-6 lg:px-8">
        <div className="flex items-center justify-between">
          
          {/* Logo */}
          <Link to="/" className="flex items-center gap-2.5 group shrink-0">
            <div className="w-9 h-9 sm:w-10 sm:h-10 rounded-xl bg-purple-700 text-white flex items-center justify-center shadow-md shadow-purple-700/20 group-hover:bg-purple-800 transition-colors">
              <Activity className="w-5 h-5 stroke-[2.5]" />
            </div>
            <span className="text-lg sm:text-xl font-extrabold tracking-tight text-slate-900 group-hover:text-purple-700 transition-colors">
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

          {/* Header Right Desktop Actions */}
          <div className="hidden md:flex items-center gap-3">
            <button
              onClick={() => openWhatsApp(DEFAULT_MESSAGES.general)}
              className="text-xs font-semibold text-slate-700 hover:text-purple-700 px-3.5 py-2.5 rounded-xl hover:bg-purple-50 transition-colors flex items-center gap-1.5"
            >
              <MessageSquare className="w-4 h-4 text-emerald-600" />
              <span>WhatsApp Us</span>
            </button>

            <button
              onClick={onOpenUploadModal}
              className="px-4 py-2.5 rounded-xl text-xs font-bold text-slate-700 bg-slate-100 hover:bg-purple-100 hover:text-purple-800 transition-all border border-slate-200/80 shadow-xs"
            >
              Sign In
            </button>
          </div>

          {/* Mobile Right Quick Action & Hamburger */}
          <div className="md:hidden flex items-center gap-2">
            <button
              onClick={onOpenUploadModal}
              className="px-3 py-2 text-xs font-bold text-white bg-purple-700 hover:bg-purple-800 rounded-xl shadow-xs flex items-center gap-1.5 touch-target active:scale-95 transition-transform"
            >
              <Upload className="w-3.5 h-3.5" />
              <span>Upload</span>
            </button>

            <button
              onClick={() => setIsMobileMenuOpen(!isMobileMenuOpen)}
              className="p-2.5 text-slate-700 hover:text-purple-700 hover:bg-purple-50 rounded-xl touch-target active:scale-95 transition-transform"
              aria-label="Toggle Navigation Menu"
            >
              {isMobileMenuOpen ? <X className="w-6 h-6 text-purple-700" /> : <Menu className="w-6 h-6" />}
            </button>
          </div>
        </div>
      </div>

      {/* Mobile Navigation Drawer Modal */}
      {isMobileMenuOpen && (
        <div className="md:hidden fixed inset-x-0 top-[57px] bottom-0 bg-slate-900/40 backdrop-blur-sm z-50 animate-in fade-in duration-150">
          <div className="bg-white border-b border-purple-100 shadow-xl px-5 pt-3 pb-6 max-h-[85vh] overflow-y-auto space-y-4">
            
            {/* Nav Links List */}
            <div className="flex flex-col space-y-1">
              <span className="text-[10px] font-extrabold uppercase tracking-wider text-slate-400 px-3 py-1">
                Navigation
              </span>
              {navLinks.map((link) => (
                <Link
                  key={link.label}
                  to={link.href}
                  className={`px-4 py-3 rounded-2xl text-base font-semibold flex items-center justify-between transition-colors ${
                    location.pathname === link.href
                      ? 'bg-purple-50 text-purple-800 font-bold'
                      : 'text-slate-800 hover:bg-slate-50'
                  }`}
                >
                  <span>{link.label}</span>
                  <ArrowRight className="w-4 h-4 text-slate-400" />
                </Link>
              ))}
            </div>
            
            {/* Quick Action Buttons */}
            <div className="pt-3 border-t border-slate-100 space-y-2.5">
              <button
                onClick={() => {
                  openWhatsApp(DEFAULT_MESSAGES.general);
                  setIsMobileMenuOpen(false);
                }}
                className="w-full py-3.5 px-5 rounded-2xl bg-emerald-50 border border-emerald-200 text-emerald-800 font-bold text-sm flex items-center justify-between shadow-xs active:scale-[0.98] transition-transform"
              >
                <span className="flex items-center gap-2.5">
                  <MessageSquare className="w-5 h-5 text-emerald-600 fill-emerald-600/20" />
                  Chat on WhatsApp
                </span>
                <ArrowRight className="w-4 h-4 text-emerald-700" />
              </button>

              <button
                onClick={() => {
                  onOpenUploadModal();
                  setIsMobileMenuOpen(false);
                }}
                className="w-full py-3.5 px-5 rounded-2xl bg-purple-700 text-white font-bold text-sm flex items-center justify-between shadow-md shadow-purple-700/20 active:scale-[0.98] transition-transform"
              >
                <span className="flex items-center gap-2.5">
                  <Upload className="w-5 h-5" />
                  Upload Prescription / Order
                </span>
                <ArrowRight className="w-4 h-4 text-purple-200" />
              </button>
            </div>

          </div>
        </div>
      )}
    </header>
  );
}
