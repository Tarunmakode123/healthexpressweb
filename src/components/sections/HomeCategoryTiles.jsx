import React from 'react';
import { Link } from 'react-router-dom';
import { FlaskConical, Scan, ShieldCheck, Home, Dna, FileUp } from 'lucide-react';

export default function HomeCategoryTiles({ onOpenUploadModal }) {
  const TILES = [
    {
      title: 'Blood Tests',
      offer: 'Up to 70% OFF',
      bgClass: 'bg-[#d1f9fb] border-[#b2eff2]',
      iconBg: 'bg-[#b6f3f6] text-[#00838f]',
      icon: FlaskConical,
      href: '/services?category=lab-tests'
    },
    {
      title: 'X-Rays & Scans',
      offer: 'MRI · CT · Ultrasound',
      bgClass: 'bg-[#e6ecff] border-[#d4deff]',
      iconBg: 'bg-[#d5dffe] text-[#304ffe]',
      icon: Scan,
      href: '/services?category=imaging'
    },
    {
      title: 'Health Packages',
      offer: 'Full Body Checkups',
      bgClass: 'bg-[#fff0e6] border-[#ffd8bf]',
      iconBg: 'bg-[#ffe4d1] text-[#d4380d]',
      icon: ShieldCheck,
      href: '/services?category=health-packages'
    },
    {
      title: 'Home Nursing',
      offer: 'Certified Care',
      bgClass: 'bg-[#dcfce7] border-[#bbf7d0]',
      iconBg: 'bg-[#bbf7d0] text-[#15803d]',
      icon: Home,
      href: '/home-nursing-care'
    },
    {
      title: 'Genomics DNA',
      offer: 'Hereditary Risk',
      bgClass: 'bg-[#ffe6f2] border-[#ffcce5]',
      iconBg: 'bg-[#ffd6eb] text-[#c2185b]',
      icon: Dna,
      href: '/services?category=genetics'
    },
    {
      title: 'Upload Prescription',
      offer: 'Fast Booking',
      bgClass: 'bg-[#e1f0ff] border-[#c2e0ff]',
      iconBg: 'bg-[#cbe5ff] text-[#0284c7]',
      icon: FileUp,
      action: onOpenUploadModal,
      isRx: true
    }
  ];

  return (
    <section aria-label="Quick Category Services" className="bg-white py-6 sm:py-8 font-sans border-b border-slate-100">
      <div className="max-w-7xl mx-auto px-4 sm:px-6 lg:px-8">
        
        {/* 6-Column Pastel Category Grid (Healthians Exact Style) */}
        <div className="grid grid-cols-2 sm:grid-cols-3 lg:grid-cols-6 gap-3 sm:gap-4">
          {TILES.map((tile, idx) => {
            const Icon = tile.icon;
            const content = (
              <div className="flex flex-col items-center group cursor-pointer text-center">
                
                {/* Pastel Rounded Tile with Icon & Floating Offer Pill */}
                <div className={`w-full h-28 sm:h-32 rounded-2xl border ${tile.bgClass} p-3 flex flex-col items-center justify-center relative transition-all duration-300 group-hover:-translate-y-1 group-hover:shadow-md`}>
                  
                  {/* Pulsing Dot on Prescription Upload Tile */}
                  {tile.isRx && (
                    <span className="absolute top-2.5 right-2.5 flex h-2.5 w-2.5">
                      <span className="animate-ping absolute inline-flex h-full w-full rounded-full bg-emerald-400 opacity-75"></span>
                      <span className="relative inline-flex rounded-full h-2.5 w-2.5 bg-emerald-500 border border-white"></span>
                    </span>
                  )}

                  {/* Centered Colorful Medical Icon */}
                  <div className={`w-12 h-12 rounded-xl flex items-center justify-center transition-transform duration-300 group-hover:scale-110 shadow-2xs ${tile.iconBg}`}>
                    <Icon className="w-6 h-6" />
                  </div>

                  {/* Overlapping Floating Offer Pill at the bottom edge */}
                  <span className="absolute -bottom-2.5 px-2.5 py-0.5 rounded-full bg-white text-slate-800 text-[10px] font-bold shadow-xs border border-slate-200/80 whitespace-nowrap group-hover:border-purple-300 transition-colors">
                    {tile.offer}
                  </span>
                </div>

                {/* Category Label Below Tile */}
                <h3 className="text-xs sm:text-[13px] font-bold text-slate-800 mt-4 group-hover:text-purple-700 transition-colors leading-tight">
                  {tile.title}
                </h3>
              </div>
            );

            if (tile.action) {
              return (
                <button
                  key={idx}
                  onClick={tile.action}
                  className="w-full text-left focus:outline-none"
                >
                  {content}
                </button>
              );
            }

            return (
              <Link key={idx} to={tile.href} className="w-full block">
                {content}
              </Link>
            );
          })}
        </div>

      </div>
    </section>
  );
}
