import React, { useState, useEffect } from 'react';
import { useParams, useNavigate, Link } from 'react-router-dom';
import { 
  CheckCircle2, Clock, MapPin, Calendar, FileText, Download, 
  ExternalLink, MessageSquare, Phone, ShieldCheck, AlertCircle, 
  RefreshCw, Search, ArrowLeft, Truck, Package, Activity, User, Share2
} from 'lucide-react';
import { fetchOrderTrackingDetails } from '../services/adminService';
import { openWhatsApp } from '../utils/whatsapp';

export default function OrderTrackingPage() {
  const { orderCode: routeOrderCode } = useParams();
  const navigate = useNavigate();

  const [orderCodeInput, setOrderCodeInput] = useState(routeOrderCode || '');
  const [activeOrderCode, setActiveOrderCode] = useState(routeOrderCode || '');
  const [trackingData, setTrackingData] = useState(null);
  const [isLoading, setIsLoading] = useState(false);
  const [error, setError] = useState(null);
  const [copiedLink, setCopiedLink] = useState(false);

  // Sync active code when route parameter changes
  useEffect(() => {
    if (routeOrderCode) {
      setOrderCodeInput(routeOrderCode);
      setActiveOrderCode(routeOrderCode);
    }
  }, [routeOrderCode]);

  // Fetch tracking details whenever activeOrderCode changes
  useEffect(() => {
    if (!activeOrderCode) return;

    let isMounted = true;
    const fetchTracking = async () => {
      setIsLoading(true);
      setError(null);
      try {
        const res = await fetchOrderTrackingDetails(activeOrderCode.trim());
        if (!isMounted) return;

        if (res.success && res.data) {
          setTrackingData(res.data);
        } else {
          setError(res.error || `No booking found for order code "${activeOrderCode}". Please verify your order ID.`);
          setTrackingData(null);
        }
      } catch (err) {
        if (!isMounted) return;
        setError(err.message || 'Unable to retrieve tracking details. Please try again.');
        setTrackingData(null);
      } finally {
        if (isMounted) setIsLoading(false);
      }
    };

    fetchTracking();

    return () => {
      isMounted = false;
    };
  }, [activeOrderCode]);

  const handleSearchSubmit = (e) => {
    e.preventDefault();
    if (!orderCodeInput.trim()) return;
    const cleaned = orderCodeInput.trim().toUpperCase();
    navigate(`/track/${cleaned}`);
  };

  // Determine milestone stages
  const getMilestones = (order) => {
    if (!order) return [];

    const status = (order.order_status || 'PENDING').toUpperCase();
    const hasReport = Boolean(order.report_url);

    // Milestones definitions
    // Stage 1: Order Confirmed
    // Stage 2: Phlebotomist Assigned
    // Stage 3: Sample Collected
    // Stage 4: Lab Processing
    // Stage 5: Report Ready

    let currentStep = 1;
    if (hasReport || status === 'COMPLETED') {
      currentStep = 5;
    } else if (status === 'PROCESSING' || status === 'IN_LAB') {
      currentStep = 4;
    } else if (status === 'COLLECTED' || status === 'EN_ROUTE_TO_LAB') {
      currentStep = 3;
    } else if (status === 'ASSIGNED' || status === 'EN_ROUTE' || status === 'CONFIRMED') {
      currentStep = 2;
    }

    return [
      {
        id: 1,
        title: 'Booking Confirmed',
        desc: 'Order received & scheduled in slot',
        time: order.created_at ? new Date(order.created_at).toLocaleDateString('en-IN', { month: 'short', day: 'numeric' }) : 'Confirmed',
        completed: currentStep >= 1,
        active: currentStep === 1
      },
      {
        id: 2,
        title: 'Phlebotomist Assigned',
        desc: 'Vaccinated specialist with sterile kit',
        time: currentStep >= 2 ? 'Assigned' : 'Scheduled',
        completed: currentStep >= 2,
        active: currentStep === 2
      },
      {
        id: 3,
        title: 'Home Sample Collection',
        desc: 'Vacutainer barcoded & cold-chain sealed',
        time: currentStep >= 3 ? 'Completed' : 'Pending visit',
        completed: currentStep >= 3,
        active: currentStep === 3
      },
      {
        id: 4,
        title: 'Lab Analysis',
        desc: 'NABL-accredited diagnostic analysis',
        time: currentStep >= 4 ? 'Under Processing' : 'Pending sample',
        completed: currentStep >= 4,
        active: currentStep === 4
      },
      {
        id: 5,
        title: 'Diagnostic Report Ready',
        desc: 'Digital report verified by pathologist',
        time: hasReport ? 'Ready to Download' : 'Within 6-24 hrs',
        completed: currentStep >= 5,
        active: currentStep === 5
      }
    ];
  };

  const handleShareLink = () => {
    if (navigator.clipboard) {
      navigator.clipboard.writeText(window.location.href);
      setCopiedLink(true);
      setTimeout(() => setCopiedLink(false), 2500);
    }
  };

  const milestones = getMilestones(trackingData);

  return (
    <div className="min-h-screen bg-slate-50 text-slate-900 pb-16">
      {/* Top Hero Breadcrumb & Header */}
      <div className="bg-gradient-to-r from-purple-900 via-indigo-900 to-slate-900 text-white py-8 px-4 sm:px-6">
        <div className="max-w-4xl mx-auto space-y-4">
          <div className="flex items-center justify-between">
            <Link 
              to="/" 
              className="inline-flex items-center gap-1.5 text-xs font-bold text-purple-200 hover:text-white transition-colors"
            >
              <ArrowLeft className="w-4 h-4" />
              <span>Back to Home</span>
            </Link>

            <span className="px-3 py-1 rounded-full bg-purple-700/60 border border-purple-500/50 text-[11px] font-extrabold uppercase tracking-wider text-purple-100 flex items-center gap-1.5">
              <Activity className="w-3.5 h-3.5 text-emerald-400" />
              <span>Live Diagnostics Dispatch Desk</span>
            </span>
          </div>

          <div className="space-y-1 text-center sm:text-left">
            <h1 className="text-2xl sm:text-3xl font-black tracking-tight">
              Track Your HealthExpress Order
            </h1>
            <p className="text-xs sm:text-sm text-purple-200 font-medium">
              Real-time phlebotomist appointment status, sample journey & diagnostic report delivery.
            </p>
          </div>

          {/* Quick Lookup Form */}
          <form onSubmit={handleSearchSubmit} className="pt-2">
            <div className="flex flex-col sm:flex-row items-center gap-2 bg-white/10 backdrop-blur-md p-1.5 rounded-2xl border border-white/20 shadow-lg">
              <div className="relative flex-1 w-full">
                <Search className="w-4 h-4 text-purple-200 absolute left-3.5 top-1/2 -translate-y-1/2" />
                <input
                  type="text"
                  value={orderCodeInput}
                  onChange={(e) => setOrderCodeInput(e.target.value)}
                  placeholder="Enter Order Code (e.g., HEX-ORD-12345)"
                  className="w-full pl-10 pr-4 py-2.5 bg-transparent text-white placeholder-purple-300 font-extrabold text-xs sm:text-sm focus:outline-none"
                />
              </div>
              <button
                type="submit"
                className="w-full sm:w-auto px-6 py-2.5 rounded-xl bg-purple-600 hover:bg-purple-500 text-white font-black text-xs transition-all shadow-md flex items-center justify-center gap-1.5 cursor-pointer"
              >
                <span>Track Order</span>
              </button>
            </div>
          </form>
        </div>
      </div>

      {/* Main Body Content */}
      <div className="max-w-4xl mx-auto px-4 sm:px-6 -mt-3">
        {isLoading ? (
          <div className="bg-white rounded-3xl p-12 text-center shadow-lg border border-slate-200 space-y-3">
            <RefreshCw className="w-8 h-8 text-purple-600 animate-spin mx-auto" />
            <h3 className="font-extrabold text-slate-800 text-base">Fetching Order & Phlebotomist Details...</h3>
            <p className="text-xs text-slate-500">Connecting securely to HealthExpress clinical records.</p>
          </div>
        ) : error ? (
          <div className="bg-white rounded-3xl p-8 shadow-lg border border-rose-200 space-y-4 text-center">
            <div className="w-12 h-12 rounded-full bg-rose-100 text-rose-600 flex items-center justify-center mx-auto">
              <AlertCircle className="w-6 h-6" />
            </div>
            <div className="space-y-1">
              <h3 className="font-extrabold text-slate-900 text-lg">Order Not Found</h3>
              <p className="text-xs text-slate-600 max-w-md mx-auto">{error}</p>
            </div>
            <div className="pt-2 flex flex-col sm:flex-row items-center justify-center gap-3">
              <button
                type="button"
                onClick={() => openWhatsApp('Order Tracking Help', 'Hi HealthExpress team, I need help tracking my diagnostic order: ' + (activeOrderCode || ''))}
                className="px-5 py-2.5 rounded-xl bg-emerald-600 hover:bg-emerald-700 text-white font-extrabold text-xs flex items-center gap-2 cursor-pointer shadow-sm"
              >
                <MessageSquare className="w-4 h-4" />
                <span>Contact Personal Health Manager on WhatsApp</span>
              </button>
              <Link
                to="/"
                className="px-5 py-2.5 rounded-xl bg-slate-100 hover:bg-slate-200 text-slate-700 font-extrabold text-xs cursor-pointer"
              >
                Return to Home
              </Link>
            </div>
          </div>
        ) : trackingData ? (
          <div className="space-y-6">

            {/* ORDER OVERVIEW CARD */}
            <div className="bg-white rounded-3xl p-6 shadow-xl border border-purple-100 space-y-4">
              <div className="flex flex-col sm:flex-row sm:items-center justify-between gap-3 pb-4 border-b border-slate-100">
                <div>
                  <div className="text-[11px] font-black uppercase tracking-wider text-purple-900">
                    Booking Reference
                  </div>
                  <div className="text-xl sm:text-2xl font-black text-slate-900 flex items-center gap-2">
                    <span>{trackingData.order_code}</span>
                    <button
                      type="button"
                      onClick={handleShareLink}
                      className="p-1 text-slate-400 hover:text-purple-700 rounded-lg hover:bg-purple-50 transition-colors cursor-pointer"
                      title="Copy Tracking Link"
                    >
                      <Share2 className="w-4 h-4" />
                    </button>
                    {copiedLink && (
                      <span className="text-[10px] bg-purple-100 text-purple-900 font-bold px-2 py-0.5 rounded-full">
                        Link Copied!
                      </span>
                    )}
                  </div>
                </div>

                <div className="flex flex-wrap items-center gap-2">
                  <span className={`px-3 py-1 rounded-full text-xs font-black uppercase tracking-wider ${
                    trackingData.payment_status === 'PAID'
                      ? 'bg-emerald-100 text-emerald-800 border border-emerald-200'
                      : 'bg-amber-100 text-amber-800 border border-amber-200'
                  }`}>
                    {trackingData.payment_status === 'PAID' ? 'PAID ONLINE' : 'PAY ON COLLECTION'}
                  </span>

                  <span className="px-3 py-1 rounded-full bg-purple-100 text-purple-900 border border-purple-200 text-xs font-black uppercase tracking-wider">
                    {trackingData.order_status || 'CONFIRMED'}
                  </span>
                </div>
              </div>

              {/* 5-STAGE MILESTONE STEPPER */}
              <div className="py-2">
                <h4 className="text-xs font-black uppercase tracking-wider text-slate-400 mb-6">
                  Sample Journey & Fulfillment Milestones
                </h4>

                <div className="relative">
                  {/* Connecting Line */}
                  <div className="hidden sm:block absolute top-5 left-6 right-6 h-1 bg-slate-200 -z-0">
                    <div 
                      className="h-full bg-gradient-to-r from-purple-600 to-emerald-500 transition-all duration-500"
                      style={{
                        width: `${((milestones.filter(m => m.completed).length - 1) / (milestones.length - 1)) * 100}%`
                      }}
                    />
                  </div>

                  <div className="grid grid-cols-1 sm:grid-cols-5 gap-4 relative z-10">
                    {milestones.map((step) => (
                      <div key={step.id} className="flex sm:flex-col items-start sm:items-center gap-3 sm:gap-2 text-left sm:text-center">
                        <div className={`w-10 h-10 rounded-2xl flex items-center justify-center font-black text-xs transition-all shrink-0 ${
                          step.completed
                            ? 'bg-emerald-600 text-white shadow-md shadow-emerald-600/30 ring-4 ring-emerald-50'
                            : step.active
                            ? 'bg-purple-700 text-white shadow-md shadow-purple-700/30 ring-4 ring-purple-100 animate-pulse'
                            : 'bg-slate-100 text-slate-400 border border-slate-200'
                        }`}>
                          {step.completed ? <CheckCircle2 className="w-5 h-5" /> : step.id}
                        </div>
                        <div className="space-y-0.5">
                          <div className={`text-xs font-extrabold ${step.completed || step.active ? 'text-slate-900' : 'text-slate-400'}`}>
                            {step.title}
                          </div>
                          <div className="text-[10px] text-slate-500 font-medium leading-tight">
                            {step.desc}
                          </div>
                          <div className="text-[9px] font-bold text-purple-700 pt-0.5">
                            {step.time}
                          </div>
                        </div>
                      </div>
                    ))}
                  </div>
                </div>
              </div>

              {/* REPORT READY NOTIFICATION BANNER */}
              {trackingData.report_url ? (
                <div className="p-4 rounded-2xl bg-gradient-to-r from-emerald-50 to-teal-50 border border-emerald-200 flex flex-col sm:flex-row items-start sm:items-center justify-between gap-3 shadow-xs">
                  <div className="flex items-center gap-3">
                    <div className="w-10 h-10 rounded-xl bg-emerald-600 text-white flex items-center justify-center shrink-0 shadow-md">
                      <FileText className="w-5 h-5" />
                    </div>
                    <div>
                      <h4 className="text-sm font-black text-emerald-950">Official Diagnostic Lab Report Available</h4>
                      <p className="text-xs text-emerald-800 font-medium">
                        Verified pathology report signed by senior laboratory specialists.
                      </p>
                    </div>
                  </div>

                  <a
                    href={trackingData.report_url}
                    target="_blank"
                    rel="noopener noreferrer"
                    className="w-full sm:w-auto px-5 py-2.5 rounded-xl bg-emerald-600 hover:bg-emerald-700 text-white font-black text-xs flex items-center justify-center gap-2 transition-all shadow-md cursor-pointer shrink-0"
                  >
                    <Download className="w-4 h-4" />
                    <span>Download Report (PDF)</span>
                  </a>
                </div>
              ) : (
                <div className="p-3.5 rounded-2xl bg-purple-50/70 border border-purple-200/70 flex items-center gap-3 text-xs text-purple-950 font-medium">
                  <Clock className="w-5 h-5 text-purple-600 shrink-0" />
                  <p>
                    <strong>Digital Report Status:</strong> Your sample is being processed with NABL-accredited diagnostic precision. The verified digital report will be unlocked here as soon as verified.
                  </p>
                </div>
              )}
            </div>

            {/* DETAILS 2-COLUMN GRID */}
            <div className="grid grid-cols-1 md:grid-cols-2 gap-5">

              {/* COLUMN 1: APPOINTMENT & ADDRESS */}
              <div className="bg-white rounded-3xl p-5 shadow-lg border border-slate-200 space-y-4">
                <div className="flex items-center gap-2 text-xs font-black uppercase tracking-wider text-purple-900 border-b border-slate-100 pb-2.5">
                  <Calendar className="w-4 h-4 text-purple-700" />
                  <span>Sample Collection Schedule & Address</span>
                </div>

                <div className="space-y-3 text-xs">
                  <div className="p-3 bg-purple-50/50 rounded-2xl border border-purple-100 flex items-start gap-3">
                    <Clock className="w-4 h-4 text-purple-600 shrink-0 mt-0.5" />
                    <div>
                      <span className="font-extrabold text-slate-900 block">Scheduled Time Slot</span>
                      <span className="text-purple-950 font-bold">
                        {trackingData.scheduled_date ? new Date(trackingData.scheduled_date).toLocaleDateString('en-IN', { weekday: 'short', month: 'short', day: 'numeric', year: 'numeric' }) : 'Scheduled Appointment'}
                      </span>
                      <span className="text-slate-600 block text-[11px] mt-0.5">
                        {trackingData.scheduled_slot || '07:30 AM - 08:30 AM (Fasting Preferred)'}
                      </span>
                    </div>
                  </div>

                  <div className="p-3 bg-slate-50 rounded-2xl border border-slate-100 flex items-start gap-3">
                    <MapPin className="w-4 h-4 text-slate-500 shrink-0 mt-0.5" />
                    <div>
                      <span className="font-extrabold text-slate-900 block">Home Collection Address</span>
                      <span className="text-slate-700 block leading-relaxed">
                        {trackingData.delivery_address || trackingData.shipping_address || 'Bengaluru, Karnataka'}
                      </span>
                      {trackingData.landmark && (
                        <span className="text-[11px] text-purple-800 font-semibold block mt-0.5">
                          Landmark: {trackingData.landmark}
                        </span>
                      )}
                      {trackingData.pincode && (
                        <span className="text-[11px] text-slate-500 font-mono block">
                          Pincode: {trackingData.pincode}
                        </span>
                      )}
                    </div>
                  </div>

                  <div className="p-3 bg-slate-50 rounded-2xl border border-slate-100 flex items-start gap-3">
                    <User className="w-4 h-4 text-slate-500 shrink-0 mt-0.5" />
                    <div>
                      <span className="font-extrabold text-slate-900 block">Patient Information</span>
                      <span className="text-slate-700 font-medium">
                        {trackingData.customer_name || 'Registered Patient'}
                      </span>
                      {trackingData.customer_phone && (
                        <span className="text-slate-500 font-mono text-[11px] block mt-0.5">
                          Phone: {trackingData.customer_phone.replace(/(\d{3})\d{4}(\d{3})/, '$1****$2')}
                        </span>
                      )}
                    </div>
                  </div>
                </div>
              </div>

              {/* COLUMN 2: CLINICAL PREPARATION & PHLEBOTOMY PROTOCOL */}
              <div className="bg-white rounded-3xl p-5 shadow-lg border border-slate-200 space-y-4">
                <div className="flex items-center gap-2 text-xs font-black uppercase tracking-wider text-purple-900 border-b border-slate-100 pb-2.5">
                  <ShieldCheck className="w-4 h-4 text-purple-700" />
                  <span>Sample Collection Protocol & Preparation</span>
                </div>

                <div className="space-y-3 text-xs">
                  <div className="p-3 rounded-2xl bg-amber-50/70 border border-amber-200/70 text-amber-950 space-y-1">
                    <span className="font-bold flex items-center gap-1.5 text-[11px]">
                      <span>Fasting Instructions:</span>
                    </span>
                    <p className="text-[11px] text-amber-900/90 leading-relaxed">
                      For fasting blood tests (Lipid, Blood Glucose Fasting, Liver Function), 10-12 hours overnight fasting is advised. You may drink plain water freely to stay hydrated.
                    </p>
                  </div>

                  <div className="p-3 rounded-2xl bg-slate-50 border border-slate-100 space-y-2">
                    <span className="font-bold text-slate-900 block text-[11px]">Certified Safety Standards:</span>
                    <ul className="space-y-1.5 text-[11px] text-slate-600">
                      <li className="flex items-center gap-2">
                        <CheckCircle2 className="w-3.5 h-3.5 text-emerald-600 shrink-0" />
                        <span>Fresh single-use sterile vacutainer needle opened before you</span>
                      </li>
                      <li className="flex items-center gap-2">
                        <CheckCircle2 className="w-3.5 h-3.5 text-emerald-600 shrink-0" />
                        <span>Unique barcoded tube scanning to guarantee zero sample mix-up</span>
                      </li>
                      <li className="flex items-center gap-2">
                        <CheckCircle2 className="w-3.5 h-3.5 text-emerald-600 shrink-0" />
                        <span>Temperature-controlled cold chain carrier during laboratory transit</span>
                      </li>
                    </ul>
                  </div>

                  {/* WhatsApp Support CTA */}
                  <div className="pt-1">
                    <button
                      type="button"
                      onClick={() => openWhatsApp('Order Support', `Hello HealthExpress, I need assistance regarding my booking ${trackingData.order_code}.`)}
                      className="w-full py-2.5 rounded-xl bg-purple-50 hover:bg-purple-100 text-purple-900 font-extrabold text-xs border border-purple-200 flex items-center justify-center gap-2 transition-colors cursor-pointer"
                    >
                      <MessageSquare className="w-4 h-4 text-emerald-600" />
                      <span>Chat with Personal Health Manager</span>
                    </button>
                  </div>
                </div>
              </div>

            </div>

            {/* ORDER ITEMS & PAYMENT BREAKDOWN */}
            <div className="bg-white rounded-3xl p-6 shadow-lg border border-slate-200 space-y-4">
              <div className="flex items-center justify-between border-b border-slate-100 pb-3">
                <div className="flex items-center gap-2 text-xs font-black uppercase tracking-wider text-purple-900">
                  <Package className="w-4 h-4 text-purple-700" />
                  <span>Booked Diagnostic Tests & Profiles ({trackingData.items?.length || 0})</span>
                </div>
                <div className="text-xs font-black text-slate-800">
                  Total: ₹{trackingData.total_amount}
                </div>
              </div>

              {(!trackingData.items || trackingData.items.length === 0) ? (
                <p className="text-xs text-slate-400 italic">No specific item breakdown recorded.</p>
              ) : (
                <div className="grid grid-cols-1 sm:grid-cols-2 gap-2.5">
                  {trackingData.items.map((item, idx) => (
                    <div key={idx} className="p-3 rounded-xl bg-slate-50 border border-slate-100 flex items-center justify-between gap-3 text-xs">
                      <div className="font-bold text-slate-800 truncate">
                        {item.name || item.service_name || 'Diagnostic Test'}
                      </div>
                      <div className="font-black text-purple-950 shrink-0">
                        ₹{item.price || item.unit_price || 0}
                      </div>
                    </div>
                  ))}
                </div>
              )}
            </div>

          </div>
        ) : (
          <div className="bg-white rounded-3xl p-10 shadow-lg border border-slate-200 text-center space-y-4">
            <div className="w-14 h-14 rounded-2xl bg-purple-50 text-purple-700 flex items-center justify-center mx-auto border border-purple-100">
              <Package className="w-7 h-7" />
            </div>
            <div className="space-y-1">
              <h3 className="font-extrabold text-slate-900 text-lg">Enter Your HealthExpress Order Code</h3>
              <p className="text-xs text-slate-500 max-w-sm mx-auto">
                Check the SMS, WhatsApp confirmation or order receipt received after placing your diagnostic booking.
              </p>
            </div>
          </div>
        )}
      </div>
    </div>
  );
}
