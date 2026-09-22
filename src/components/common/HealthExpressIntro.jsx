import React, { useState, useEffect, useRef } from 'react';

export default function HealthExpressIntro() {
  const [state, setState] = useState('INITIALIZING'); // 'INITIALIZING', 'PLAYING', 'FADING_OUT', 'HIDDEN'
  const videoRef = useRef(null);
  const timeoutRef = useRef(null);

  useEffect(() => {
    // 1. Check prefers-reduced-motion
    const prefersReducedMotion = window.matchMedia('(prefers-reduced-motion: reduce)').matches;
    if (prefersReducedMotion) {
      setState('HIDDEN');
      return;
    }

    // 2. Check sessionStorage
    try {
      const alreadyShown = sessionStorage.getItem('healthExpressIntroShown');
      if (alreadyShown === 'true') {
        setState('HIDDEN');
        return;
      }
    } catch (e) {
      // Ignore storage errors
    }

    // 3. First visit in session -> Start Playing
    setState('PLAYING');

    // Failsafe timeout: Max 6.5s to ensure user never gets stuck
    timeoutRef.current = setTimeout(() => {
      dismissIntro();
    }, 6500);

    return () => {
      if (timeoutRef.current) clearTimeout(timeoutRef.current);
    };
  }, []);

  const dismissIntro = () => {
    try {
      sessionStorage.setItem('healthExpressIntroShown', 'true');
    } catch (e) {
      // Ignore
    }

    setState('FADING_OUT');
    setTimeout(() => {
      setState('HIDDEN');
    }, 600); // 600ms smooth fade transition
  };

  const handleVideoEnded = () => {
    if (timeoutRef.current) clearTimeout(timeoutRef.current);
    // Pause 250ms on final frame before fade out
    setTimeout(() => {
      dismissIntro();
    }, 250);
  };

  const handleVideoError = () => {
    console.warn('Intro video playback error. Gracefully dismissing intro.');
    if (timeoutRef.current) clearTimeout(timeoutRef.current);
    dismissIntro();
  };

  if (state === 'HIDDEN') return null;

  return (
    <div
      className={`fixed inset-0 z-[99999] bg-slate-950 flex items-center justify-center pointer-events-auto transition-opacity duration-600 ease-out ${
        state === 'FADING_OUT' ? 'opacity-0' : 'opacity-100'
      }`}
      aria-hidden="true"
    >
      {/* Background Subtle Ambient Lighting */}
      <div className="absolute inset-0 bg-radial from-purple-950/20 via-slate-950 to-slate-950 pointer-events-none" />

      {/* Video Container - Whole Logo Always Visible (object-contain) */}
      <div className="relative w-full h-full max-w-4xl max-h-[85vh] p-4 flex items-center justify-center">
        <video
          ref={videoRef}
          src="/videos/health-express-logo-intro.mp4"
          autoPlay
          muted
          playsInline
          controls={false}
          preload="metadata"
          onEnded={handleVideoEnded}
          onError={handleVideoError}
          className="w-full h-full object-contain pointer-events-none select-none"
        />
      </div>
    </div>
  );
}
