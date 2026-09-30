import React, { useState, useEffect, useRef } from 'react';
import { useNavigate, Link } from 'react-router-dom';
import { 
  User, Phone, ShieldCheck, Calendar, FileText, ShoppingBag, 
  HelpCircle, LogOut, ArrowRight, Activity, PlusCircle, CheckCircle2,
  Clock, Coins, RefreshCw, MessageSquare, ExternalLink, Filter, ChevronDown,
  Sparkles, CreditCard, Eye, Calculator, Globe, Hospital, Compass, ChevronRight, Settings
} from 'lucide-react';
import { useAuth } from '../context/AuthContext';
import { openWhatsApp, DEFAULT_MESSAGES } from '../utils/whatsapp';
import { getMemberOverview, buildUnifiedTimelineStream, formatTimelineDateGroup, formatTimelineTimeIST } from '../services/memberDashboardService';
import { classifyMemberActivity } from '../services/memberActivityClassifier';

export default function GenericDashboardPage() {
  const navigate = useNavigate();
  const { user, session, logout, isLoading: isAuthLoading } = useAuth();
  
  // Dashboard Core State
  const [memberData, setMemberData] = useState({
    patient: null,
    orders: [],
    prescriptions: [],
    enquiries: [],
    payments: [],
    events: [],
    walletCoins: 0
  });
  const [isLoadingStats, setIsLoadingStats] = useState(true);

  // Profile Menu Dropdown Toggle
  const [isProfileMenuOpen, setIsProfileMenuOpen] = useState(false);
  const profileMenuRef = useRef(null);

  // Timeline Filter State
  const [activeTimelineFilter, setActiveTimelineFilter] = useState('all');
  const [timelineVisibleCount, setTimelineVisibleCount] = useState(15);

  // Close profile dropdown when clicking outside
  useEffect(() => {
    function handleClickOutside(e) {
      if (profileMenuRef.current && !profileMenuRef.current.contains(e.target)) {
        setIsProfileMenuOpen(false);
      }
    }
    document.addEventListener('mousedown', handleClickOutside);
    return () => document.removeEventListener('mousedown', handleClickOutside);
  }, []);

  // Load 100% Real Authenticated Member Records from Supabase
  useEffect(() => {
    let isMounted = true;

    async function loadDashboard() {
      if (!session?.user) {
        if (isMounted) setIsLoadingStats(false);
        return;
      }

      try {
        const userId = session.user.id;
        const data = await getMemberOverview(userId);
        
        if (isMounted) {
          setMemberData(data);
        }
      } catch (err) {
        console.warn('Dashboard data fetch warning:', err);
      } finally {
        if (isMounted) setIsLoadingStats(false);
      }
    }

    if (session?.user) {
      loadDashboard();
    } else {
      setIsLoadingStats(false);
    }

    return () => {
      isMounted = false;
    };
  }, [session]);

  const handleLogout = async () => {
    try {
      await logout();
      navigate('/auth', { replace: true });
    } catch (e) {
      console.error('Logout error:', e);
    }
  };

  // Compute 2-Dimensional Activity Classification State
  const classification = classifyMemberActivity({
    user,
    events: memberData.events,
    orders: memberData.orders,
    prescriptions: memberData.prescriptions,
    enquiries: memberData.enquiries,
    payments: memberData.payments,
    walletCoins: memberData.walletCoins
  });

  // Build Unified Timeline Stream
  const timelineStream = buildUnifiedTimelineStream({
    events: memberData.events,
    orders: memberData.orders,
    prescriptions: memberData.prescriptions,
    enquiries: memberData.enquiries,
    payments: memberData.payments
  });

  // Filtered Timeline Items
  const filteredTimelineItems = timelineStream.allItems.filter(item => {
    if (activeTimelineFilter === 'all') return true;
    return item.category === activeTimelineFilter;
  });

  const visibleTimelineItems = filteredTimelineItems.slice(0, timelineVisibleCount);

  // Group visible timeline items by Date (in IST: TODAY, YESTERDAY, SEP 27, 2026)
  const groupedTimelineVisible = {};
  visibleTimelineItems.forEach(item => {
    const groupLabel = formatTimelineDateGroup(item.timestamp);
    if (!groupedTimelineVisible[groupLabel]) {
      groupedTimelineVisible[groupLabel] = [];
    }
    groupedTimelineVisible[groupLabel].push(item);
  });

  const displayName = memberData.patient?.full_name || user?.name || session?.user?.user_metadata?.full_name || null;
  const displayPhone = user?.phone || session?.user?.phone || memberData.patient?.phone_e164 || 'Verified Mobile Number';

  const accountCreatedDateLabel = session?.user?.created_at 
    ? new Date(session.user.created_at).toLocaleDateString('en-IN', { day: 'numeric', month: 'short', year: 'numeric' })
    : 'Today';

  // Quick Action Dispatcher
  const handleCTAAction = (actionType) => {
    if (actionType === 'open_upload_modal') {
      window.dispatchEvent(new CustomEvent('open-upload-modal'));
    } else if (actionType === 'navigate_services') {
      navigate('/services');
    } else if (actionType === 'filter_prescriptions') {
      setActiveTimelineFilter('prescriptions');
    } else if (actionType === 'filter_orders') {
      setActiveTimelineFilter('orders');
    } else if (actionType === 'open_whatsapp') {
      openWhatsApp(DEFAULT_MESSAGES.general);
    }
  };

  if (isAuthLoading || isLoadingStats) {
    return (
      <div className="min-h-screen flex items-center justify-center p-4 bg-slate-50 text-purple-900">
        <div className="flex flex-col items-center gap-3">
          <RefreshCw className="w-8 h-8 animate-spin text-purple-600" />
          <span className="text-xs font-extrabold tracking-wide">Loading Health Express Account...</span>
        </div>
      </div>
    );
  }

  return (
    <div className="min-h-screen bg-slate-50 text-slate-900 flex flex-col font-sans selection:bg-purple-100 selection:text-purple-900">
      
      {/* 1. DEDICATED MEMBER DASHBOARD HEADER */}
      <header className="bg-slate-900 text-white border-b border-slate-800 sticky top-0 z-40 shadow-md">
        <div className="max-w-7xl mx-auto px-4 sm:px-6 lg:px-8 h-16 flex items-center justify-between">
          
          {/* Left Side: Brand Logo (Links to /dashboard) & Site Link */}
          <div className="flex items-center gap-6">
            <Link 
              to="/dashboard" 
              className="flex items-center gap-2.5 group hover:opacity-90 transition-opacity"
            >
              <div className="w-9 h-9 rounded-xl bg-purple-700 flex items-center justify-center font-black text-white text-base shadow-sm group-hover:scale-105 transition-transform">
                HE
              </div>
              <span className="font-extrabold text-base tracking-tight text-white flex items-center gap-1.5">
                <span>Health Express</span>
                <span className="bg-purple-800 text-purple-200 text-[10px] uppercase font-bold px-2 py-0.5 rounded-full border border-purple-700">
                  Member
                </span>
              </span>
            </Link>

            <div className="hidden md:block w-px h-5 bg-slate-800" />

            <a
              href="/"
              target="_blank"
              rel="noopener noreferrer"
              className="hidden md:flex items-center gap-1.5 text-xs font-semibold text-slate-400 hover:text-purple-300 transition-colors"
            >
              <span>Visit Health Express Website</span>
              <ExternalLink className="w-3.5 h-3.5" />
            </a>
          </div>

          {/* Right Side: Authenticated Member Dropdown */}
          <div className="relative" ref={profileMenuRef}>
            <button
              onClick={() => setIsProfileMenuOpen(!isProfileMenuOpen)}
              className="flex items-center gap-3 p-1.5 pr-3 rounded-2xl bg-slate-800/80 hover:bg-slate-800 border border-slate-700/80 transition-all cursor-pointer"
            >
              <div className="w-8 h-8 rounded-xl bg-gradient-to-br from-purple-600 to-indigo-700 flex items-center justify-center font-black text-white text-xs shadow-inner">
                {displayName ? displayName.charAt(0).toUpperCase() : <User className="w-4 h-4 text-white" />}
              </div>

              <div className="text-left hidden sm:block">
                <div className="text-xs font-bold text-white leading-tight">{displayName || 'My Account'}</div>
                <div className="text-[10px] font-semibold text-purple-300 leading-tight">Verified Account</div>
              </div>

              <ChevronDown className={`w-4 h-4 text-slate-400 transition-transform ${isProfileMenuOpen ? 'rotate-180' : ''}`} />
            </button>

            {/* Dropdown Menu */}
            {isProfileMenuOpen && (
              <div className="absolute right-0 mt-2 w-56 rounded-2xl bg-white text-slate-900 border border-slate-200 shadow-2xl py-2 z-50 animate-in fade-in slide-in-from-top-2">
                <div className="px-4 py-2 border-b border-slate-100 sm:hidden">
                  <p className="text-xs font-bold text-slate-900">{displayName}</p>
                  <p className="text-[11px] text-slate-500 font-mono">{displayPhone}</p>
                </div>

                <div className="py-1">
                  <button
                    onClick={() => { setIsProfileMenuOpen(false); setActiveTimelineFilter('all'); }}
                    className="w-full text-left px-4 py-2 text-xs font-semibold hover:bg-purple-50 text-slate-700 hover:text-purple-900 flex items-center gap-2.5"
                  >
                    <User className="w-4 h-4 text-purple-600" />
                    <span>My Profile</span>
                  </button>

                  <button
                    onClick={() => { setIsProfileMenuOpen(false); setActiveTimelineFilter('all'); }}
                    className="w-full text-left px-4 py-2 text-xs font-semibold hover:bg-purple-50 text-slate-700 hover:text-purple-900 flex items-center gap-2.5"
                  >
                    <Activity className="w-4 h-4 text-sky-600" />
                    <span>My Activity Timeline</span>
                  </button>

                  <button
                    onClick={() => { setIsProfileMenuOpen(false); setActiveTimelineFilter('prescriptions'); }}
                    className="w-full text-left px-4 py-2 text-xs font-semibold hover:bg-purple-50 text-slate-700 hover:text-purple-900 flex items-center gap-2.5"
                  >
                    <FileText className="w-4 h-4 text-purple-600" />
                    <span>My Prescriptions ({memberData.prescriptions.length})</span>
                  </button>

                  <button
                    onClick={() => { setIsProfileMenuOpen(false); setActiveTimelineFilter('orders'); }}
                    className="w-full text-left px-4 py-2 text-xs font-semibold hover:bg-purple-50 text-slate-700 hover:text-purple-900 flex items-center gap-2.5"
                  >
                    <ShoppingBag className="w-4 h-4 text-emerald-600" />
                    <span>My Orders ({memberData.orders.length})</span>
                  </button>

                  <a
                    href="/"
                    target="_blank"
                    rel="noopener noreferrer"
                    onClick={() => setIsProfileMenuOpen(false)}
                    className="w-full text-left px-4 py-2 text-xs font-semibold hover:bg-purple-50 text-slate-700 hover:text-purple-900 flex items-center gap-2.5 md:hidden"
                  >
                    <ExternalLink className="w-4 h-4 text-slate-500" />
                    <span>Visit Website</span>
                  </a>
                </div>

                <div className="border-t border-slate-100 pt-1">
                  <button
                    onClick={handleLogout}
                    className="w-full text-left px-4 py-2 text-xs font-bold text-rose-600 hover:bg-rose-50 flex items-center gap-2.5 cursor-pointer"
                  >
                    <LogOut className="w-4 h-4 text-rose-600" />
                    <span>Logout</span>
                  </button>
                </div>
              </div>
            )}
          </div>

        </div>
      </header>

      {/* MAIN DASHBOARD CONTENT BODY */}
      <main className="flex-1 max-w-7xl w-full mx-auto py-8 px-4 sm:px-6 lg:px-8 space-y-8">
        
        {/* 2. DYNAMIC HERO GREETING BANNER */}
        <div className="bg-gradient-to-br from-purple-900 via-purple-800 to-indigo-950 rounded-3xl p-6 sm:p-8 text-white shadow-xl relative overflow-hidden">
          <div className="absolute top-0 right-0 w-72 h-72 bg-purple-500/15 rounded-full blur-3xl -mr-16 -mt-16 pointer-events-none" />

          <div className="relative z-10 flex flex-col md:flex-row md:items-center justify-between gap-6">
            <div className="space-y-2">
              <div className="flex items-center gap-2 flex-wrap">
                <span className="px-3 py-1 rounded-full bg-purple-700/80 text-purple-200 text-xs font-bold border border-purple-500/40 uppercase tracking-wider flex items-center gap-1.5">
                  <Sparkles className="w-3.5 h-3.5 text-purple-300" />
                  <span>
                    {classification.primaryStage === 'new_member' && 'New Member'}
                    {classification.primaryStage === 'explorer' && 'Healthcare Explorer'}
                    {classification.primaryStage === 'prescription_user' && 'Prescription Care Member'}
                    {classification.primaryStage === 'active_customer' && 'Active Customer'}
                  </span>
                </span>

                <span className="px-3 py-1 rounded-full bg-emerald-500/20 text-emerald-300 text-xs font-bold border border-emerald-400/30 capitalize">
                  {classification.engagement.replace('_', ' ')}
                </span>
              </div>

              <h1 className="text-2xl sm:text-4xl font-black text-white tracking-tight">
                {displayName ? `Welcome back, ${displayName} 👋` : 'Welcome back 👋'}
              </h1>

              <p className="text-xs sm:text-sm text-purple-200/90 max-w-2xl font-medium leading-relaxed">
                {classification.primaryStage === 'new_member' && "Your Health Express journey starts here. Explore our diagnostic lab packages or upload your prescription."}
                {classification.primaryStage === 'explorer' && "Welcome to Health Express! You are currently exploring diagnostic services and health tools."}
                {classification.primaryStage === 'prescription_user' && "Your prescription has been uploaded and is being reviewed by our care team."}
                {classification.primaryStage === 'active_customer' && "Track your orders, view diagnostic reports, and manage healthcare services."}
              </p>
            </div>

            <div className="flex items-center gap-3 shrink-0">
              <button
                onClick={() => handleCTAAction('open_upload_modal')}
                className="px-4 py-3 rounded-2xl bg-white hover:bg-purple-50 text-purple-900 font-extrabold text-xs shadow-lg transition-all hover:scale-[1.02] cursor-pointer flex items-center gap-2"
              >
                <PlusCircle className="w-4 h-4 text-purple-700" />
                <span>Upload Prescription</span>
              </button>

              <button
                onClick={() => handleCTAAction('open_whatsapp')}
                className="px-4 py-3 rounded-2xl bg-emerald-500 hover:bg-emerald-400 text-slate-950 font-black text-xs shadow-lg transition-all hover:scale-[1.02] cursor-pointer flex items-center gap-2"
              >
                <MessageSquare className="w-4 h-4" />
                <span className="hidden sm:inline">Care Manager</span>
              </button>
            </div>
          </div>
        </div>

        {/* 3. PERSONALIZED "NEXT BEST ACTION" CARD */}
        <div className="bg-white rounded-3xl p-6 border border-purple-100 shadow-sm flex flex-col md:flex-row items-start md:items-center justify-between gap-6">
          <div className="space-y-1">
            <div className="flex items-center gap-2 text-xs font-extrabold text-purple-700 uppercase tracking-wider">
              <Compass className="w-4 h-4 text-purple-600" />
              <span>Recommended Next Step</span>
            </div>
            <h3 className="text-lg font-black text-slate-900">{classification.nextBestAction.title}</h3>
            <p className="text-xs text-slate-500 font-medium">{classification.nextBestAction.description}</p>
          </div>

          <div className="flex items-center gap-3 shrink-0 w-full sm:w-auto">
            {classification.nextBestAction.primaryCTA && (
              <button
                onClick={() => handleCTAAction(classification.nextBestAction.primaryCTA.action)}
                className="flex-1 sm:flex-initial px-5 py-3 rounded-2xl bg-purple-700 hover:bg-purple-800 text-white font-extrabold text-xs shadow-md transition-all cursor-pointer flex items-center justify-center gap-2"
              >
                <span>{classification.nextBestAction.primaryCTA.label}</span>
                <ArrowRight className="w-4 h-4" />
              </button>
            )}

            {classification.nextBestAction.secondaryCTA && (
              <button
                onClick={() => handleCTAAction(classification.nextBestAction.secondaryCTA.action)}
                className="flex-1 sm:flex-initial px-4 py-3 rounded-2xl bg-slate-100 hover:bg-slate-200 text-slate-800 font-extrabold text-xs transition-colors cursor-pointer text-center"
              >
                {classification.nextBestAction.secondaryCTA.label}
              </button>
            )}
          </div>
        </div>

        {/* 4. USER JOURNEY MILESTONES PROGRESS TRACKER */}
        <div className="bg-white rounded-3xl p-6 border border-slate-200 shadow-sm space-y-4">
          <h3 className="text-sm font-extrabold text-slate-900 uppercase tracking-wider flex items-center gap-2">
            <Sparkles className="w-4 h-4 text-purple-600" />
            <span>Your Health Express Journey</span>
          </h3>

          <div className="grid grid-cols-2 sm:grid-cols-5 gap-3 pt-2">
            
            {/* Step 1: Account Created */}
            <div className="p-3.5 rounded-2xl bg-purple-50/70 border border-purple-200/80 space-y-1">
              <div className="flex items-center justify-between text-purple-700">
                <span className="text-[10px] font-bold uppercase tracking-wider">Step 1</span>
                <CheckCircle2 className="w-4 h-4 text-emerald-600" />
              </div>
              <p className="text-xs font-black text-slate-900">Account Created</p>
              <p className="text-[10px] text-purple-700 font-bold">{accountCreatedDateLabel}</p>
            </div>

            {/* Step 2: Explored Services */}
            <div className={`p-3.5 rounded-2xl border space-y-1 ${
              classification.milestones.exploredServices 
                ? 'bg-purple-50/70 border-purple-200/80' 
                : 'bg-slate-50 border-slate-200 opacity-60'
            }`}>
              <div className="flex items-center justify-between">
                <span className="text-[10px] font-bold uppercase tracking-wider text-slate-500">Step 2</span>
                {classification.milestones.exploredServices ? (
                  <CheckCircle2 className="w-4 h-4 text-emerald-600" />
                ) : (
                  <div className="w-3.5 h-3.5 rounded-full border-2 border-slate-300" />
                )}
              </div>
              <p className="text-xs font-black text-slate-900">Explore Services</p>
              <p className="text-[10px] text-slate-500">
                {classification.milestones.exploredServices ? 'Services Reviewed' : 'Pending'}
              </p>
            </div>

            {/* Step 3: Prescription Uploaded */}
            <div className={`p-3.5 rounded-2xl border space-y-1 ${
              classification.milestones.prescriptionUploaded 
                ? 'bg-purple-50/70 border-purple-200/80' 
                : 'bg-slate-50 border-slate-200 opacity-60'
            }`}>
              <div className="flex items-center justify-between">
                <span className="text-[10px] font-bold uppercase tracking-wider text-slate-500">Step 3</span>
                {classification.milestones.prescriptionUploaded ? (
                  <CheckCircle2 className="w-4 h-4 text-emerald-600" />
                ) : (
                  <div className="w-3.5 h-3.5 rounded-full border-2 border-slate-300" />
                )}
              </div>
              <p className="text-xs font-black text-slate-900">Prescription</p>
              <p className="text-[10px] text-slate-500">
                {classification.milestones.prescriptionUploaded ? `${memberData.prescriptions.length} Uploaded` : 'Optional'}
              </p>
            </div>

            {/* Step 4: Order Placed */}
            <div className={`p-3.5 rounded-2xl border space-y-1 ${
              classification.milestones.orderPlaced 
                ? 'bg-purple-50/70 border-purple-200/80' 
                : 'bg-slate-50 border-slate-200 opacity-60'
            }`}>
              <div className="flex items-center justify-between">
                <span className="text-[10px] font-bold uppercase tracking-wider text-slate-500">Step 4</span>
                {classification.milestones.orderPlaced ? (
                  <CheckCircle2 className="w-4 h-4 text-emerald-600" />
                ) : (
                  <div className="w-3.5 h-3.5 rounded-full border-2 border-slate-300" />
                )}
              </div>
              <p className="text-xs font-black text-slate-900">Order Placed</p>
              <p className="text-[10px] text-slate-500">
                {classification.milestones.orderPlaced ? `${memberData.orders.length} Orders` : 'Pending'}
              </p>
            </div>

            {/* Step 5: Care Fulfillment */}
            <div className={`p-3.5 rounded-2xl border space-y-1 ${
              classification.milestones.careFulfillment 
                ? 'bg-purple-50/70 border-purple-200/80' 
                : 'bg-slate-50 border-slate-200 opacity-60'
            }`}>
              <div className="flex items-center justify-between">
                <span className="text-[10px] font-bold uppercase tracking-wider text-slate-500">Step 5</span>
                {classification.milestones.careFulfillment ? (
                  <CheckCircle2 className="w-4 h-4 text-emerald-600" />
                ) : (
                  <div className="w-3.5 h-3.5 rounded-full border-2 border-slate-300" />
                )}
              </div>
              <p className="text-xs font-black text-slate-900">Care Fulfillment</p>
              <p className="text-[10px] text-slate-500">
                {classification.milestones.careFulfillment ? 'Completed' : 'Pending'}
              </p>
            </div>

          </div>
        </div>

        {/* 5. DYNAMIC MEMBER SUMMARY CARDS (100% REAL SUPABASE DATA) */}
        <div className="grid grid-cols-1 sm:grid-cols-2 lg:grid-cols-4 gap-4">
          
          {/* Prescriptions Card */}
          <div className="bg-white rounded-2xl p-5 border border-slate-200 shadow-sm flex flex-col justify-between space-y-3">
            <div className="space-y-2">
              <div className="flex items-center justify-between">
                <span className="px-2.5 py-1 rounded-xl bg-purple-100 text-purple-700 font-bold text-xs flex items-center gap-1.5">
                  <FileText className="w-4 h-4" />
                  <span>Prescriptions</span>
                </span>
                <span className="text-xl font-black text-slate-900">{memberData.prescriptions.length}</span>
              </div>
              <p className="text-xs text-slate-500 font-medium">
                {memberData.prescriptions.length > 0 
                  ? `${memberData.prescriptions.length} medical file upload(s)`
                  : 'No prescriptions uploaded yet'}
              </p>
            </div>

            <button
              onClick={() => handleCTAAction('open_upload_modal')}
              className="w-full py-2.5 px-3 rounded-xl bg-purple-50 hover:bg-purple-100 text-purple-800 font-extrabold text-xs flex items-center justify-center gap-1.5 transition-colors cursor-pointer"
            >
              <PlusCircle className="w-4 h-4" />
              <span>Upload Prescription</span>
            </button>
          </div>

          {/* Orders Card */}
          <div className="bg-white rounded-2xl p-5 border border-slate-200 shadow-sm flex flex-col justify-between space-y-3">
            <div className="space-y-2">
              <div className="flex items-center justify-between">
                <span className="px-2.5 py-1 rounded-xl bg-emerald-100 text-emerald-700 font-bold text-xs flex items-center gap-1.5">
                  <ShoppingBag className="w-4 h-4" />
                  <span>Orders</span>
                </span>
                <span className="text-xl font-black text-slate-900">{memberData.orders.length}</span>
              </div>
              <p className="text-xs text-slate-500 font-medium">
                {memberData.orders.length > 0
                  ? `${memberData.orders.length} diagnostic test order(s)`
                  : 'No orders yet'}
              </p>
            </div>

            <button
              onClick={() => handleCTAAction('navigate_services')}
              className="w-full py-2.5 px-3 rounded-xl bg-emerald-50 hover:bg-emerald-100 text-emerald-800 font-extrabold text-xs flex items-center justify-center gap-1.5 transition-colors cursor-pointer"
            >
              <span>Browse Diagnostic Services</span>
              <ArrowRight className="w-3.5 h-3.5" />
            </button>
          </div>

          {/* Enquiries Card */}
          <div className="bg-white rounded-2xl p-5 border border-slate-200 shadow-sm flex flex-col justify-between space-y-3">
            <div className="space-y-2">
              <div className="flex items-center justify-between">
                <span className="px-2.5 py-1 rounded-xl bg-sky-100 text-sky-700 font-bold text-xs flex items-center gap-1.5">
                  <MessageSquare className="w-4 h-4" />
                  <span>Enquiries</span>
                </span>
                <span className="text-xl font-black text-slate-900">{memberData.enquiries.length}</span>
              </div>
              <p className="text-xs text-slate-500 font-medium">
                {memberData.enquiries.length > 0
                  ? `${memberData.enquiries.length} care enquiry request(s)`
                  : 'No active enquiries'}
              </p>
            </div>

            <button
              onClick={() => handleCTAAction('open_whatsapp')}
              className="w-full py-2.5 px-3 rounded-xl bg-sky-50 hover:bg-sky-100 text-sky-800 font-extrabold text-xs flex items-center justify-center gap-1.5 transition-colors cursor-pointer"
            >
              <span>WhatsApp Support</span>
              <ArrowRight className="w-3.5 h-3.5" />
            </button>
          </div>

          {/* Health Coins Card */}
          <div className="bg-white rounded-2xl p-5 border border-slate-200 shadow-sm flex flex-col justify-between space-y-3">
            <div className="space-y-2">
              <div className="flex items-center justify-between">
                <span className="px-2.5 py-1 rounded-xl bg-amber-100 text-amber-800 font-bold text-xs flex items-center gap-1.5">
                  <Coins className="w-4 h-4 text-amber-600" />
                  <span>Health Coins</span>
                </span>
                <span className="text-xl font-black text-amber-600">{memberData.walletCoins.toLocaleString('en-IN')}</span>
              </div>
              <p className="text-xs text-slate-500 font-medium">
                {memberData.walletCoins > 0 
                  ? `≈ ₹${Math.floor(memberData.walletCoins / 10)} discount balance`
                  : '0 Coins. Earn on registration & orders.'}
              </p>
            </div>

            <button
              onClick={() => handleCTAAction('navigate_services')}
              className="w-full py-2.5 px-3 rounded-xl bg-amber-50 hover:bg-amber-100 text-amber-900 font-extrabold text-xs flex items-center justify-center gap-1.5 transition-colors cursor-pointer"
            >
              <span>Redeem on Next Order</span>
              <ArrowRight className="w-3.5 h-3.5" />
            </button>
          </div>

        </div>

        {/* 6. CHRONOLOGICAL MEMBER ACTIVITY TIMELINE (CORE FEATURE) */}
        <div className="bg-white rounded-3xl p-6 border border-slate-200 shadow-sm space-y-6">
          
          <div className="flex flex-col sm:flex-row sm:items-center justify-between gap-4 border-b border-slate-100 pb-4">
            <div>
              <h3 className="text-lg font-black text-slate-900 flex items-center gap-2">
                <Clock className="w-5 h-5 text-purple-600" />
                <span>Your Activity Timeline</span>
              </h3>
              <p className="text-xs text-slate-500 font-medium">
                Chronological history of your Health Express account, prescription uploads, orders, and site visits.
              </p>
            </div>

            {/* Timeline Filter Pills */}
            <div className="flex items-center gap-1.5 flex-wrap">
              {[
                { id: 'all', label: 'All' },
                { id: 'orders', label: 'Orders' },
                { id: 'prescriptions', label: 'Prescriptions' },
                { id: 'payments', label: 'Payments' },
                { id: 'website', label: 'Website' },
                { id: 'account', label: 'Account' }
              ].map(f => (
                <button
                  key={f.id}
                  onClick={() => { setActiveTimelineFilter(f.id); setTimelineVisibleCount(15); }}
                  className={`px-3 py-1.5 rounded-xl text-xs font-bold transition-all cursor-pointer ${
                    activeTimelineFilter === f.id
                      ? 'bg-purple-700 text-white shadow-xs'
                      : 'bg-slate-100 text-slate-600 hover:bg-slate-200'
                  }`}
                >
                  {f.label}
                </button>
              ))}
            </div>
          </div>

          {/* Timeline Output List Grouped by Date */}
          {filteredTimelineItems.length === 0 ? (
            <div className="p-8 text-center bg-slate-50 rounded-2xl border border-slate-200/80 space-y-2">
              <Clock className="w-8 h-8 text-slate-400 mx-auto" />
              <h4 className="text-xs font-bold text-slate-800">No activity recorded for this filter</h4>
              <p className="text-[11px] text-slate-500">
                Explore services or upload a prescription to see your activity timeline build up.
              </p>
            </div>
          ) : (
            <div className="space-y-6 relative before:absolute before:inset-0 before:left-3.5 sm:before:left-4 before:w-0.5 before:bg-purple-100">
              {Object.keys(groupedTimelineVisible).map(groupLabel => (
                <div key={groupLabel} className="space-y-3 relative">
                  
                  {/* Date Banner Header */}
                  <div className="flex items-center gap-2">
                    <span className="text-[11px] font-black uppercase tracking-wider text-purple-700 bg-purple-50 border border-purple-200 px-3 py-0.5 rounded-full z-10">
                      {groupLabel}
                    </span>
                    <div className="h-px bg-slate-100 flex-1" />
                  </div>

                  {/* Group Items */}
                  <div className="space-y-3">
                    {groupedTimelineVisible[groupLabel].map((item, idx) => (
                      <div key={item.id || idx} className="flex items-start gap-3.5 group pl-1">
                        
                        {/* Event Category Icon Badge */}
                        <div className="w-7 h-7 rounded-full bg-white border-2 border-purple-600 text-purple-700 flex items-center justify-center text-xs shrink-0 z-10 shadow-xs">
                          {item.category === 'orders' && <ShoppingBag className="w-3.5 h-3.5 text-emerald-600" />}
                          {item.category === 'prescriptions' && <FileText className="w-3.5 h-3.5 text-purple-600" />}
                          {item.category === 'payments' && <CreditCard className="w-3.5 h-3.5 text-sky-600" />}
                          {item.category === 'account' && <ShieldCheck className="w-3.5 h-3.5 text-amber-600" />}
                          {item.category === 'website' && <Globe className="w-3.5 h-3.5 text-indigo-600" />}
                        </div>

                        {/* Event Details Card */}
                        <div className="flex-1 bg-slate-50/80 hover:bg-slate-50 p-3.5 rounded-2xl border border-slate-200/70 transition-colors space-y-1">
                          <div className="flex items-center justify-between">
                            <h4 className="text-xs font-extrabold text-slate-900">{item.title}</h4>
                            <span className="text-xs font-bold text-slate-500 shrink-0 ml-2">
                              {formatTimelineTimeIST(item.timestamp)}
                            </span>
                          </div>
                          <p className="text-xs text-slate-600 font-medium">{item.description}</p>
                        </div>

                      </div>
                    ))}
                  </div>

                </div>
              ))}

              {/* Load More Timeline Events Button */}
              {filteredTimelineItems.length > timelineVisibleCount && (
                <div className="text-center pt-4">
                  <button
                    onClick={() => setTimelineVisibleCount(prev => prev + 15)}
                    className="px-5 py-2.5 rounded-2xl bg-purple-50 hover:bg-purple-100 text-purple-800 font-extrabold text-xs transition-colors cursor-pointer"
                  >
                    Load More Activity ({filteredTimelineItems.length - timelineVisibleCount} remaining)
                  </button>
                </div>
              )}
            </div>
          )}

        </div>

      </main>

    </div>
  );
}
