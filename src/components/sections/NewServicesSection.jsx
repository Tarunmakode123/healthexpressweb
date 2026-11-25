import React, { useRef } from 'react';
import { Link } from 'react-router-dom';
import { ArrowRight, ChevronLeft, ChevronRight, ShieldCheck } from 'lucide-react';

const CATEGORY_ROWS = [
  {
    categoryName: "Lab Test",
    badgeLabel: "Pathology & Diagnostics",
    subtitle: "Accurate blood screening and comprehensive health packages delivered at home.",
    reverse: false,
    items: [
      { name: "Complete Blood Count (CBC)", desc: "Essential screening test detecting anemia, infections, and blood disorders.", brand: "Health Express Diagnostics", image: "/images/service-icons/service_cbc.svg", iconStyle: "bg-rose-50 border-rose-200" },
      { name: "Thyroid Profile (T3 T4 TSH)", desc: "Hormone level evaluation to monitor thyroid function and metabolism.", brand: "Health Express Labs", image: "/images/service-icons/service_thyroid.svg", iconStyle: "bg-purple-50 border-purple-200" },
      { name: "HbA1c Diabetes Test", desc: "Reliable 3-month average blood sugar monitoring report for diabetes control.", brand: "Health Express Care", image: "/images/service-icons/service_diabetes.svg", iconStyle: "bg-amber-50 border-amber-200" },
      { name: "Lipid Profile Test", desc: "Advanced heart health and cholesterol screening for HDL, LDL, and triglycerides.", brand: "Health Express Wellness", image: "/images/service-icons/service_heart.svg", iconStyle: "bg-red-50 border-red-200" }
    ]
  },
  {
    categoryName: "Home Care",
    badgeLabel: "At-Home Medical Care",
    subtitle: "Professional nursing, elder care, and medical assistance right at the comfort of your home.",
    reverse: true,
    items: [
      { name: "Trained Attendant & Elder Care", desc: "Compassionate caregivers assisting seniors with daily living and medication.", brand: "Health Express Home Care", image: "/images/service-icons/service_elder_care.svg", iconStyle: "bg-emerald-50 border-emerald-200" },
      { name: "Professional Nursing Care", desc: "Certified nurses providing wound dressing, injections, and post-surgical care.", brand: "Health Express Nursing", image: "/images/service-icons/service_nursing_care.svg", iconStyle: "bg-purple-50 border-purple-200" },
      { name: "Physiotherapy at Home", desc: "Expert therapists for joint pain relief, stroke rehab, and mobility recovery.", brand: "Health Express Rehab", image: "/images/service-icons/service_physio.svg", iconStyle: "bg-blue-50 border-blue-200" },
      { name: "Critical & ICU Care at Home", desc: "24/7 dedicated setup with oxygen support, monitors, and medical staff.", brand: "Health Express Critical", image: "/images/service-icons/service_icu.svg", iconStyle: "bg-orange-50 border-orange-200" }
    ]
  },
  {
    categoryName: "Radiology",
    badgeLabel: "Diagnostic Imaging",
    subtitle: "High-precision imaging scans powered by cutting-edge technology and expert radiologists.",
    reverse: false,
    items: [
      { name: "MRI Brain Scan", desc: "High-resolution neurological imaging for precise diagnosis of brain structures.", brand: "Health Express Imaging", image: "/images/service-icons/service_mri_brain.svg", iconStyle: "bg-indigo-50 border-indigo-200" },
      { name: "CT Chest Scan", desc: "Detailed thoracic imaging for clear visualization of lung and pulmonary health.", brand: "Health Express Scans", image: "/images/service-icons/service_ct_chest.svg", iconStyle: "bg-cyan-50 border-cyan-200" },
      { name: "Ultrasound Whole Abdomen", desc: "Non-invasive internal organ screening for liver, kidneys, and pancreas.", brand: "Health Express Diagnostics", image: "/images/service-icons/service_ultrasound.svg", iconStyle: "bg-teal-50 border-teal-200" },
      { name: "Digital X-Ray", desc: "Instant low-radiation skeletal and chest imaging for bone and joint injuries.", brand: "Health Express Radiology", image: "/images/service-icons/service_xray.svg", iconStyle: "bg-slate-100 border-slate-300" }
    ]
  },
  {
    categoryName: "Surgery",
    badgeLabel: "Surgical Care",
    subtitle: "Advanced minimally invasive procedures performed by expert surgeons with fast recovery.",
    reverse: true,
    items: [
      { name: "Laser Piles Surgery", desc: "Advanced pain-free modern procedure ensuring exceptionally fast recovery.", brand: "Health Express Surgical", image: "/images/service-icons/service_laser_piles.svg", iconStyle: "bg-amber-50 border-amber-200" },
      { name: "Laparoscopic Hernia Repair", desc: "State-of-the-art mesh surgery performed by leading surgical specialists.", brand: "Health Express Care", image: "/images/service-icons/service_hernia.svg", iconStyle: "bg-blue-50 border-blue-200" },
      { name: "Gallbladder Removal", desc: "Safe and effective keyhole laparoscopic procedure ensuring minimal scarring.", brand: "Health Express Surgery", image: "/images/service-icons/service_gallbladder.svg", iconStyle: "bg-emerald-50 border-emerald-200" },
      { name: "Knee Replacement", desc: "Advanced orthopedic solutions and rehabilitation to restore full mobility.", brand: "Health Express Orthopedics", image: "/images/service-icons/service_knee.svg", iconStyle: "bg-purple-50 border-purple-200" }
    ]
  }
];

