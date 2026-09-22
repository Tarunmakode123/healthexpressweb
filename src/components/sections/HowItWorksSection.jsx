import React, { useState, useRef, useEffect } from 'react';
import { Upload, Search, CalendarCheck, Activity, CheckCircle2, ArrowRight, ShieldCheck, PhoneCall, UserCheck, HeartPulse, Play, Pause, Volume2, VolumeX } from 'lucide-react';
import { openWhatsApp, DEFAULT_MESSAGES } from '../../utils/whatsapp';

export default function HowItWorksSection({ onOpenUploadModal }) {
  const [activeStep, setActiveStep] = useState(0);
  const videoRef = useRef(null);
  const [isPlaying, setIsPlaying] = useState(true);
  const [isMuted, setIsMuted] = useState(true);

  useEffect(() => {
    const video = videoRef.current;
    if (!video) return;

    const attemptPlay = () => {
      video.muted = true;
      video.play().then(() => {
        setIsPlaying(true);
      }).catch((err) => {
        console.warn('Autoplay prevented:', err);
        setIsPlaying(false);
      });
    };

    attemptPlay();
  }, []);

  const togglePlay = () => {
    const video = videoRef.current;
    if (!video) return;
    if (isPlaying) {
      video.pause();
      setIsPlaying(false);
    } else {
      video.play().then(() => setIsPlaying(true)).catch(() => {});
    }
  };

  const toggleMute = () => {
    const video = videoRef.current;
    if (!video) return;
    video.muted = !isMuted;
    setIsMuted(!isMuted);
  };

  const steps = [
    {
      num: '01',
      title: 'Tell us what you need',
      shortDesc: 'Upload prescription or choose a service',
      detailTitle: 'Simple Request Submission',
      detailDesc: 'Upload your prescription file, medical order, or select a diagnostic test or home care service from our directory in seconds.',
      badge: 'Step 01 — Request',
      icon: Upload,
      visualType: 'upload',
      ctaText: 'Upload Prescription',
      ctaAction: 'upload'
    },
    {
      num: '02',
      title: 'Our care team reviews',
      shortDesc: 'Personal care manager review',
      detailTitle: 'Human Care Coordination',
      detailDesc: 'Our Health Manager reviews your requirements, checks verified lab or nursing partner availability, and prepares options tailored to your family.',
      badge: 'Step 02 — Verification',
      icon: UserCheck,
      visualType: 'review',
      ctaText: 'Talk to Health Manager',
      ctaAction: 'whatsapp'
    },
    {
      num: '03',
      title: 'We coordinate your service',
      shortDesc: 'Slot booking & partner dispatch',
      detailTitle: 'Seamless Partner Dispatch',
      detailDesc: 'We confirm home sample collection slots, qualified nurse visits, or diagnostic appointments without you having to call multiple providers.',
      badge: 'Step 03 — Coordination',
      icon: CalendarCheck,
      visualType: 'coordinate',
      ctaText: 'Explore Available Services',
      ctaAction: 'services'
    },
    {
      num: '04',
      title: 'Care comes to you',
      shortDesc: 'Home collection & digital reports',
      detailTitle: 'Care Delivered to Your Door',
      detailDesc: 'A certified phlebotomist or nurse visits your home, and reports or care summaries are delivered digitally to your phone.',
      badge: 'Step 04 — Delivery',
      icon: CheckCircle2,
      visualType: 'delivery',
      ctaText: 'Get Started Today',
      ctaAction: 'upload'
    }
  ];

  const currentStep = steps[activeStep];

  const handleCTA = (action) => {
    if (action === 'upload' && onOpenUploadModal) {
      onOpenUploadModal();
    } else if (action === 'whatsapp') {
      openWhatsApp(DEFAULT_MESSAGES.prescription);
    } else {
      window.location.href = '/services';
    }
  };

  return (
    <section className="py-20 md:py-28 bg-slate-950 text-white relative overflow-hidden">
      
      {/* Ambient Dark Glows */}
      <div className="absolute top-0 right-0 w-96 h-96 bg-purple-900/30 rounded-full blur-3xl pointer-events-none" />
      <div className="absolute bottom-0 left-0 w-96 h-96 bg-indigo-900/20 rounded-full blur-3xl pointer-events-none" />

      <div className="max-w-7xl mx-auto px-4 sm:px-6 lg:px-8 space-y-12 relative z-10">
        
        {/* Editorial Section Header */}
        <div className="text-center max-w-3xl mx-auto space-y-3">
          <div className="inline-flex items-center gap-2 px-3.5 py-1.5 rounded-full bg-purple-900/80 border border-purple-700/80 text-purple-200 text-xs font-extrabold uppercase tracking-widest shadow-xs">
            PATIENT JOURNEY
          </div>
          <h2 className="text-3xl sm:text-4xl lg:text-5xl font-extrabold text-white tracking-tight leading-[1.15]">
            Healthcare, <span className="text-purple-400">without the runaround.</span>
          </h2>
          <p className="text-base sm:text-lg text-slate-300 font-medium max-w-2xl mx-auto leading-relaxed">
            Upload your prescription and let Health Express take care of your family's healthcare journey.
          </p>
        </div>

        {/* 16:9 CINEMATIC STORY VIDEO PLAYER */}
        <div className="max-w-4xl mx-auto relative group">
          <div className="relative aspect-video w-full rounded-2xl md:rounded-3xl overflow-hidden border border-purple-900/60 shadow-2xl bg-slate-900">
            <video
              ref={videoRef}
              autoPlay
              muted
              playsInline
              loop
              preload="auto"
              onPlay={() => setIsPlaying(true)}
              onPause={() => setIsPlaying(false)}
              className="w-full h-full object-cover"
            >
              <source src="/videos/healthexpress-journey-story.mp4" type="video/mp4" />
              <source src="/videos/healthexpress-2nd%20video.mp4" type="video/mp4" />
              Your browser does not support video playback.
            </video>

            {/* Video Controls Overlay */}
            <div className="absolute inset-0 bg-gradient-to-t from-slate-950/80 via-transparent to-transparent opacity-0 group-hover:opacity-100 transition-opacity duration-300 flex items-end justify-between p-4 sm:p-6 pointer-events-none">
              <div className="flex items-center gap-3 pointer-events-auto">
                <button
                  onClick={togglePlay}
                  className="w-10 h-10 rounded-full bg-slate-900/90 hover:bg-purple-600 text-white flex items-center justify-center backdrop-blur-md border border-slate-700 transition-all shadow-lg"
                  aria-label={isPlaying ? 'Pause Video' : 'Play Video'}
                >
                  {isPlaying ? <Pause className="w-5 h-5" /> : <Play className="w-5 h-5 ml-0.5" />}
                </button>
                <button
                  onClick={toggleMute}
                  className="w-10 h-10 rounded-full bg-slate-900/90 hover:bg-purple-600 text-white flex items-center justify-center backdrop-blur-md border border-slate-700 transition-all shadow-lg"
                  aria-label={isMuted ? 'Unmute Audio' : 'Mute Audio'}
                >
                  {isMuted ? <VolumeX className="w-5 h-5" /> : <Volume2 className="w-5 h-5" />}
                </button>
              </div>

              <div className="text-right pointer-events-auto">
                <span className="text-xs font-semibold text-purple-300 bg-purple-950/80 px-3 py-1 rounded-full border border-purple-800">
                  Health Express Journey
                </span>
              </div>
            </div>
          </div>

          {/* Ambient Video Glow */}
          <div className="absolute -inset-1 bg-gradient-to-r from-purple-600/20 via-indigo-600/20 to-purple-600/20 rounded-[28px] blur-xl -z-10 opacity-70 group-hover:opacity-100 transition-opacity" />
        </div>

        {/* STEP SELECTOR BAR (HORIZONTAL TIMELINE) */}
        <div className="grid grid-cols-2 md:grid-cols-4 gap-3 pt-4">
          {steps.map((s, idx) => {
            const isActive = activeStep === idx;
            const IconComp = s.icon;
            return (
              <button
                key={s.num}
                onClick={() => setActiveStep(idx)}
                className={`p-4 sm:p-5 rounded-2xl border text-left transition-all relative overflow-hidden group cursor-pointer ${
                  isActive
                    ? 'bg-purple-900/90 border-purple-500 shadow-lg shadow-purple-900/40 scale-[1.02]'
                    : 'bg-slate-900/80 border-slate-800 hover:border-slate-700 hover:bg-slate-900'
                }`}
              >
                <div className="flex items-center justify-between mb-2">
                  <span className={`text-xs font-mono font-black ${isActive ? 'text-purple-300' : 'text-slate-500'}`}>
                    {s.num}
                  </span>
                  <div className={`w-7 h-7 rounded-lg flex items-center justify-center transition-colors ${
                    isActive ? 'bg-purple-700 text-white' : 'bg-slate-800 text-slate-400 group-hover:text-white'
                  }`}>
                    <IconComp className="w-3.5 h-3.5" />
                  </div>
                </div>

                <h3 className={`text-xs sm:text-sm font-extrabold transition-colors ${isActive ? 'text-white' : 'text-slate-300 group-hover:text-white'}`}>
                  {s.title}
                </h3>
              </button>
            );
          })}
        </div>

        {/* FEATURED WORKSPACE: ACTIVE STEP DETAILS & PREVIEW */}
        <div className="bg-slate-900/90 border border-slate-800 rounded-3xl p-7 sm:p-10 shadow-2xl relative overflow-hidden">
          
          <div key={activeStep} className="grid grid-cols-1 lg:grid-cols-12 gap-8 items-center animate-in fade-in duration-300">
            
            {/* Left Content */}
            <div className="lg:col-span-7 space-y-5 text-left">
              <span className="inline-flex items-center gap-1.5 px-3 py-1 rounded-full bg-purple-950 text-purple-300 border border-purple-800 text-[11px] font-extrabold uppercase tracking-wider">
                {currentStep.badge}
              </span>

              <h3 className="text-2xl sm:text-3xl font-extrabold text-white leading-snug">
                {currentStep.detailTitle}
              </h3>

              <p className="text-sm sm:text-base text-slate-300 leading-relaxed max-w-xl font-medium">
                {currentStep.detailDesc}
              </p>

              <div className="pt-2">
                <button
                  onClick={() => handleCTA(currentStep.ctaAction)}
                  className="px-6 py-3.5 rounded-2xl bg-purple-600 hover:bg-purple-500 text-white font-extrabold text-sm flex items-center justify-center gap-2.5 shadow-lg shadow-purple-600/30 transition-all hover:scale-[1.02] active:scale-[0.98] touch-target"
                >
                  <span>{currentStep.ctaText}</span>
                  <ArrowRight className="w-4 h-4" />
                </button>
              </div>
            </div>

            {/* Right Visual Snippet */}
            <div className="lg:col-span-5">
              <div className="bg-slate-950 rounded-2xl p-6 border border-slate-800 space-y-4 shadow-inner relative overflow-hidden">
                <div className="flex items-center justify-between border-b border-slate-800 pb-3">
                  <span className="text-[10px] font-mono uppercase tracking-widest text-purple-400 font-extrabold">
                    STAGE PREVIEW • {currentStep.num} OF 04
                  </span>
                  <Activity className="w-4 h-4 text-purple-400" />
                </div>

                {currentStep.visualType === 'upload' && (
                  <div className="space-y-3 py-2">
                    <div className="p-3 bg-slate-900 rounded-xl border border-slate-800 flex items-center gap-3">
                      <Upload className="w-5 h-5 text-purple-400 shrink-0" />
                      <div className="text-xs">
                        <div className="font-bold text-white">Prescription / Order File</div>
                        <div className="text-[10px] text-slate-400">PDF, JPG, PNG up to 10MB</div>
                      </div>
                    </div>
                    <div className="p-2.5 bg-purple-950/60 border border-purple-800/80 rounded-xl text-[11px] text-purple-200 font-medium">
                      ✓ Instant upload to Health Express Care Manager
                    </div>
                  </div>
                )}

                {currentStep.visualType === 'review' && (
                  <div className="space-y-3 py-2">
                    <div className="p-3 bg-slate-900 rounded-xl border border-slate-800 flex items-center gap-3">
                      <UserCheck className="w-5 h-5 text-emerald-400 shrink-0" />
                      <div className="text-xs">
                        <div className="font-bold text-white">Dedicated Care Manager</div>
                        <div className="text-[10px] text-slate-400">Bengaluru Locality Specialist</div>
                      </div>
                    </div>
                    <div className="p-2.5 bg-emerald-950/60 border border-emerald-800/80 rounded-xl text-[11px] text-emerald-200 font-medium">
                      ✓ Partner laboratory & nurse slot verification
                    </div>
                  </div>
                )}

                {currentStep.visualType === 'coordinate' && (
                  <div className="space-y-3 py-2">
                    <div className="p-3 bg-slate-900 rounded-xl border border-slate-800 flex items-center gap-3">
                      <CalendarCheck className="w-5 h-5 text-purple-400 shrink-0" />
                      <div className="text-xs">
                        <div className="font-bold text-white">Confirmed Booking Slot</div>
                        <div className="text-[10px] text-slate-400">Home Sample / Nursing Visit</div>
                      </div>
                    </div>
                    <div className="p-2.5 bg-purple-950/60 border border-purple-800/80 rounded-xl text-[11px] text-purple-200 font-medium">
                      ✓ Zero back-and-forth phone calls
                    </div>
                  </div>
                )}

                {currentStep.visualType === 'delivery' && (
                  <div className="space-y-3 py-2">
                    <div className="p-3 bg-slate-900 rounded-xl border border-slate-800 flex items-center gap-3">
                      <CheckCircle2 className="w-5 h-5 text-emerald-400 shrink-0" />
                      <div className="text-xs">
                        <div className="font-bold text-white">Digital Report Delivery</div>
                        <div className="text-[10px] text-slate-400">Secure PDF & Health Record</div>
                      </div>
                    </div>
                    <div className="p-2.5 bg-emerald-950/60 border border-emerald-800/80 rounded-xl text-[11px] text-emerald-200 font-medium">
                      ✓ Digital records saved in your patient vault
                    </div>
                  </div>
                )}

              </div>
            </div>

          </div>

        </div>

      </div>
    </section>
  );
}
