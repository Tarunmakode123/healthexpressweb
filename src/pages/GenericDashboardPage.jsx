import React, { useState, useEffect, useRef } from 'react';
import { useNavigate, Link } from 'react-router-dom';
import { 
  User, Phone, ShieldCheck, Calendar, FileText, ShoppingBag, 
  HelpCircle, LogOut, ArrowRight, Activity, PlusCircle, CheckCircle2,
  Clock, Coins, RefreshCw, MessageSquare, ExternalLink, Filter, ChevronDown,
  Sparkles, CreditCard, Eye, Calculator, Globe, Hospital, Compass, ChevronRight, Settings,
  Zap, ArrowUpRight, Check, AlertCircle
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

  // Dashboard Main View Tab State: 'feed' | 'requests' | 'actions'
  const [activeDashboardTab, setActiveDashboardTab] = useState('feed');

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

  // Group visible timeline items by Date (in IST)
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

  // Compute completed journey step count (1 to 5) for progress bar
  let completedStepCount = 1;
  if (classification.milestones.careFulfillment) completedStepCount = 5;
  else if (classification.milestones.orderPlaced) completedStepCount = 4;
  else if (classification.milestones.prescriptionUploaded) completedStepCount = 3;
  else if (classification.milestones.exploredServices) completedStepCount = 2;

  const progressPercentage = ((completedStepCount - 1) / 4) * 100;

  // Quick Action Dispatcher
  const handleCTAAction = (actionType) => {
    if (actionType === 'open_upload_modal') {
      window.dispatchEvent(new CustomEvent('open-upload-modal'));
    } else if (actionType === 'navigate_services') {
      navigate('/services');
    } else if (actionType === 'filter_prescriptions') {
      setActiveDashboardTab('feed');
      setActiveTimelineFilter('prescriptions');
    } else if (actionType === 'filter_orders') {
      setActiveDashboardTab('feed');
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

  const totalRequestsCount = memberData.prescriptions.length + memberData.orders.length + memberData.enquiries.length;

  return (
    <div className="min-h-screen bg-slate-50 text-slate-900 flex flex-col font-sans selection:bg-purple-100 selection:text-purple-900">
      
      {/* 1. DEDICATED MEMBER DASHBOARD HEADER */}
      <header className="bg-slate-900 text-white border-b border-slate-800 sticky top-0 z-40 shadow-md">
        <div className="max-w-7xl mx-auto px-4 sm:px-6 lg:px-8 h-16 flex items-center justify-between">
          
          {/* Left Side: Brand Logo & Site Link */}
          <div className="flex items-center gap-6">
            <Link 
              to="/dashboard" 
              className="flex items-center gap-3 group hover:opacity-95 transition-opacity"
            >
              <img 
                src="/logo.png" 
                alt="Health Express - Everything Health Fast Tracked" 
                className="h-9 sm:h-10 w-auto object-contain bg-white px-2.5 py-1 rounded-xl shadow-md border border-purple-100 group-hover:scale-[1.02] transition-transform" 
              />
              <span className="bg-purple-800/90 text-purple-200 text-[10px] uppercase font-extrabold tracking-wider px-2.5 py-1 rounded-full border border-purple-700/80 shadow-xs">
                Member
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
                  <p className="text-xs font-bold text-slate-900">{displayName || 'My Account'}</p>
                  <p className="text-[11px] text-slate-500 font-mono">{displayPhone}</p>
                </div>

                <div className="py-1">
                  <button
                    onClick={() => { setIsProfileMenuOpen(false); setActiveDashboardTab('feed'); setActiveTimelineFilter('all'); }}
                    className="w-full text-left px-4 py-2 text-xs font-semibold hover:bg-purple-50 text-slate-700 hover:text-purple-900 flex items-center gap-2.5"
                  >
                    <User className="w-4 h-4 text-purple-600" />
                    <span>My Profile</span>
                  </button>

                  <button
                    onClick={() => { setIsProfileMenuOpen(false); setActiveDashboardTab('feed'); setActiveTimelineFilter('all'); }}
                    className="w-full text-left px-4 py-2 text-xs font-semibold hover:bg-purple-50 text-slate-700 hover:text-purple-900 flex items-center gap-2.5"
                  >
                    <Activity className="w-4 h-4 text-sky-600" />
                    <span>My Activity Timeline</span>
                  </button>

                  <button
                    onClick={() => { setIsProfileMenuOpen(false); setActiveDashboardTab('feed'); setActiveTimelineFilter('prescriptions'); }}
                    className="w-full text-left px-4 py-2 text-xs font-semibold hover:bg-purple-50 text-slate-700 hover:text-purple-900 flex items-center gap-2.5"
                  >
                    <FileText className="w-4 h-4 text-purple-600" />
                    <span>My Prescriptions ({memberData.prescriptions.length})</span>
                  </button>

                  <button
                    onClick={() => { setIsProfileMenuOpen(false); setActiveDashboardTab('feed'); setActiveTimelineFilter('orders'); }}
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
      <main className="flex-1 max-w-7xl w-full mx-auto py-8 px-4 sm:px-6 lg:px-8">
        
        {/* OPTION A: 2-COLUMN SPLIT GRID WITH INTEGRATED HERO COMMAND CENTER */}
        <div className="grid grid-cols-1 lg:grid-cols-12 gap-8 items-start">
          
          {/* LEFT MAIN WORKSPACE COLUMN (lg:col-span-8 - 66% width) */}
          <div className="lg:col-span-8 space-y-8">
            
            {/* 2. UNIFIED HERO COMMAND CENTER (Combines Greeting + Recommended Action + Line-Connected Stepper) */}
            <div className="bg-gradient-to-br from-purple-950 via-purple-900 to-indigo-950 rounded-3xl p-6 sm:p-8 text-white shadow-xl relative overflow-hidden space-y-6">
              <div className="absolute top-0 right-0 w-80 h-80 bg-purple-500/10 rounded-full blur-3xl -mr-16 -mt-16 pointer-events-none" />

              {/* Top Row: Greeting & Primary Smart Action */}
              <div className="relative z-10 flex flex-col md:flex-row md:items-center justify-between gap-6 pb-6 border-b border-purple-800/60">
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

                  <h1 className="text-2xl sm:text-3xl font-black text-white tracking-tight">
                    {displayName ? `Welcome back, ${displayName} 👋` : 'Welcome back 👋'}
                  </h1>

                  <p className="text-xs sm:text-sm text-purple-200/90 max-w-xl font-medium leading-relaxed">
                    {classification.nextBestAction.description}
                  </p>
                </div>

                {/* Single Smart Dynamic Primary Action Button */}
                <div className="flex items-center gap-3 shrink-0">
                  {classification.nextBestAction.primaryCTA && (
                    <button
                      onClick={() => handleCTAAction(classification.nextBestAction.primaryCTA.action)}
                      className="px-5 py-3.5 rounded-2xl bg-white hover:bg-purple-50 text-purple-950 font-black text-xs shadow-xl transition-all hover:scale-[1.02] cursor-pointer flex items-center gap-2"
                    >
                      <PlusCircle className="w-4 h-4 text-purple-700" />
                      <span>{classification.nextBestAction.primaryCTA.label}</span>
                      <ArrowRight className="w-4 h-4 text-purple-700" />
                    </button>
                  )}

                  <button
                    onClick={() => handleCTAAction('open_whatsapp')}
                    className="p-3.5 rounded-2xl bg-emerald-500/20 hover:bg-emerald-500/30 text-emerald-300 font-extrabold text-xs border border-emerald-500/30 transition-all cursor-pointer flex items-center gap-2"
                    title="WhatsApp Care Manager"
                  >
                    <MessageSquare className="w-4 h-4" />
                    <span className="hidden sm:inline">Care Manager</span>
                  </button>
                </div>
              </div>

              {/* Bottom Row: Connected Stepper Progress Bar */}
              <div className="relative z-10 space-y-3 pt-1">
                <div className="flex items-center justify-between text-xs">
                  <span className="font-extrabold text-purple-200 uppercase tracking-wider text-[11px] flex items-center gap-1.5">
                    <Compass className="w-3.5 h-3.5 text-purple-300" />
                    <span>Your Health Express Journey</span>
                  </span>
                  <span className="text-[11px] font-mono text-purple-300 font-semibold">
                    Step {completedStepCount} of 5
                  </span>
                </div>

                {/* Line-Connected Stepper Nodes Container */}
                <div className="relative pt-2 pb-1">
                  {/* Connecting Background Line */}
                  <div className="absolute top-5 left-4 right-4 h-1 bg-purple-800/80 rounded-full z-0" />
                  
                  {/* Connecting Completed Fill Line */}
                  <div 
                    className="absolute top-5 left-4 h-1 bg-gradient-to-r from-emerald-400 via-teal-300 to-purple-300 rounded-full z-0 transition-all duration-700"
                    style={{ width: `calc(${progressPercentage}% - 8px)` }}
                  />

                  {/* 5 Connected Step Nodes */}
                  <div className="relative z-10 grid grid-cols-5 gap-2 text-center">
                    
                    {/* Step 1 */}
                    <div className="flex flex-col items-center space-y-1.5 group cursor-default">
                      <div className="w-7 h-7 sm:w-8 sm:h-8 rounded-full bg-emerald-500 text-slate-950 flex items-center justify-center font-bold text-xs shadow-md border-2 border-purple-900 transition-transform group-hover:scale-110">
                        <Check className="w-4 h-4 stroke-[3]" />
                      </div>
                      <div className="space-y-0.5">
                        <p className="text-[10px] sm:text-xs font-extrabold text-white leading-tight">Account</p>
                        <p className="text-[9px] text-emerald-300 font-bold hidden sm:block">Created</p>
                      </div>
                    </div>

                    {/* Step 2 */}
                    <div className="flex flex-col items-center space-y-1.5 group cursor-default">
                      <div className={`w-7 h-7 sm:w-8 sm:h-8 rounded-full flex items-center justify-center font-bold text-xs shadow-md border-2 border-purple-900 transition-transform group-hover:scale-110 ${
                        classification.milestones.exploredServices 
                          ? 'bg-emerald-500 text-slate-950' 
                          : 'bg-purple-800 text-purple-300 ring-2 ring-purple-500/50'
                      }`}>
                        {classification.milestones.exploredServices ? <Check className="w-4 h-4 stroke-[3]" /> : '2'}
                      </div>
                      <div className="space-y-0.5">
                        <p className="text-[10px] sm:text-xs font-extrabold text-white leading-tight">Explore</p>
                        <p className="text-[9px] text-purple-300 font-medium hidden sm:block">
                          {classification.milestones.exploredServices ? 'Reviewed' : 'Services'}
                        </p>
                      </div>
                    </div>

                    {/* Step 3 */}
                    <div className="flex flex-col items-center space-y-1.5 group cursor-default">
                      <div className={`w-7 h-7 sm:w-8 sm:h-8 rounded-full flex items-center justify-center font-bold text-xs shadow-md border-2 border-purple-900 transition-transform group-hover:scale-110 ${
                        classification.milestones.prescriptionUploaded 
                          ? 'bg-emerald-500 text-slate-950' 
                          : 'bg-purple-900 text-purple-400 border-purple-800'
                      }`}>
                        {classification.milestones.prescriptionUploaded ? <Check className="w-4 h-4 stroke-[3]" /> : '3'}
                      </div>
                      <div className="space-y-0.5">
                        <p className="text-[10px] sm:text-xs font-extrabold text-purple-100 leading-tight">Prescription</p>
                        <p className="text-[9px] text-purple-300 font-medium hidden sm:block">
                          {classification.milestones.prescriptionUploaded ? `${memberData.prescriptions.length} Uploaded` : 'Optional'}
                        </p>
                      </div>
                    </div>

                    {/* Step 4 */}
                    <div className="flex flex-col items-center space-y-1.5 group cursor-default">
                      <div className={`w-7 h-7 sm:w-8 sm:h-8 rounded-full flex items-center justify-center font-bold text-xs shadow-md border-2 border-purple-900 transition-transform group-hover:scale-110 ${
                        classification.milestones.orderPlaced 
                          ? 'bg-emerald-500 text-slate-950' 
                          : 'bg-purple-900 text-purple-400 border-purple-800'
                      }`}>
                        {classification.milestones.orderPlaced ? <Check className="w-4 h-4 stroke-[3]" /> : '4'}
                      </div>
                      <div className="space-y-0.5">
                        <p className="text-[10px] sm:text-xs font-extrabold text-purple-200 leading-tight">Order</p>
                        <p className="text-[9px] text-purple-300 font-medium hidden sm:block">
                          {classification.milestones.orderPlaced ? `${memberData.orders.length} Placed` : 'Pending'}
                        </p>
                      </div>
                    </div>

                    {/* Step 5 */}
                    <div className="flex flex-col items-center space-y-1.5 group cursor-default">
                      <div className={`w-7 h-7 sm:w-8 sm:h-8 rounded-full flex items-center justify-center font-bold text-xs shadow-md border-2 border-purple-900 transition-transform group-hover:scale-110 ${
                        classification.milestones.careFulfillment 
                          ? 'bg-emerald-500 text-slate-950' 
                          : 'bg-purple-900 text-purple-400 border-purple-800'
                      }`}>
                        {classification.milestones.careFulfillment ? <Check className="w-4 h-4 stroke-[3]" /> : '5'}
                      </div>
                      <div className="space-y-0.5">
                        <p className="text-[10px] sm:text-xs font-extrabold text-purple-200 leading-tight">Care</p>
                        <p className="text-[9px] text-purple-300 font-medium hidden sm:block">
                          {classification.milestones.careFulfillment ? 'Fulfilled' : 'Pending'}
                        </p>
                      </div>
                    </div>

                  </div>
                </div>
              </div>

            </div>

            {/* 3. INTERACTIVE SECTION TABS HEADER & WORKSPACE */}
            <div className="space-y-6">
              
              {/* Dynamic Interactive Navigation Tabs */}
              <div className="flex items-center gap-2 border-b border-slate-200 pb-2 overflow-x-auto no-scrollbar">
                
                <button
                  onClick={() => setActiveDashboardTab('feed')}
                  className={`px-4 py-2.5 rounded-2xl font-extrabold text-xs transition-all cursor-pointer flex items-center gap-2 shrink-0 ${
                    activeDashboardTab === 'feed'
                      ? 'bg-purple-900 text-white shadow-md'
                      : 'bg-white text-slate-600 hover:bg-purple-50 hover:text-purple-900 border border-slate-200'
                  }`}
                >
                  <Clock className="w-4 h-4" />
                  <span>Activity Feed</span>
                  <span className="ml-1 px-2 py-0.5 rounded-full bg-purple-800 text-purple-200 text-[10px]">
                    {timelineStream.allItems.length}
                  </span>
                </button>

                <button
                  onClick={() => setActiveDashboardTab('requests')}
                  className={`px-4 py-2.5 rounded-2xl font-extrabold text-xs transition-all cursor-pointer flex items-center gap-2 shrink-0 ${
                    activeDashboardTab === 'requests'
                      ? 'bg-purple-900 text-white shadow-md'
                      : 'bg-white text-slate-600 hover:bg-purple-50 hover:text-purple-900 border border-slate-200'
                  }`}
                >
                  <FileText className="w-4 h-4" />
                  <span>My Requests</span>
                  {totalRequestsCount > 0 && (
                    <span className="px-2 py-0.5 rounded-full bg-emerald-500 text-slate-950 font-black text-[10px]">
                      {totalRequestsCount}
                    </span>
                  )}
                </button>

                <button
                  onClick={() => setActiveDashboardTab('actions')}
                  className={`px-4 py-2.5 rounded-2xl font-extrabold text-xs transition-all cursor-pointer flex items-center gap-2 shrink-0 ${
                    activeDashboardTab === 'actions'
                      ? 'bg-purple-900 text-white shadow-md'
                      : 'bg-white text-slate-600 hover:bg-purple-50 hover:text-purple-900 border border-slate-200'
                  }`}
                >
                  <Zap className="w-4 h-4 text-amber-400" />
                  <span>Quick Services</span>
                </button>

              </div>

              {/* TAB CONTENT AREA 1: CHRONOLOGICAL ACTIVITY FEED */}
              {activeDashboardTab === 'feed' && (
                <div className="bg-white rounded-3xl p-6 border border-slate-200 shadow-sm space-y-6">
                  
                  {/* Timeline Filter Pills Bar */}
                  <div className="flex flex-col sm:flex-row sm:items-center justify-between gap-4 border-b border-slate-100 pb-4">
                    <div>
                      <h3 className="text-sm font-extrabold text-slate-900 flex items-center gap-2 uppercase tracking-wider">
                        <Activity className="w-4 h-4 text-purple-600" />
                        <span>Chronological History Stream</span>
                      </h3>
                    </div>

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
              )}

              {/* TAB CONTENT AREA 2: MY REQUESTS & PRESCRIPTIONS */}
              {activeDashboardTab === 'requests' && (
                <div className="bg-white rounded-3xl p-6 border border-slate-200 shadow-sm space-y-6">
                  <div className="flex items-center justify-between border-b border-slate-100 pb-4">
                    <div>
                      <h3 className="text-sm font-extrabold text-slate-900 uppercase tracking-wider flex items-center gap-2">
                        <FileText className="w-4 h-4 text-purple-600" />
                        <span>Active Patient Requests & Uploads</span>
                      </h3>
                      <p className="text-xs text-slate-500 font-medium">
                        View status of doctor prescriptions, lab orders, and diagnostic enquiries.
                      </p>
                    </div>

                    <button
                      onClick={() => handleCTAAction('open_upload_modal')}
                      className="px-4 py-2 rounded-xl bg-purple-700 hover:bg-purple-800 text-white font-extrabold text-xs shadow-xs transition-all flex items-center gap-1.5 cursor-pointer"
                    >
                      <PlusCircle className="w-4 h-4" />
                      <span>Upload New</span>
                    </button>
                  </div>

                  {totalRequestsCount === 0 ? (
                    <div className="p-10 text-center bg-purple-50/50 rounded-3xl border border-purple-100 space-y-3">
                      <FileText className="w-10 h-10 text-purple-400 mx-auto" />
                      <h4 className="text-sm font-extrabold text-purple-950">No Requests Submitted Yet</h4>
                      <p className="text-xs text-purple-700 max-w-md mx-auto">
                        Upload your doctor prescription or book a lab package to start receiving fast-tracked diagnostic updates.
                      </p>
                      <button
                        onClick={() => handleCTAAction('open_upload_modal')}
                        className="px-5 py-2.5 rounded-2xl bg-purple-700 hover:bg-purple-800 text-white font-extrabold text-xs shadow-md transition-all cursor-pointer inline-flex items-center gap-2"
                      >
                        <PlusCircle className="w-4 h-4" />
                        <span>Upload Prescription Now</span>
                      </button>
                    </div>
                  ) : (
                    <div className="space-y-4">
                      {/* Prescriptions List */}
                      {memberData.prescriptions.map((rx, idx) => (
                        <div key={rx.id || idx} className="p-4 rounded-2xl bg-slate-50 border border-slate-200 flex items-center justify-between gap-4">
                          <div className="flex items-center gap-3">
                            <div className="w-10 h-10 rounded-xl bg-purple-100 text-purple-700 flex items-center justify-center font-bold">
                              <FileText className="w-5 h-5" />
                            </div>
                            <div>
                              <h4 className="text-xs font-black text-slate-900">
                                {rx.file_name || `Prescription #${rx.id ? String(rx.id).slice(0, 6) : idx + 1}`}
                              </h4>
                              <p className="text-[11px] text-slate-500 font-medium">
                                Uploaded on {new Date(rx.created_at || Date.now()).toLocaleDateString('en-IN', { day: 'numeric', month: 'short', year: 'numeric' })}
                              </p>
                            </div>
                          </div>
                          <span className="px-3 py-1 rounded-full bg-purple-100 text-purple-800 text-[11px] font-extrabold">
                            Under Review
                          </span>
                        </div>
                      ))}

                      {/* Orders List */}
                      {memberData.orders.map((ord, idx) => (
                        <div key={ord.id || idx} className="p-4 rounded-2xl bg-slate-50 border border-slate-200 flex items-center justify-between gap-4">
                          <div className="flex items-center gap-3">
                            <div className="w-10 h-10 rounded-xl bg-emerald-100 text-emerald-700 flex items-center justify-center font-bold">
                              <ShoppingBag className="w-5 h-5" />
                            </div>
                            <div>
                              <h4 className="text-xs font-black text-slate-900">
                                {ord.service_title || `Order #${ord.id ? String(ord.id).slice(0, 6) : idx + 1}`}
                              </h4>
                              <p className="text-[11px] text-slate-500 font-medium">
                                Placed on {new Date(ord.created_at || Date.now()).toLocaleDateString('en-IN', { day: 'numeric', month: 'short', year: 'numeric' })}
                              </p>
                            </div>
                          </div>
                          <span className="px-3 py-1 rounded-full bg-emerald-100 text-emerald-800 text-[11px] font-extrabold capitalize">
                            {ord.status || 'Active'}
                          </span>
                        </div>
                      ))}
                    </div>
                  )}

                </div>
              )}

              {/* TAB CONTENT AREA 3: QUICK SERVICES HUB */}
              {activeDashboardTab === 'actions' && (
                <div className="bg-white rounded-3xl p-6 border border-slate-200 shadow-sm space-y-6">
                  <div>
                    <h3 className="text-sm font-extrabold text-slate-900 uppercase tracking-wider flex items-center gap-2">
                      <Zap className="w-4 h-4 text-amber-500" />
                      <span>Fast-Tracked Health Services</span>
                    </h3>
                    <p className="text-xs text-slate-500 font-medium">
                      Direct access to Health Express diagnostic booking tools and priority support.
                    </p>
                  </div>

                  <div className="grid grid-cols-1 sm:grid-cols-2 gap-4">
                    <button
                      onClick={() => handleCTAAction('open_upload_modal')}
                      className="p-5 rounded-2xl bg-purple-50 hover:bg-purple-100 border border-purple-200/80 text-left transition-all group cursor-pointer space-y-2"
                    >
                      <div className="flex items-center justify-between">
                        <div className="w-10 h-10 rounded-xl bg-purple-700 text-white flex items-center justify-center font-bold">
                          <PlusCircle className="w-5 h-5" />
                        </div>
                        <ArrowUpRight className="w-4 h-4 text-purple-600 group-hover:translate-x-0.5 group-hover:-translate-y-0.5 transition-transform" />
                      </div>
                      <div>
                        <h4 className="text-sm font-black text-slate-900">Upload Doctor Prescription</h4>
                        <p className="text-xs text-slate-600 font-medium">Instant upload for care manager verification & lab booking.</p>
                      </div>
                    </button>

                    <button
                      onClick={() => handleCTAAction('navigate_services')}
                      className="p-5 rounded-2xl bg-emerald-50 hover:bg-emerald-100 border border-emerald-200/80 text-left transition-all group cursor-pointer space-y-2"
                    >
                      <div className="flex items-center justify-between">
                        <div className="w-10 h-10 rounded-xl bg-emerald-700 text-white flex items-center justify-center font-bold">
                          <ShoppingBag className="w-5 h-5" />
                        </div>
                        <ArrowUpRight className="w-4 h-4 text-emerald-600 group-hover:translate-x-0.5 group-hover:-translate-y-0.5 transition-transform" />
                      </div>
                      <div>
                        <h4 className="text-sm font-black text-slate-900">Browse Full Diagnostic Catalog</h4>
                        <p className="text-xs text-slate-600 font-medium">Explore full body health checkups, blood tests, and MRI/CT services.</p>
                      </div>
                    </button>

                    <button
                      onClick={() => handleCTAAction('open_whatsapp')}
                      className="p-5 rounded-2xl bg-sky-50 hover:bg-sky-100 border border-sky-200/80 text-left transition-all group cursor-pointer space-y-2 sm:col-span-2"
                    >
                      <div className="flex items-center justify-between">
                        <div className="w-10 h-10 rounded-xl bg-sky-700 text-white flex items-center justify-center font-bold">
                          <MessageSquare className="w-5 h-5" />
                        </div>
                        <ArrowUpRight className="w-4 h-4 text-sky-600 group-hover:translate-x-0.5 group-hover:-translate-y-0.5 transition-transform" />
                      </div>
                      <div>
                        <h4 className="text-sm font-black text-slate-900">Chat with 24/7 Care Manager on WhatsApp</h4>
                        <p className="text-xs text-slate-600 font-medium">Get instant assistance for home blood collection, report delivery, or doctor consultation.</p>
                      </div>
                    </button>
                  </div>
                </div>
              )}

            </div>

          </div>

          {/* RIGHT SIDEBAR COLUMN (lg:col-span-4 - 34% width - Sticky on scroll) */}
          <div className="lg:col-span-4 space-y-6 lg:sticky lg:top-20">
            
            {/* A. AUTHENTICATED MEMBER PROFILE CARD */}
            <div className="bg-white rounded-3xl p-5 border border-slate-200 shadow-sm space-y-3">
              <div className="flex items-center gap-3">
                <div className="w-12 h-12 rounded-2xl bg-gradient-to-br from-purple-600 to-indigo-700 text-white font-black text-lg flex items-center justify-center shadow-inner shrink-0">
                  {displayName ? displayName.charAt(0).toUpperCase() : <User className="w-6 h-6 text-white" />}
                </div>
                <div className="space-y-0.5 overflow-hidden">
                  <h3 className="text-sm font-black text-slate-900 truncate">{displayName || 'Verified Member'}</h3>
                  <p className="text-xs font-mono text-slate-500 truncate">{displayPhone}</p>
                </div>
              </div>

              <div className="pt-3 border-t border-slate-100 flex items-center justify-between text-xs text-slate-500 font-medium">
                <span>Account Protection</span>
                <span className="text-emerald-700 font-extrabold flex items-center gap-1">
                  <CheckCircle2 className="w-3.5 h-3.5" /> SMS OTP Verified
                </span>
              </div>
            </div>

            {/* B. REAL SUMMARY STAT CARDS (Interactive 2x2 Grid inside Sidebar) */}
            <div className="space-y-3">
              <h4 className="text-xs font-extrabold text-slate-500 uppercase tracking-wider px-1">
                Account Summary
              </h4>

              <div className="grid grid-cols-2 gap-3">
                {/* Prescriptions Card */}
                <div 
                  onClick={() => handleCTAAction('filter_prescriptions')}
                  className="bg-white hover:bg-purple-50/50 rounded-2xl p-4 border border-slate-200 hover:border-purple-200 shadow-sm space-y-2 flex flex-col justify-between transition-all cursor-pointer group"
                >
                  <div className="flex items-center justify-between">
                    <span className="p-1.5 rounded-lg bg-purple-100 text-purple-700 group-hover:scale-105 transition-transform">
                      <FileText className="w-4 h-4" />
                    </span>
                    <span className="text-base font-black text-slate-900">{memberData.prescriptions.length}</span>
                  </div>
                  <div>
                    <div className="text-xs font-black text-slate-800">Prescriptions</div>
                    <div className="text-[10px] text-slate-500 font-medium">
                      {memberData.prescriptions.length > 0 ? `${memberData.prescriptions.length} Uploaded` : 'Click to Upload'}
                    </div>
                  </div>
                  <div className="w-full py-1 px-2 rounded-xl bg-purple-50 group-hover:bg-purple-700 group-hover:text-white text-purple-800 font-extrabold text-[10px] transition-colors text-center">
                    + Upload
                  </div>
                </div>

                {/* Orders Card */}
                <div 
                  onClick={() => handleCTAAction('filter_orders')}
                  className="bg-white hover:bg-emerald-50/50 rounded-2xl p-4 border border-slate-200 hover:border-emerald-200 shadow-sm space-y-2 flex flex-col justify-between transition-all cursor-pointer group"
                >
                  <div className="flex items-center justify-between">
                    <span className="p-1.5 rounded-lg bg-emerald-100 text-emerald-700 group-hover:scale-105 transition-transform">
                      <ShoppingBag className="w-4 h-4" />
                    </span>
                    <span className="text-base font-black text-slate-900">{memberData.orders.length}</span>
                  </div>
                  <div>
                    <div className="text-xs font-black text-slate-800">Orders</div>
                    <div className="text-[10px] text-slate-500 font-medium">
                      {memberData.orders.length > 0 ? `${memberData.orders.length} Placed` : 'Click to Browse'}
                    </div>
                  </div>
                  <div className="w-full py-1 px-2 rounded-xl bg-emerald-50 group-hover:bg-emerald-700 group-hover:text-white text-emerald-800 font-extrabold text-[10px] transition-colors text-center">
                    Browse
                  </div>
                </div>

                {/* Enquiries Card */}
                <div 
                  onClick={() => handleCTAAction('open_whatsapp')}
                  className="bg-white hover:bg-sky-50/50 rounded-2xl p-4 border border-slate-200 hover:border-sky-200 shadow-sm space-y-2 flex flex-col justify-between transition-all cursor-pointer group"
                >
                  <div className="flex items-center justify-between">
                    <span className="p-1.5 rounded-lg bg-sky-100 text-sky-700 group-hover:scale-105 transition-transform">
                      <MessageSquare className="w-4 h-4" />
                    </span>
                    <span className="text-base font-black text-slate-900">{memberData.enquiries.length}</span>
                  </div>
                  <div>
                    <div className="text-xs font-black text-slate-800">Enquiries</div>
                    <div className="text-[10px] text-slate-500 font-medium">
                      {memberData.enquiries.length > 0 ? `${memberData.enquiries.length} Active` : 'Click to Contact'}
                    </div>
                  </div>
                  <div className="w-full py-1 px-2 rounded-xl bg-sky-50 group-hover:bg-sky-700 group-hover:text-white text-sky-800 font-extrabold text-[10px] transition-colors text-center">
                    Contact
                  </div>
                </div>

                {/* Health Coins Card */}
                <div 
                  onClick={() => handleCTAAction('navigate_services')}
                  className="bg-white hover:bg-amber-50/50 rounded-2xl p-4 border border-slate-200 hover:border-amber-200 shadow-sm space-y-2 flex flex-col justify-between transition-all cursor-pointer group"
                >
                  <div className="flex items-center justify-between">
                    <span className="p-1.5 rounded-lg bg-amber-100 text-amber-800 group-hover:scale-105 transition-transform">
                      <Coins className="w-4 h-4 text-amber-600" />
                    </span>
                    <span className="text-base font-black text-amber-600">{memberData.walletCoins.toLocaleString('en-IN')}</span>
                  </div>
                  <div>
                    <div className="text-xs font-black text-slate-800">Health Coins</div>
                    <div className="text-[10px] text-slate-500 font-medium">
                      {memberData.walletCoins > 0 ? `≈ ₹${Math.floor(memberData.walletCoins / 10)}` : '0 Coins'}
                    </div>
                  </div>
                  <div className="w-full py-1 px-2 rounded-xl bg-amber-50 group-hover:bg-amber-700 group-hover:text-white text-amber-900 font-extrabold text-[10px] transition-colors text-center">
                    Redeem
                  </div>
                </div>
              </div>
            </div>

            {/* C. WHATSAPP CARE MANAGER SUPPORT WIDGET */}
            <div className="bg-gradient-to-br from-emerald-900 to-emerald-950 text-white rounded-3xl p-5 space-y-3 shadow-md border border-emerald-800/60">
              <div className="space-y-1">
                <span className="px-2.5 py-0.5 rounded-full bg-emerald-500/20 text-emerald-300 text-[10px] font-extrabold uppercase tracking-wider border border-emerald-400/30">
                  24/7 Priority Support
                </span>
                <h4 className="text-sm font-black text-white">Need Personal Care Assistance?</h4>
                <p className="text-[11px] text-emerald-200/90 leading-relaxed font-medium">
                  Connect with Health Express care managers on WhatsApp for home sample collection, prescription verification, and lab reports.
                </p>
              </div>

              <button
                onClick={() => handleCTAAction('open_whatsapp')}
                className="w-full py-3 px-4 bg-emerald-500 hover:bg-emerald-400 text-slate-950 font-black text-xs rounded-2xl transition-all shadow-sm cursor-pointer flex items-center justify-center gap-2"
              >
                <MessageSquare className="w-4 h-4" />
                <span>WhatsApp Care Team</span>
              </button>
            </div>

          </div>

        </div>

      </main>

    </div>
  );
}
