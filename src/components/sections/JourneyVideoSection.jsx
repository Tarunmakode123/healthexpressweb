import React, { useRef, useState, useEffect } from 'react';
import { Upload, ArrowRight, MessageSquare, Volume2, VolumeX, Play, Pause } from 'lucide-react';
import { openWhatsApp, DEFAULT_MESSAGES } from '../../utils/whatsapp';

export default function JourneyVideoSection({ onOpenUploadModal }) {
  const videoRef = useRef(null);
  const [isPlaying, setIsPlaying] = useState(true);
  const [isMuted, setIsMuted] = useState(true);

  useEffect(() => {
    const video = videoRef.current;
    if (!video) return;

    // Force autoplay attempt
    const attemptPlay = () => {
      video.muted = true;
      video.play().then(() => {
        setIsPlaying(true);
      }).catch((err) => {
        console.warn('Autoplay prevented by browser:', err);
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

  return (
    <section className="py-16 md:py-24 bg-gradient-to-b from-slate-900 via-slate-900/95 to-slate-950 text-white relative overflow-hidden">
      {/* Background Glow Overlay */}
      <div className="absolute inset-0 pointer-events-none overflow-hidden">
        <div className="absolute top-1/4 left-1/2 -translate-x-1/2 -translate-y-1/2 w-[600px] h-[600px] bg-teal-500/10 rounded-full blur-3xl" />
        <div className="absolute bottom-1/4 right-1/4 w-[400px] h-[400px] bg-indigo-500/10 rounded-full blur-3xl" />
      </div>

      <div className="max-w-7xl mx-auto px-4 sm:px-6 lg:px-8 relative z-10">
        {/* Header Content */}
        <div className="text-center max-w-3xl mx-auto mb-10 md:mb-14">
          <div className="inline-flex items-center gap-2 px-4 py-1.5 rounded-full bg-teal-500/15 border border-teal-500/30 text-teal-300 text-xs sm:text-sm font-semibold tracking-wider uppercase mb-4 shadow-sm backdrop-blur-md">
            <span className="w-2 h-2 rounded-full bg-teal-400 animate-pulse" />
            YOUR HEALTHCARE JOURNEY
          </div>
          <h2 className="text-3xl sm:text-4xl md:text-5xl font-extrabold text-white tracking-tight leading-tight mb-4">
            From Prescription to Care, <span className="bg-gradient-to-r from-teal-300 via-cyan-300 to-indigo-300 bg-clip-text text-transparent">Without the Hassle.</span>
          </h2>
          <p className="text-lg sm:text-xl text-slate-300 font-medium leading-relaxed">
            Upload your prescription and let Health Express take care of the journey from there.
          </p>
        </div>

        {/* 16:9 Cinematic Video Container */}
        <div className="max-w-5xl mx-auto relative group">
          <div className="relative aspect-video w-full rounded-2xl md:rounded-[28px] overflow-hidden border border-slate-700/60 shadow-2xl bg-slate-950">
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
              Your browser does not support the video tag.
            </video>

            {/* Video Controls Overlay */}
            <div className="absolute inset-0 bg-gradient-to-t from-slate-950/70 via-transparent to-transparent opacity-0 group-hover:opacity-100 transition-opacity duration-300 flex items-end justify-between p-4 sm:p-6 pointer-events-none">
              <div className="flex items-center gap-3 pointer-events-auto">
                <button
                  onClick={togglePlay}
                  className="w-10 h-10 rounded-full bg-slate-900/80 hover:bg-teal-600 text-white flex items-center justify-center backdrop-blur-md border border-slate-700 transition-all shadow-lg"
                  aria-label={isPlaying ? 'Pause Video' : 'Play Video'}
                >
                  {isPlaying ? <Pause className="w-5 h-5" /> : <Play className="w-5 h-5 ml-0.5" />}
                </button>
                <button
                  onClick={toggleMute}
                  className="w-10 h-10 rounded-full bg-slate-900/80 hover:bg-teal-600 text-white flex items-center justify-center backdrop-blur-md border border-slate-700 transition-all shadow-lg"
                  aria-label={isMuted ? 'Unmute Audio' : 'Mute Audio'}
                >
                  {isMuted ? <VolumeX className="w-5 h-5" /> : <Volume2 className="w-5 h-5" />}
                </button>
              </div>
            </div>
          </div>

          {/* Decorative Corner Glow Accent */}
          <div className="absolute -inset-1 bg-gradient-to-r from-teal-500/20 via-indigo-500/20 to-teal-500/20 rounded-[30px] blur-xl -z-10 opacity-70 group-hover:opacity-100 transition-opacity" />
        </div>

        {/* Action Buttons */}
        <div className="mt-10 md:mt-12 flex flex-col sm:flex-row items-center justify-center gap-4">
          <button
            onClick={() => onOpenUploadModal && onOpenUploadModal()}
            className="w-full sm:w-auto px-8 py-4 rounded-xl bg-gradient-to-r from-teal-500 to-emerald-500 hover:from-teal-400 hover:to-emerald-400 text-slate-950 font-bold text-base shadow-xl shadow-teal-500/20 hover:shadow-teal-500/30 transition-all transform hover:-translate-y-0.5 flex items-center justify-center gap-2 group"
          >
            <Upload className="w-5 h-5" />
            <span>Upload Prescription</span>
            <ArrowRight className="w-5 h-5 group-hover:translate-x-1 transition-transform" />
          </button>

          <button
            onClick={() => openWhatsApp(DEFAULT_MESSAGES?.CARE_MANAGER || 'Hi Health Express, I would like to talk to a Personal Care Manager.')}
            className="w-full sm:w-auto px-8 py-4 rounded-xl bg-slate-800/90 hover:bg-slate-800 border border-slate-700 hover:border-slate-600 text-white font-semibold text-base transition-all flex items-center justify-center gap-2 shadow-lg"
          >
            <MessageSquare className="w-5 h-5 text-teal-400" />
            <span>Talk to Health Manager</span>
          </button>
        </div>
      </div>
    </section>
  );
}
