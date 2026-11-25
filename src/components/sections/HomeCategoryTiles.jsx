import React from 'react';
import { Link } from 'react-router-dom';

export default function HomeCategoryTiles({ onOpenUploadModal }) {
  const TILES = [
    {
      title: 'Blood Tests',
      offer: 'Up to 70% OFF',
      bgClass: 'bg-[#d1f9fb] border-[#b2eff2]',
      image: '/images/category-tiles/blood_tests.svg',
      href: '/services?category=lab-tests'
    },
    {
      title: 'X-Rays & Scans',
      offer: 'MRI · CT · Ultrasound',
      bgClass: 'bg-[#e6ecff] border-[#d4deff]',
      image: '/images/category-tiles/scans_mri.svg',
      href: '/services?category=imaging'
    },
    {
      title: 'Health Packages',
      offer: 'Full Body Checkups',
      bgClass: 'bg-[#fff0e6] border-[#ffd8bf]',
      image: '/images/category-tiles/health_packages.svg',
      href: '/services?category=health-packages'
    },
    {
      title: 'Home Nursing',
      offer: 'Certified Care',
      bgClass: 'bg-[#dcfce7] border-[#bbf7d0]',
      image: '/images/category-tiles/home_nursing.svg',
      href: '/home-nursing-care'
    },
    {
      title: 'Genomics DNA',
      offer: 'Hereditary Risk',
      bgClass: 'bg-[#ffe6f2] border-[#ffcce5]',
      image: '/images/category-tiles/genomics_dna.svg',
      href: '/services?category=genetics'
    },
    {
      title: 'Upload Prescription',
      offer: 'Fast Booking',
      bgClass: 'bg-[#e1f0ff] border-[#c2e0ff]',
      image: '/images/category-tiles/upload_prescription.svg',
      action: onOpenUploadModal,
      isRx: true
    }
  ];

  return (
    <section aria-label="Quick Category Services" className="bg-white py-6 sm:py-8 font-sans border-b border-slate-100">
      <div className="max-w-7xl mx-auto px-4 sm:px-6 lg:px-8">
        
        {/* 6-Column Pastel Category Grid (Healthians Exact Style with 3D Medical Icons) */}
        <div className="grid grid-cols-2 sm:grid-cols-3 lg:grid-cols-6 gap-3 sm:gap-4">
          {TILES.map((tile, idx) => {
            const content = (
              <div className="flex flex-col items-center group cursor-pointer text-center">
                
                {/* Pastel Rounded Tile with 3D Icon & Floating Offer Pill */}
                <div className={`w-full h-28 sm:h-32 rounded-2xl border ${tile.bgClass} p-2 flex flex-col items-center justify-center relative transition-all duration-300 group-hover:-translate-y-1 group-hover:shadow-md`}>
                  
                  {/* Pulsing Dot on Prescription Upload Tile */}
                  {tile.isRx && (
                    <span className="absolute top-2.5 right-2.5 flex h-2.5 w-2.5">
                      <span className="animate-ping absolute inline-flex h-full w-full rounded-full bg-emerald-400 opacity-75"></span>
                      <span className="relative inline-flex rounded-full h-2.5 w-2.5 bg-emerald-500 border border-white"></span>
                    </span>
                  )}

                  {/* Centered 3D Medical Illustration Icon */}
                  <div className="w-24 h-16 sm:w-28 sm:h-20 flex items-center justify-center transition-transform duration-300 group-hover:scale-110">
                    <img
                      src={tile.image}
                      alt={tile.title}
                      className="max-w-full max-h-full object-contain filter drop-shadow-xs pointer-events-none select-none"
                      loading="eager"
                    />
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
