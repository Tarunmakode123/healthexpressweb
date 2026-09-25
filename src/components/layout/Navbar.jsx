import React, { useState, useEffect } from 'react';
import { Link, useLocation } from 'react-router-dom';
import { Menu, X, MessageSquare, ArrowRight, Upload, User, LogOut, ShoppingBag } from 'lucide-react';
import { openWhatsApp, DEFAULT_MESSAGES } from '../../utils/whatsapp';
import { useAuth } from '../../context/AuthContext';
import { useCart } from '../../context/CartContext';

export default function Navbar({ onOpenUploadModal }) {
  const [isScrolled, setIsScrolled] = useState(false);
  const [isMobileMenuOpen, setIsMobileMenuOpen] = useState(false);
  const [showProfileMenu, setShowProfileMenu] = useState(false);
  const location = useLocation();
  const { user, isLoggedIn, logout } = useAuth();
  const { itemCount, openCart } = useCart();

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
    setShowProfileMenu(false);
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
    { label: 'Surgeries', href: '/surgeries' },
    { label: 'Health Library', href: '/health-library' },
    { label: 'Calculators', href: '/health-calculators' },
    { label: 'For Providers', href: '/providers' },
    { label: 'About', href: '/about' },
  ];

  return (
    <header className={`sticky top-0 z-40 transition-all duration-200 ${
      isScrolled 
        ? 'bg-white/95 backdrop-blur-md shadow-sm border-b border-purple-100/60 py-2 sm:py-2.5' 
        : 'bg-white/90 backdrop-blur-sm border-b border-slate-100 py-2.5 sm:py-3.5'
    }`}>
      <div className="max-w-7xl mx-auto px-4 sm:px-6 lg:px-8">
        <div className="flex items-center justify-between">
          
          {/* Official Brand Logo */}
          <Link to="/" className="flex items-center group shrink-0 py-0.5">
            <img 
              src="/logo.png" 
              alt="Health Express - Everything Health Fast Tracked" 
              className="h-14 sm:h-16 md:h-20 lg:h-[76px] w-auto object-contain transition-transform group-hover:scale-[1.02]"
            />
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
            
            {/* Cart Icon Button */}
            <button
              onClick={openCart}
              className="relative p-2.5 rounded-xl bg-purple-50 hover:bg-purple-100 text-purple-900 border border-purple-200 transition-all shadow-2xs flex items-center gap-2 cursor-pointer group"
              aria-label="Open Health Basket"
            >
              <ShoppingBag className="w-4.5 h-4.5 text-purple-700 group-hover:scale-110 transition-transform" />
              <span className="text-xs font-extrabold hidden lg:inline">Cart</span>
              {itemCount > 0 && (
                <span className="px-1.5 py-0.5 rounded-full bg-purple-700 text-white text-[10px] font-black min-w-[18px] text-center shadow-xs">
                  {itemCount}
                </span>
              )}
            </button>

            <button
              onClick={() => openWhatsApp(DEFAULT_MESSAGES.general)}
              className="text-xs font-semibold text-slate-700 hover:text-purple-700 px-3.5 py-2 rounded-xl hover:bg-purple-50 transition-colors flex items-center gap-1.5"
            >
              <MessageSquare className="w-4 h-4 text-emerald-600" />
              <span>WhatsApp Us</span>
            </button>

            {isLoggedIn ? (
              <div className="relative">
                <button
                  onClick={() => setShowProfileMenu(!showProfileMenu)}
                  className="px-3.5 py-2 rounded-xl text-xs font-bold text-purple-900 bg-purple-100 hover:bg-purple-200 transition-all border border-purple-200 shadow-xs flex items-center gap-2"
                >
                  <div className="w-5 h-5 rounded-full bg-purple-700 text-white flex items-center justify-center text-[10px] font-bold">
                    {user?.name ? user.name.charAt(0).toUpperCase() : 'U'}
                  </div>
                  <span>{user?.name ? user.name.split(' ')[0] : 'Account'}</span>
                </button>

                {showProfileMenu && (
                  <div className="absolute right-0 mt-2 w-48 bg-white rounded-2xl shadow-xl border border-purple-100 p-2 z-50 space-y-1 animate-in fade-in duration-100">
                    <Link
                      to="/account"
                      className="w-full text-left px-3 py-2 rounded-xl text-xs font-semibold text-slate-700 hover:bg-purple-50 hover:text-purple-900 flex items-center gap-2"
                    >
                      <User className="w-3.5 h-3.5 text-purple-600" />
                      <span>My Account Dashboard</span>
                    </Link>
                    <button
                      onClick={() => {
                        logout();
                        setShowProfileMenu(false);
                      }}
                      className="w-full text-left px-3 py-2 rounded-xl text-xs font-semibold text-rose-600 hover:bg-rose-50 flex items-center gap-2 cursor-pointer"
                    >
                      <LogOut className="w-3.5 h-3.5 text-rose-500" />
                      <span>Sign Out</span>
                    </button>
                  </div>
                )}
              </div>
            ) : (
              <Link
                to="/auth"
                className="px-4 py-2 rounded-xl text-xs font-bold text-slate-700 bg-slate-100 hover:bg-purple-100 hover:text-purple-800 transition-all border border-slate-200/80 shadow-xs"
              >
                Sign In
              </Link>
            )}
          </div>

          {/* Mobile Right Quick Action & Hamburger */}
          <div className="md:hidden flex items-center gap-2">
            {/* Mobile Cart Button */}
            <button
              onClick={openCart}
              className="relative p-2 rounded-xl bg-purple-100 text-purple-900 border border-purple-200 flex items-center justify-center cursor-pointer"
              aria-label="Open Health Basket"
            >
              <ShoppingBag className="w-4 h-4 text-purple-700" />
              {itemCount > 0 && (
                <span className="absolute -top-1.5 -right-1.5 w-4.5 h-4.5 rounded-full bg-purple-700 text-white text-[9px] font-black flex items-center justify-center">
                  {itemCount}
                </span>
              )}
            </button>
            {!isLoggedIn ? (
              <Link
                to="/auth"
                className="px-3 py-1.5 text-xs font-bold text-purple-900 bg-purple-100 hover:bg-purple-200 rounded-xl shadow-xs flex items-center gap-1 touch-target active:scale-95 transition-transform border border-purple-200"
              >
                <User className="w-3.5 h-3.5 text-purple-700" />
                <span>Sign In</span>
              </Link>
            ) : (
              <Link
                to="/auth"
                className="px-3 py-1.5 text-xs font-bold text-purple-900 bg-purple-100 rounded-xl shadow-xs flex items-center gap-1 touch-target border border-purple-200"
              >
                <div className="w-4 h-4 rounded-full bg-purple-700 text-white flex items-center justify-center text-[9px] font-bold">
                  {user?.name ? user.name.charAt(0).toUpperCase() : 'U'}
                </div>
                <span>Account</span>
              </Link>
            )}

            <button
              onClick={() => setIsMobileMenuOpen(!isMobileMenuOpen)}
              className="p-2 text-slate-700 hover:text-purple-700 hover:bg-purple-50 rounded-xl touch-target active:scale-95 transition-transform"
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
              <Link
                to="/auth"
                onClick={() => setIsMobileMenuOpen(false)}
                className="w-full py-3.5 px-5 rounded-2xl bg-purple-50 border border-purple-200 text-purple-900 font-bold text-sm flex items-center justify-between shadow-xs active:scale-[0.98] transition-transform"
              >
                <span className="flex items-center gap-2.5">
                  <User className="w-5 h-5 text-purple-700" />
                  {isLoggedIn ? `Account (${user?.name || 'Member'})` : 'Sign In / Register'}
                </span>
                <ArrowRight className="w-4 h-4 text-purple-700" />
              </Link>

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