export default function NewServicesSection() {
  const rowRefs = [useRef(null), useRef(null), useRef(null), useRef(null)];

  const scrollManual = (index, direction) => {
    if (rowRefs[index].current) {
      const scrollAmount = direction === 'left' ? -340 : 340;
      rowRefs[index].current.scrollBy({ left: scrollAmount, behavior: 'smooth' });
    }
  };

  return (
    <section className="py-12 sm:py-16 lg:py-20 bg-gradient-to-b from-[#f8f5fc] via-[#faf7fd] to-[#f5effb] relative overflow-hidden border-y border-purple-100/70">
     
      <style>{`
        @keyframes scroll-left {
          0% { transform: translateX(0); }
          100% { transform: translateX(-50%); }
        }
        @keyframes scroll-right {
          0% { transform: translateX(-50%); }
          100% { transform: translateX(0); }
        }
        .animate-marquee-left {
          display: flex;
          width: max-content;
          animation: scroll-left 35s linear infinite;
        }
        .animate-marquee-right {
          display: flex;
          width: max-content;
          animation: scroll-right 35s linear infinite;
        }
        .animate-marquee-left:hover, .animate-marquee-right:hover {
          animation-play-state: paused;
        }
        .no-scrollbar::-webkit-scrollbar {
          display: none;
        }
        .no-scrollbar {
          -ms-overflow-style: none;
          scrollbar-width: none;
        }
        /* Custom little purple box shadow */
        .purple-box-shadow {
          box-shadow: 0 4px 20px -4px rgba(97, 44, 156, 0.10);
        }
        .purple-box-shadow-hover:hover {
          box-shadow: 0 10px 25px -2px rgba(97, 44, 156, 0.20);
        }
        /* Enhanced Category Info Box Highlight */
        .category-info-box {
          background: linear-gradient(135deg, rgba(255, 255, 255, 0.95) 0%, rgba(246, 238, 255, 0.7) 100%);
          border: 1px solid rgba(97, 44, 156, 0.20);
          border-left: 4px solid #612c9c;
          border-radius: 1rem;
          box-shadow: 0 8px 25px -4px rgba(97, 44, 156, 0.12);
          transition: all 0.3s ease;
        }
        .category-info-box:hover {
          box-shadow: 0 14px 30px -4px rgba(97, 44, 156, 0.22);
          border-color: rgba(97, 44, 156, 0.35);
        }
      `}</style>

      <div className="max-w-7xl mx-auto px-4 sm:px-6 lg:px-8 space-y-10 lg:space-y-14">
        
        {/* Section Header */}
        <div className="text-center max-w-2xl mx-auto space-y-3">
          <span
            className="inline-flex items-center gap-1.5 px-3.5 py-1 rounded-full font-extrabold text-xs uppercase tracking-wider border shadow-2xs"
            style={{ backgroundColor: 'rgba(97, 44, 156, 0.08)', borderColor: 'rgba(97, 44, 156, 0.25)', color: '#612c9c' }}
          >
            Explore Offerings
          </span>
          <h2 className="text-2xl sm:text-3xl lg:text-4xl font-black text-slate-900 tracking-tight">
            Specialized Medical Services, <br />
            <span style={{ color: '#612c9c' }}>Designed For Care.</span>
          </h2>
          <p className="text-xs sm:text-sm text-slate-600 font-medium">
            Browse through our extensive catalog of lab diagnostics, home care, radiology scans, and surgical procedures.
          </p>
        </div>

        {/* Rows Setup */}
        <div className="space-y-8 lg:space-y-10">
          {CATEGORY_ROWS.map((row, rowIndex) => (
            <div key={rowIndex} className="grid grid-cols-1 lg:grid-cols-12 gap-6 items-center border-b border-slate-100 pb-8 last:border-b-0">
              
              {/* LEFT SIDE: Highly Highlighted Category Info Box */}
              <div className="lg:col-span-3 space-y-3.5 text-left category-info-box rounded-2xl p-5 sm:p-6">
                <span
                  className="text-[10px] font-extrabold uppercase tracking-widest px-3 py-1 rounded-full border inline-block bg-white shadow-2xs"
                  style={{ borderColor: 'rgba(97, 44, 156, 0.3)', color: '#612c9c' }}
                >
                  {row.badgeLabel}
                </span>
                <h3 className="text-xl sm:text-2xl font-black text-slate-900 capitalize">
                  {row.categoryName}
                </h3>
                <p className="text-xs text-slate-600 font-medium leading-relaxed">
                  {row.subtitle}
                </p>
                <div className="pt-2 flex items-center justify-between">
                  <Link
                    to="/services"
                    className="inline-flex items-center gap-1.5 text-xs font-bold transition-colors hover:underline"
                    style={{ color: '#612c9c' }}
                  >
                    <span>View All {row.categoryName}</span>
                    <ArrowRight className="w-3.5 h-3.5" />
                  </Link>

                  {/* Manual Navigation Arrows */}
                  <div className="flex items-center gap-1.5">
                    <button
                      onClick={() => scrollManual(rowIndex, 'left')}
                      className="w-8 h-8 rounded-xl border border-purple-200/80 bg-white flex items-center justify-center text-slate-700 hover:bg-purple-100 hover:text-purple-950 transition-all cursor-pointer shadow-2xs active:scale-95"
                      title="Scroll Left"
                    >
                      <ChevronLeft className="w-4 h-4" />
                    </button>
                    <button
                      onClick={() => scrollManual(rowIndex, 'right')}
                      className="w-8 h-8 rounded-xl border border-purple-200/80 bg-white flex items-center justify-center text-slate-700 hover:bg-purple-100 hover:text-purple-950 transition-all cursor-pointer shadow-2xs active:scale-95"
                      title="Scroll Right"
                    >
                      <ChevronRight className="w-4 h-4" />
                    </button>
                  </div>
                </div>
              </div>

              {/* RIGHT SIDE: Automatic Marquee + Manual Scroll Container */}
              <div className="lg:col-span-9 overflow-hidden relative py-2">
                
                {/* Minimal Edge Gradient Fades matching section background */}
                <div className="absolute left-0 inset-y-0 w-4 sm:w-8 bg-gradient-to-r from-[#faf7fd] to-transparent z-10 pointer-events-none" />
                <div className="absolute right-0 inset-y-0 w-4 sm:w-8 bg-gradient-to-l from-[#faf7fd] to-transparent z-10 pointer-events-none" />

                <div
                  ref={rowRefs[rowIndex]}
                  className="flex gap-3 overflow-x-auto no-scrollbar scroll-smooth w-full"
                  style={{ scrollbarWidth: 'none', msOverflowStyle: 'none' }}
                >
                  <div className={row.reverse ? "animate-marquee-right" : "animate-marquee-left"}>
                    {row.items.concat(row.items).map((item, idx) => (
                      <div
                        key={idx}
                        className="w-[310px] sm:w-[330px] bg-white hover:bg-purple-50/15 border border-purple-100/80 hover:border-purple-300 rounded-2xl p-5 mx-3 flex flex-col justify-between shrink-0 transition-all duration-300 group shadow-sm hover:shadow-xl hover:-translate-y-1"
                      >
                        <div className="space-y-3">
                          
                          {/* Brand & Badge Top Header */}
                          <div className="flex items-center justify-between pb-1">
                            <span className="text-[10px] font-bold text-slate-600 bg-slate-50 border border-slate-200/60 px-2.5 py-0.5 rounded-full flex items-center gap-1">
                              <ShieldCheck className="w-3 h-3" style={{ color: '#612c9c' }} />
                              {item.brand}
                            </span>
                            <span
                              className="text-[9px] font-extrabold px-2.5 py-0.5 rounded-full border shadow-2xs"
                              style={{ backgroundColor: 'rgba(97, 44, 156, 0.05)', borderColor: 'rgba(97, 44, 156, 0.2)', color: '#612c9c' }}
                            >
                              Verified
                            </span>
                          </div>

                          {/* Sub-Service Name with Beautiful Healthians-Style Medical Icon Badge */}
                          <div className="flex items-start gap-3 pt-1">
                            <div className={`w-11 h-11 rounded-xl border flex items-center justify-center shrink-0 shadow-2xs group-hover:scale-110 transition-transform p-1.5 ${item.iconStyle || 'bg-purple-50 border-purple-200'}`}>
                              <img src={item.image} alt={item.name} className="w-full h-full object-contain" />
                            </div>
                            <div className="space-y-1 min-w-0">
                              <h4 className="text-sm font-bold text-slate-900 leading-snug line-clamp-2 group-hover:text-purple-800 transition-colors">
                                {item.name}
                              </h4>
                              <p className="text-xs text-slate-500 font-medium leading-relaxed line-clamp-2">
                                {item.desc}
                              </p>
                            </div>
                          </div>
                        </div>

                        {/* Bottom Action */}
                        <div className="pt-3 mt-4 border-t border-slate-100 flex items-center justify-between">
                          <Link
                            to="/services"
                            className="px-4 py-2 rounded-xl text-white font-bold text-xs transition-all flex items-center gap-1.5 active:scale-95 shadow-xs hover:shadow-md cursor-pointer"
                            style={{ backgroundColor: '#612c9c' }}
                          >
                            <span>Book Now</span>
                            <ArrowRight className="w-3.5 h-3.5 text-white/80" />
                          </Link>
                          <span className="text-[11px] font-extrabold text-slate-500">
                            Available 24/7
                          </span>
                        </div>
                      </div>
                    ))}
                  </div>
                </div>

              </div>

            </div>
          ))}
        </div>

      </div>
    </section>
  );
}