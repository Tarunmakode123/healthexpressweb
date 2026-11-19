import React, { useState, useEffect } from 'react';
import { useParams, Link } from 'react-router-dom';
import { 
  FlaskConical, Scan, Dna, Home, Stethoscope, ShieldCheck, 
  Clock, AlertCircle, MessageSquare, Phone, ArrowRight, ChevronRight, 
  HelpCircle, UserCheck, ShoppingBag, Upload, TestTube2, CheckCircle2,
  FileText
} from 'lucide-react';
import { ALL_SERVICES, CATEGORIES } from '../data/services';
import { HEALTH_MANAGER_PHONE } from '../config/constants';
import { openWhatsApp } from '../utils/whatsapp';
import { useCart } from '../context/CartContext';
import { fetchServiceBySlug } from '../services/catalogService';

// Helper to get category icon component
function getCategoryIcon(categoryId) {
  switch (categoryId) {
    case 'lab-tests': return FlaskConical;
    case 'imaging': return Scan;
    case 'genetics': return Dna;
    case 'home-care': return Home;
    case 'surgery': return Stethoscope;
    case 'health-packages': return ShieldCheck;
    default: return TestTube2;
  }
}

export default function ServiceDetailPage({ onOpenUploadModal }) {
  const { slug } = useParams();
  const { addToCart } = useCart();
  const [openFaqIndex, setOpenFaqIndex] = useState(null);

  // Sync initial state + async fetch
  const initialService = ALL_SERVICES.find(s => s.slug === slug) || ALL_SERVICES[0];
  const [service, setService] = useState(initialService);

  useEffect(() => {
    let isMounted = true;
    if (slug) {
      fetchServiceBySlug(slug).then(res => {
        if (isMounted && res) {
          setService(res);
        }
      }).catch(() => {});
    }
    return () => { isMounted = false; };
  }, [slug]);

  const category = CATEGORIES.find(c => c.id === service.category_id) || CATEGORIES[0];
  const IconComponent = getCategoryIcon(service.category_id);

  const isHomeNursing = service?.service_type === 'home_nursing' || service?.category_id === 'home-nursing' || service?.category_name === 'Home Nursing' || service?.subcategory === 'Home Nursing';

  const discountPrice = service?.discount_price || service?.discounted_price || service?.price || 0;
  const mrpPrice = service?.mrp || service?.price;

  // Real preparation guidelines from database or fallback
  const prepText = service?.patient_preparation || service?.preparation || "No specialized preparation is required for this service. Stay hydrated and carry any existing prescription if applicable.";

  // Dynamic fasting status derived from clinical instructions
  const isFastingRequired = service?.fasting_required || (/fasting/i.test(prepText) && !/not routinely required|not required|no fasting/i.test(prepText));
  const fastingLabel = isFastingRequired ? 'Fasting Required' : 'No Fasting';

  // Specimen / Sample type
  const sampleType = service?.specimen_type || service?.sample_type || 'Blood / Serum';

  const whatsappMsg = isHomeNursing 
    ? `Hi Health Express, I am interested in ${service.name}. Please share more details.`
    : `Namaste Health Express! I am interested in inquiring / booking "${service.name}". Please share test details, pricing, turnaround time, and home sample collection availability.`;

  // Related services (4 items max for 4-column desktop grid)
  const relatedServices = ALL_SERVICES
    .filter(s => s.category_id === service.category_id && s.slug !== service.slug)
    .slice(0, 4);

  // Track SERVICE_VIEW analytics event
  useEffect(() => {
    if (slug) {
      import('../utils/analytics.js').then(({ logAnalyticsEvent }) => {
        logAnalyticsEvent('SERVICE_VIEW', { metadata: { service_id: slug }, deduplicate: true });
      }).catch(() => {});
    }
  }, [slug]);

  const toggleFaq = (idx) => {
    setOpenFaqIndex(openFaqIndex === idx ? null : idx);
  };

  return (
    <div className="min-h-screen bg-slate-50/70 pb-20 pt-4 font-sans text-slate-800">
      <div className="max-w-7xl mx-auto px-4 sm:px-6 lg:px-8 space-y-6">
        
        {/* BREADCRUMB NAVIGATION */}
        <nav aria-label="Breadcrumb" className="flex items-center gap-1.5 text-xs font-semibold text-slate-500 py-1 overflow-x-auto whitespace-nowrap">
          <Link to="/" className="hover:text-purple-700 transition-colors">Home</Link>
          <ChevronRight className="w-3.5 h-3.5 text-slate-400 shrink-0" />
          <Link to="/services" className="hover:text-purple-700 transition-colors">Services</Link>
          <ChevronRight className="w-3.5 h-3.5 text-slate-400 shrink-0" />
          <Link to={`/services?category=${service.category_id}`} className="hover:text-purple-700 transition-colors">
            {category?.name || 'Category'}
          </Link>
          <ChevronRight className="w-3.5 h-3.5 text-slate-400 shrink-0" />
          <span className="text-purple-900 font-bold truncate max-w-[240px]">{service.name}</span>
        </nav>

        {/* UNIFIED 2-COLUMN LAYOUT: Left = Test Info, Right = Sticky Booking */}
        <div className="grid grid-cols-1 lg:grid-cols-12 gap-8 items-start text-left">
          
          {/* ========================================================= */}
          {/* LEFT COLUMN: All Medical & Test Information (lg:col-span-8) */}
          {/* ========================================================= */}
          <div className="lg:col-span-8 space-y-6">
            
            {/* 1. TEST HEADER CARD */}
            <div className="bg-white rounded-2xl border border-slate-200/80 shadow-xs p-6 sm:p-7 space-y-4">
              
              {/* Category & Fulfillment Badges */}
              <div className="flex flex-wrap items-center gap-2">
                <span className="inline-flex items-center gap-1.5 px-3 py-1 rounded-full bg-purple-100 text-purple-900 text-xs font-bold border border-purple-200">
                  <IconComponent className="w-3.5 h-3.5 text-purple-700" />
                  <span>{category?.name}</span>
                </span>

                <span className={`px-3 py-1 rounded-full text-xs font-bold border ${
                  service.centre_visit_required 
                    ? 'bg-amber-50 text-amber-900 border-amber-200' 
                    : 'bg-emerald-50 text-emerald-900 border-emerald-200'
                }`}>
                  {service.centre_visit_required ? '📍 Centre Visit Required' : '🏠 Home Sample Collection Available'}
                </span>
              </div>

              {/* Service Title */}
              <h1 className="text-2xl sm:text-3xl font-bold text-slate-900 tracking-tight leading-snug">
                {service.name}
              </h1>

              {/* 4-Pill Specs Grid */}
              <div className="grid grid-cols-2 sm:grid-cols-4 gap-2.5 pt-2 text-xs">
                <div className="p-3 rounded-xl bg-slate-50 border border-slate-200/80">
                  <div className="text-[10px] uppercase font-bold text-slate-400 flex items-center gap-1">
                    <Clock className="w-3.5 h-3.5 text-purple-700 shrink-0" />
                    <span>Report Time</span>
                  </div>
                  <div className="font-semibold text-slate-900 mt-1 truncate">
                    {service.turnaround_time || '24-48 Hours'}
                  </div>
                </div>

                <div className="p-3 rounded-xl bg-slate-50 border border-slate-200/80">
                  <div className="text-[10px] uppercase font-bold text-slate-400 flex items-center gap-1">
                    <TestTube2 className="w-3.5 h-3.5 text-purple-700 shrink-0" />
                    <span>Sample Type</span>
                  </div>
                  <div className="font-semibold text-slate-900 mt-1 truncate">
                    {sampleType}
                  </div>
                </div>

                <div className="p-3 rounded-xl bg-slate-50 border border-slate-200/80">
                  <div className="text-[10px] uppercase font-bold text-slate-400 flex items-center gap-1">
                    <AlertCircle className="w-3.5 h-3.5 text-purple-700 shrink-0" />
                    <span>Fasting</span>
                  </div>
                  <div className="font-semibold text-slate-900 mt-1 truncate">
                    {fastingLabel}
                  </div>
                </div>

                <div className="p-3 rounded-xl bg-slate-50 border border-slate-200/80">
                  <div className="text-[10px] uppercase font-bold text-slate-400 flex items-center gap-1">
                    <FileText className="w-3.5 h-3.5 text-purple-700 shrink-0" />
                    <span>Parameters</span>
                  </div>
                  <div className="font-semibold text-slate-900 mt-1 truncate">
                    {service.parameters_count ? `${service.parameters_count} Included` : 'Detailed Report'}
                  </div>
                </div>
              </div>

              {/* Mobile-Only Price & Quick CTA Bar */}
              <div className="lg:hidden pt-4 border-t border-slate-100 flex items-center justify-between gap-3">
                <div>
                  <div className="text-xl font-bold text-slate-900">₹{discountPrice}</div>
                  {mrpPrice && mrpPrice > discountPrice && (
                    <div className="text-xs text-slate-400 line-through">₹{mrpPrice}</div>
                  )}
                </div>
                <button
                  onClick={() => addToCart({ ...service, price: discountPrice })}
                  className="px-5 py-2.5 rounded-xl bg-purple-700 hover:bg-purple-800 text-white font-bold text-xs shadow-sm active:scale-95 flex items-center gap-1.5"
                >
                  <ShoppingBag className="w-4 h-4" />
                  <span>Book Now</span>
                </button>
              </div>

            </div>

            {/* 2. ABOUT & PURPOSE OF THIS TEST (Consolidated Single Block, No Duplication) */}
            <div className="bg-white rounded-2xl p-6 sm:p-7 border border-slate-200/80 shadow-xs space-y-4">
              <h2 className="text-base sm:text-lg font-bold text-slate-900 flex items-center gap-2 border-b border-slate-100 pb-3">
                <FileText className="w-4.5 h-4.5 text-purple-700" />
                <span>About this Test</span>
              </h2>
              
              <p className="text-xs sm:text-sm text-slate-600 leading-relaxed">
                {service.overview || service.description || service.shortDesc || "Comprehensive medical investigation carried out by accredited diagnostic partner laboratories with verified digital reporting."}
              </p>

              {service.why_it_is_done && (
                <div className="pt-3 border-t border-slate-100 space-y-1.5">
                  <h3 className="text-xs font-bold uppercase tracking-wider text-slate-500">
                    Why is this test recommended?
                  </h3>
                  <p className="text-xs sm:text-sm text-slate-600 leading-relaxed">
                    {service.why_it_is_done}
                  </p>
                </div>
              )}
            </div>

            {/* 3. PREPARATION GUIDELINES */}
            <div className="bg-white rounded-2xl p-6 sm:p-7 border border-slate-200/80 shadow-xs space-y-3">
              <h2 className="text-base sm:text-lg font-bold text-slate-900 flex items-center gap-2 border-b border-slate-100 pb-3">
                <AlertCircle className="w-4.5 h-4.5 text-purple-700" />
                <span>Preparation Guidelines</span>
              </h2>
              
              <div className="p-4 rounded-xl bg-amber-50/70 border border-amber-200/80 text-xs sm:text-sm text-amber-950 leading-relaxed font-medium">
                {prepText}
              </div>
            </div>

            {/* 4. PARAMETERS INCLUDED (If Panel Test) */}
            {service.parameters && service.parameters.length > 0 && (
              <div className="bg-white rounded-2xl p-6 sm:p-7 border border-slate-200/80 shadow-xs space-y-4">
                <div className="flex items-center justify-between border-b border-slate-100 pb-3">
                  <h2 className="text-base sm:text-lg font-bold text-slate-900 flex items-center gap-2">
                    <FlaskConical className="w-4.5 h-4.5 text-purple-700" />
                    <span>What's Included ({service.parameters.length} Parameters)</span>
                  </h2>
                  <span className="text-xs font-bold text-purple-700 bg-purple-50 px-2.5 py-1 rounded-full border border-purple-100">
                    Comprehensive Panel
                  </span>
                </div>
                <div className="grid grid-cols-1 sm:grid-cols-2 gap-2.5">
                  {service.parameters.map((param, idx) => (
                    <div key={idx} className="flex items-center gap-2.5 p-3 rounded-xl bg-purple-50/50 border border-purple-100/80 text-xs font-medium text-slate-800">
                      <div className="w-2 h-2 rounded-full bg-purple-600 shrink-0" />
                      <span>{param}</span>
                    </div>
                  ))}
                </div>
              </div>
            )}

            {/* 5. HOW IT WORKS (Simple 4-Step Patient Journey) */}
            <div className="bg-white rounded-2xl p-6 sm:p-7 border border-slate-200/80 shadow-xs space-y-4">
              <h2 className="text-base sm:text-lg font-bold text-slate-900 flex items-center gap-2 border-b border-slate-100 pb-3">
                <Clock className="w-4.5 h-4.5 text-purple-700" />
                <span>How It Works</span>
              </h2>
              
              <div className="grid grid-cols-1 sm:grid-cols-4 gap-3">
                <div className="p-3.5 rounded-xl bg-purple-50/60 border border-purple-100 text-left space-y-1.5">
                  <div className="w-6 h-6 rounded-full bg-purple-700 text-white text-xs font-bold flex items-center justify-center">1</div>
                  <div className="text-xs font-bold text-slate-900">Book Test</div>
                  <p className="text-[11px] text-slate-600 leading-normal">Book online or upload prescription in 1 click.</p>
                </div>

                <div className="p-3.5 rounded-xl bg-purple-50/60 border border-purple-100 text-left space-y-1.5">
                  <div className="w-6 h-6 rounded-full bg-purple-700 text-white text-xs font-bold flex items-center justify-center">2</div>
                  <div className="text-xs font-bold text-slate-900">Sample Collection</div>
                  <p className="text-[11px] text-slate-600 leading-normal">Certified phlebotomist collects sample at home.</p>
                </div>

                <div className="p-3.5 rounded-xl bg-purple-50/60 border border-purple-100 text-left space-y-1.5">
                  <div className="w-6 h-6 rounded-full bg-purple-700 text-white text-xs font-bold flex items-center justify-center">3</div>
                  <div className="text-xs font-bold text-slate-900">NABL Lab Processing</div>
                  <p className="text-[11px] text-slate-600 leading-normal">Sample analyzed in high-end accredited NABL facility.</p>
                </div>

                <div className="p-3.5 rounded-xl bg-purple-50/60 border border-purple-100 text-left space-y-1.5">
                  <div className="w-6 h-6 rounded-full bg-purple-700 text-white text-xs font-bold flex items-center justify-center">4</div>
                  <div className="text-xs font-bold text-slate-900">Digital Report</div>
                  <p className="text-[11px] text-slate-600 leading-normal">Verified PDF report delivered to your WhatsApp & Email.</p>
                </div>
              </div>
            </div>

            {/* 6. FREQUENTLY ASKED QUESTIONS */}
            {service.faq && service.faq.length > 0 && (
              <div className="bg-white rounded-2xl p-6 sm:p-7 border border-slate-200/80 shadow-xs space-y-4">
                <h2 className="text-base sm:text-lg font-bold text-slate-900 flex items-center gap-2 border-b border-slate-100 pb-3">
                  <HelpCircle className="w-4.5 h-4.5 text-purple-700" />
                  <span>Frequently Asked Questions</span>
                </h2>

                <div className="space-y-2.5">
                  {service.faq.map((item, idx) => {
                    const isOpen = openFaqIndex === idx;
                    return (
                      <div 
                        key={idx} 
                        className="rounded-xl border border-slate-200/80 overflow-hidden bg-slate-50/50 transition-colors"
                      >
                        <button
                          onClick={() => toggleFaq(idx)}
                          className="w-full px-4 py-3 text-left font-semibold text-xs sm:text-sm text-slate-900 flex items-center justify-between gap-3 hover:bg-slate-100/70 cursor-pointer"
                        >
                          <span>{item.q}</span>
                          <span className="text-purple-700 font-bold">{isOpen ? '−' : '+'}</span>
                        </button>

                        {isOpen && (
                          <div className="px-4 pb-3 pt-1 text-xs sm:text-sm text-slate-600 leading-relaxed border-t border-slate-200/60 bg-white">
                            {item.a}
                          </div>
                        )}
                      </div>
                    );
                  })}
                </div>
              </div>
            )}

          </div>

          {/* ========================================================= */}
          {/* RIGHT COLUMN: Single Sticky Booking & Trust Card (lg:col-span-4) */}
          {/* ========================================================= */}
          <div className="lg:col-span-4 lg:sticky lg:top-24 space-y-4 self-start">
            
            <div className="bg-white rounded-2xl border border-purple-200/90 shadow-xl p-6 text-left space-y-5">
              
              {/* Trust Tag */}
              <div className="flex items-center justify-between border-b border-slate-100 pb-3">
                <span className="text-[11px] uppercase font-bold text-purple-700 tracking-wider">
                  {isHomeNursing ? 'Home Nursing Care' : 'Transparent Pricing'}
                </span>
                <span className="text-[10px] font-bold text-emerald-800 bg-emerald-50 px-2.5 py-0.5 rounded-full border border-emerald-200">
                  ✓ NABL Partnered
                </span>
              </div>

              {/* Price Display */}
              {!isHomeNursing && (
                <div className="space-y-1">
                  <div className="flex items-baseline gap-2.5">
                    <span className="text-3xl font-bold text-slate-900 tracking-tight">₹{discountPrice}</span>
                    {mrpPrice && mrpPrice > discountPrice && (
                      <span className="text-base text-slate-400 line-through">₹{mrpPrice}</span>
                    )}
                    {service.discount_percentage && (
                      <span className="text-xs font-bold text-emerald-700 bg-emerald-50 px-2 py-0.5 rounded-md border border-emerald-200">
                        {service.discount_percentage} OFF
                      </span>
                    )}
                  </div>
                  <p className="text-[11px] text-slate-500 font-medium">All inclusive of taxes & home sample collection</p>
                </div>
              )}

              {/* Action Buttons */}
              <div className="space-y-2.5 pt-1">
                {isHomeNursing ? (
                  <button
                    onClick={() => openWhatsApp(whatsappMsg)}
                    className="w-full py-3.5 rounded-xl bg-emerald-600 hover:bg-emerald-700 text-white font-bold text-xs sm:text-sm flex items-center justify-center gap-2 transition-all shadow-md active:scale-95 cursor-pointer"
                  >
                    <MessageSquare className="w-4 h-4 fill-current" />
                    <span>Contact Us on WhatsApp →</span>
                  </button>
                ) : (
                  <>
                    <button
                      onClick={() => addToCart({ ...service, price: discountPrice })}
                      className="w-full py-3.5 rounded-xl bg-purple-700 hover:bg-purple-800 text-white font-bold text-sm flex items-center justify-center gap-2 transition-all shadow-md active:scale-95 cursor-pointer"
                    >
                      <ShoppingBag className="w-4 h-4" />
                      <span>Book This Test Now</span>
                    </button>

                    <button
                      onClick={onOpenUploadModal}
                      className="w-full py-2.5 rounded-xl bg-purple-50 hover:bg-purple-100 text-purple-900 font-semibold text-xs flex items-center justify-center gap-2 transition-all border border-purple-200 active:scale-95 cursor-pointer"
                    >
                      <Upload className="w-3.5 h-3.5 text-purple-700" />
                      <span>Upload Doctor's Prescription</span>
                    </button>

                    <button
                      onClick={() => openWhatsApp(whatsappMsg)}
                      className="w-full py-2.5 rounded-xl bg-emerald-50 hover:bg-emerald-100 text-emerald-800 font-semibold text-xs flex items-center justify-center gap-2 transition-all border border-emerald-200 active:scale-95 cursor-pointer"
                    >
                      <MessageSquare className="w-3.5 h-3.5 fill-current text-emerald-700" />
                      <span>Chat with Health Advisor</span>
                    </button>
                  </>
                )}
              </div>

              {/* Health Express Assurance Checklist */}
              <div className="space-y-2.5 pt-4 border-t border-slate-100 text-xs text-slate-600 font-medium">
                <div className="flex items-center gap-2">
                  <CheckCircle2 className="w-4 h-4 text-emerald-600 shrink-0" />
                  <span>NABL & ISO Certified Diagnostic Labs</span>
                </div>
                <div className="flex items-center gap-2">
                  <CheckCircle2 className="w-4 h-4 text-emerald-600 shrink-0" />
                  <span>Hygienic & Painless Home Collection</span>
                </div>
                <div className="flex items-center gap-2">
                  <CheckCircle2 className="w-4 h-4 text-emerald-600 shrink-0" />
                  <span>Verified Smart Digital PDF Report</span>
                </div>
                <div className="flex items-center gap-2">
                  <CheckCircle2 className="w-4 h-4 text-emerald-600 shrink-0" />
                  <span>Free Doctor Consultation Support</span>
                </div>
              </div>

              {/* Direct Helpline */}
              <div className="pt-3 border-t border-slate-100 flex items-center justify-between text-xs">
                <span className="text-slate-500 font-medium">Need immediate help?</span>
                <a
                  href={`tel:${HEALTH_MANAGER_PHONE}`}
                  className="inline-flex items-center gap-1.5 text-purple-700 hover:text-purple-900 font-bold"
                >
                  <Phone className="w-3.5 h-3.5" />
                  <span>Call Support</span>
                </a>
              </div>

            </div>

          </div>

        </div>

        {/* RELATED SERVICES SECTION */}
        {relatedServices.length > 0 && (
          <div className="pt-8 border-t border-slate-200/80 space-y-4 text-left">
            <div className="flex items-center justify-between">
              <h2 className="text-lg font-bold text-slate-900">
                Related {category?.name || 'Services'}
              </h2>
              <Link 
                to={`/services?category=${service.category_id}`}
                className="text-xs font-bold text-purple-700 hover:text-purple-900 flex items-center gap-1"
              >
                <span>View All</span>
                <ChevronRight className="w-3.5 h-3.5" />
              </Link>
            </div>

            {/* Clean 4-column Related Tests Grid */}
            <div className="grid grid-cols-1 sm:grid-cols-2 lg:grid-cols-4 gap-4">
              {relatedServices.map((relItem) => {
                const RelIcon = getCategoryIcon(relItem.category_id);
                return (
                  <div 
                    key={relItem.id}
                    className="bg-white rounded-2xl border border-slate-200/80 hover:border-purple-300 hover:shadow-lg p-5 flex flex-col justify-between transition-all group shadow-xs hover:-translate-y-0.5"
                  >
                    <div className="space-y-3">
                      <div className="flex items-center justify-between border-b border-slate-100 pb-2.5">
                        <span className="text-[10px] font-bold uppercase tracking-wider text-purple-900 bg-purple-50 px-2.5 py-0.5 rounded-full border border-purple-100 flex items-center gap-1 w-fit">
                          <RelIcon className="w-3 h-3 text-purple-700 shrink-0" />
                          <span>{category?.name || 'Healthcare'}</span>
                        </span>
                      </div>

                      <div className="h-11 flex items-start">
                        <Link
                          to={`/services/${relItem.slug}`}
                          className="font-bold text-sm text-slate-900 group-hover:text-purple-800 transition-colors line-clamp-2 leading-snug"
                        >
                          {relItem.name}
                        </Link>
                      </div>
                    </div>

                    <div className="pt-3 border-t border-slate-100 space-y-3 mt-3">
                      <div className="flex items-baseline justify-between h-7">
                        <div className="flex items-baseline gap-1.5">
                          <span className="text-lg font-bold text-slate-900">₹{relItem.discount_price}</span>
                          {relItem.price && relItem.price > relItem.discount_price && (
                            <span className="text-xs text-slate-400 line-through">₹{relItem.price}</span>
                          )}
                        </div>
                        {relItem.discount_percentage && (
                          <span className="text-[10px] font-bold text-emerald-700 bg-emerald-50 px-2 py-0.5 rounded-md border border-emerald-200">
                            {relItem.discount_percentage} OFF
                          </span>
                        )}
                      </div>

                      <Link
                        to={`/services/${relItem.slug}`}
                        className="w-full py-2 px-3 rounded-xl bg-purple-700 hover:bg-purple-800 text-white font-bold text-xs flex items-center justify-center gap-1.5 transition-all shadow-sm active:scale-95 text-center cursor-pointer group-hover:bg-purple-800"
                      >
                        <span>Book Now</span>
                        <ArrowRight className="w-3.5 h-3.5" />
                      </Link>
                    </div>
                  </div>
                );
              })}
            </div>
          </div>
        )}

      </div>
    </div>
  );
}
