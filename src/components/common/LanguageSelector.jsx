import React, { useState, useEffect, useRef } from 'react';
import { Globe, ChevronDown, Check } from 'lucide-react';

export const SUPPORTED_LANGUAGES = [
  { code: 'en', name: 'English', native: 'English', flag: '🇬🇧' },
  { code: 'kn', name: 'Kannada', native: 'ಕನ್ನಡ', flag: '🇮🇳' },
  { code: 'hi', name: 'Hindi', native: 'हिंदी', flag: '🇮🇳' }
];

export default function LanguageSelector({ variant = 'default', className = '' }) {
  const [currentLang, setCurrentLang] = useState('en');
  const [isOpen, setIsOpen] = useState(false);
  const containerRef = useRef(null);

  // Sync state with stored language or cookies on mount
  useEffect(() => {
    // 1. Read stored language
    const saved = localStorage.getItem('he_selected_language');
    if (saved && (saved === 'kn' || saved === 'hi' || saved === 'en')) {
      setCurrentLang(saved);
    } else {
      const match = document.cookie.match(/googtrans=\/en\/([a-z]{2})/);
      if (match && (match[1] === 'kn' || match[1] === 'hi' || match[1] === 'en')) {
        setCurrentLang(match[1]);
      }
    }

    // 2. Initialize Google Translate Script
    if (!window.googleTranslateElementInit) {
      window.googleTranslateElementInit = () => {
        try {
          if (window.google && window.google.translate) {
            new window.google.translate.TranslateElement({
              pageLanguage: 'en',
              includedLanguages: 'en,hi,kn',
              autoDisplay: false
            }, 'google_translate_element');
          }
        } catch (e) {
          console.warn('Translate init error:', e);
        }
      };
    }

    if (!document.getElementById('google-translate-script')) {
      const script = document.createElement('script');
      script.id = 'google-translate-script';
      script.type = 'text/javascript';
      script.src = '//translate.google.com/translate_a/element.js?cb=googleTranslateElementInit';
      script.async = true;
      document.body.appendChild(script);
    }
  }, []);

  // Click outside to close dropdown
  useEffect(() => {
    const handleClickOutside = (e) => {
      if (containerRef.current && !containerRef.current.contains(e.target)) {
        setIsOpen(false);
      }
    };
    document.addEventListener('mousedown', handleClickOutside);
    return () => document.removeEventListener('mousedown', handleClickOutside);
  }, []);

  // Handle switching language
  const handleSelectLanguage = (langCode) => {
    if (langCode === currentLang) {
      setIsOpen(false);
      return;
    }

    setCurrentLang(langCode);
    localStorage.setItem('he_selected_language', langCode);
    setIsOpen(false);

    // Set cookie for google translate engine
    const cookieVal = `/en/${langCode}`;
    const hostname = window.location.hostname;

    // Remove existing cookies to prevent conflict
    document.cookie = `googtrans=; expires=Thu, 01 Jan 1970 00:00:00 UTC; path=/;`;
    if (hostname) {
      document.cookie = `googtrans=; expires=Thu, 01 Jan 1970 00:00:00 UTC; domain=.${hostname}; path=/;`;
      document.cookie = `googtrans=; expires=Thu, 01 Jan 1970 00:00:00 UTC; domain=${hostname}; path=/;`;
    }

    if (langCode !== 'en') {
      document.cookie = `googtrans=${cookieVal}; path=/;`;
      if (hostname) {
        document.cookie = `googtrans=${cookieVal}; domain=.${hostname}; path=/;`;
        document.cookie = `googtrans=${cookieVal}; domain=${hostname}; path=/;`;
      }
    }

    // Trigger select element in DOM
    const combo = document.querySelector('.goog-te-combo');
    if (combo) {
      combo.value = langCode;
      combo.dispatchEvent(new Event('change'));
    } else {
      // If combo not ready yet, reload page so script reads cookie on boot
      window.location.reload();
    }
  };

  const activeLangObj = SUPPORTED_LANGUAGES.find(l => l.code === currentLang) || SUPPORTED_LANGUAGES[0];

  return (
    <div ref={containerRef} className={`relative notranslate ${className}`} translate="no">
      
      {/* Hidden container where Google Translate mounts */}
      <div id="google_translate_element" className="hidden" aria-hidden="true" />

      {/* Trigger Button */}
      <button
        type="button"
        onClick={() => setIsOpen(!isOpen)}
        className={`flex items-center gap-1.5 px-2.5 py-1.5 rounded-xl border transition-all cursor-pointer font-bold text-xs ${
          currentLang !== 'en'
            ? 'bg-purple-50 text-purple-900 border-purple-300 shadow-2xs'
            : 'bg-slate-50 hover:bg-purple-50 text-slate-700 hover:text-purple-900 border-slate-200/90'
        }`}
        title="Change website language / ಭಾಷೆಯನ್ನು ಬದಲಾಯಿಸಿ / भाषा बदलें"
        aria-label="Select Language"
      >
        <Globe className="w-3.5 h-3.5 text-purple-700 shrink-0" />
        <span className="font-extrabold">{activeLangObj.native}</span>
        <ChevronDown className={`w-3 h-3 text-slate-400 transition-transform duration-200 ${isOpen ? 'rotate-180' : ''}`} />
      </button>

      {/* Language Options Dropdown */}
      {isOpen && (
        <div className="absolute right-0 sm:left-0 mt-2 w-48 sm:w-52 bg-white rounded-2xl shadow-xl border border-slate-200 p-2 z-50 animate-in fade-in duration-100 text-left">
          
          <div className="px-2.5 py-1 mb-1 border-b border-slate-100">
            <span className="text-[10px] font-extrabold uppercase tracking-wider text-slate-400">
              SELECT LANGUAGE / ಭಾಷೆ
            </span>
          </div>

          <div className="space-y-1">
            {SUPPORTED_LANGUAGES.map((lang) => {
              const isSelected = lang.code === currentLang;
              return (
                <button
                  key={lang.code}
                  type="button"
                  onClick={() => handleSelectLanguage(lang.code)}
                  className={`w-full text-left px-3 py-2 rounded-xl text-xs font-semibold transition-all flex items-center justify-between cursor-pointer group ${
                    isSelected
                      ? 'bg-purple-50 text-purple-900 font-black border border-purple-200/80 shadow-2xs'
                      : 'text-slate-700 hover:bg-slate-50 hover:text-purple-900 border border-transparent'
                  }`}
                >
                  <div className="flex items-center gap-2">
                    <span className="text-sm shrink-0">{lang.flag}</span>
                    <div>
                      <div className="font-extrabold text-xs text-slate-900 group-hover:text-purple-900">
                        {lang.native}
                      </div>
                      <div className="text-[10px] text-slate-400 font-medium">
                        {lang.name}
                      </div>
                    </div>
                  </div>

                  {isSelected && (
                    <div className="w-5 h-5 rounded-full bg-purple-700 text-white flex items-center justify-center shrink-0">
                      <Check className="w-3 h-3" />
                    </div>
                  )}
                </button>
              );
            })}
          </div>

        </div>
      )}

    </div>
  );
}
