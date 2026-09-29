import React, { useState, useEffect } from 'react';
import { useNavigate } from 'react-router-dom';
import { 
  User, Phone, ShieldCheck, Calendar, FileText, ShoppingBag, 
  HelpCircle, LogOut, ArrowRight, Activity, PlusCircle, CheckCircle2,
  Clock, Coins, RefreshCw, MessageSquare
} from 'lucide-react';
import { useAuth } from '../context/AuthContext';
import { openWhatsApp, DEFAULT_MESSAGES } from '../utils/whatsapp';
import { supabase, isSupabaseConfigured } from '../lib/supabase';

export default function GenericDashboardPage() {
  const navigate = useNavigate();
  const { user, session, logout, isLoading: isAuthLoading } = useAuth();
  
  const [userActivity, setUserActivity] = useState([]);
  const [prescriptionsCount, setPrescriptionsCount] = useState(0);
  const [ordersCount, setOrdersCount] = useState(0);
  const [enquiriesCount, setEnquiriesCount] = useState(0);
  const [isLoadingStats, setIsLoadingStats] = useState(true);

  // Fetch real authenticated user stats from Supabase
  useEffect(() => {
    let isMounted = true;

    async function loadUserDashboardData() {
      if (!session?.user || !isSupabaseConfigured || !supabase) {
        if (isMounted) setIsLoadingStats(false);
        return;
      }

      try {
        const userId = session.user.id;

        // Fetch patient profile linked to auth.uid()
        const [patRes, ordRes, presRes, enqRes, evtRes] = await Promise.all([
          supabase.from('patients').select('id').eq('user_id', userId).maybeSingle(),
          supabase.from('orders').select('id', { count: 'exact' }).eq('user_id', userId),
          supabase.from('prescriptions').select('id', { count: 'exact' }).eq('user_id', userId),
          supabase.from('enquiries').select('id', { count: 'exact' }).filter('patient_id', 'in', `(select id from patients where user_id = '${userId}')`),
          supabase.from('analytics_events').select('*').eq('user_id', userId).order('created_at', { ascending: false }).limit(5)
        ]);

        if (isMounted) {
          setOrdersCount(ordRes.count || 0);
          setPrescriptionsCount(presRes.count || 0);
          setEnquiriesCount(enqRes.count || 0);
          setUserActivity(evtRes.data || []);
        }
      } catch (err) {
        console.warn('Dashboard data fetch warning:', err);
      } finally {
        if (isMounted) setIsLoadingStats(false);
      }
    }

    if (session?.user) {
      loadUserDashboardData();
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
      navigate('/auth');
    } catch (e) {
      console.error('Logout error:', e);
    }
  };

  const displayName = user?.name || session?.user?.user_metadata?.full_name || 'Health Express Member';
  const displayPhone = user?.phone || session?.user?.phone || 'Verified Mobile Number';
  const memberSinceDate = session?.user?.created_at 
    ? new Date(session.user.created_at).toLocaleDateString('en-IN', { month: 'short', year: 'numeric' })
    : '2026';

  if (isAuthLoading) {
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
    <div className="min-h-screen bg-slate-50 text-slate-900 py-10 px-4 sm:px-6 lg:px-8">
      <div className="max-w-5xl mx-auto space-y-8">
        
        {/* HEADER BRANDING & USER PROFILE BANNER */}
        <div className="bg-gradient-to-r from-purple-900 via-purple-800 to-indigo-900 rounded-3xl p-6 sm:p-8 text-white shadow-xl relative overflow-hidden">
          <div className="absolute top-0 right-0 w-64 h-64 bg-purple-500/10 rounded-full blur-3xl -mr-16 -mt-16 pointer-events-none" />
          
          <div className="flex flex-col sm:flex-row items-start sm:items-center justify-between gap-6 relative z-10">
            <div className="flex items-center gap-4">
              <div className="w-16 h-16 rounded-2xl bg-purple-700/80 border border-purple-500/30 flex items-center justify-center text-2xl font-black shadow-inner">
                {displayName.charAt(0).toUpperCase()}
              </div>
              
              <div className="space-y-1">
                <div className="flex items-center gap-2">
                  <span className="px-2.5 py-0.5 rounded-full bg-emerald-500/20 text-emerald-300 text-[11px] font-extrabold border border-emerald-400/30 flex items-center gap-1">
                    <CheckCircle2 className="w-3 h-3" />
                    <span>Verified Account</span>
                  </span>
                </div>
                <h1 className="text-2xl sm:text-3xl font-black tracking-tight text-white">
                  Welcome, {displayName} 👋
                </h1>
                <p className="text-xs text-purple-200 font-medium">
                  Health Express Personal Dashboard
                </p>
              </div>
            </div>

            <button
              onClick={handleLogout}
              className="px-4 py-2.5 rounded-2xl bg-white/10 hover:bg-white/20 text-white font-extrabold text-xs flex items-center gap-2 border border-white/20 transition-all cursor-pointer shadow-sm"
            >
              <LogOut className="w-4 h-4 text-purple-200" />
              <span>Logout</span>
            </button>
          </div>
        </div>

        {/* ACCOUNT INFORMATION SUMMARY */}
        <div className="grid grid-cols-1 sm:grid-cols-2 lg:grid-cols-4 gap-4">
          <div className="bg-white rounded-2xl p-5 border border-slate-200 shadow-sm space-y-1">
            <div className="flex items-center gap-2 text-xs font-bold text-slate-500">
              <Phone className="w-4 h-4 text-purple-600" />
              <span>MOBILE NUMBER</span>
            </div>
            <div className="text-base font-extrabold text-slate-900 font-mono">
              {displayPhone}
            </div>
            <div className="text-[11px] text-emerald-600 font-semibold flex items-center gap-1">
              <CheckCircle2 className="w-3 h-3" /> SMS OTP Verified
            </div>
          </div>

          <div className="bg-white rounded-2xl p-5 border border-slate-200 shadow-sm space-y-1">
            <div className="flex items-center gap-2 text-xs font-bold text-slate-500">
              <ShieldCheck className="w-4 h-4 text-emerald-600" />
              <span>ACCOUNT STATUS</span>
            </div>
            <div className="text-base font-extrabold text-emerald-700">
              Active & Protected
            </div>
            <div className="text-[11px] text-slate-500">
              Supabase Auth Session
            </div>
          </div>

          <div className="bg-white rounded-2xl p-5 border border-slate-200 shadow-sm space-y-1">
            <div className="flex items-center gap-2 text-xs font-bold text-slate-500">
              <Activity className="w-4 h-4 text-sky-600" />
              <span>AUTHENTICATION</span>
            </div>
            <div className="text-base font-extrabold text-slate-900">
              Phone OTP
            </div>
            <div className="text-[11px] text-slate-500">
              Fast2SMS Verified
            </div>
          </div>

          <div className="bg-white rounded-2xl p-5 border border-slate-200 shadow-sm space-y-1">
            <div className="flex items-center gap-2 text-xs font-bold text-slate-500">
              <Calendar className="w-4 h-4 text-amber-600" />
              <span>MEMBER SINCE</span>
            </div>
            <div className="text-base font-extrabold text-slate-900">
              {memberSinceDate}
            </div>
            <div className="text-[11px] text-slate-500">
              Registered Patient
            </div>
          </div>
        </div>

        {/* MY HEALTH ACTIVITY & QUICK ACTIONS */}
        <div className="space-y-4">
          <h2 className="text-lg font-black text-slate-900 tracking-tight flex items-center gap-2">
            <Activity className="w-5 h-5 text-purple-600" />
            <span>My Health Activity</span>
          </h2>

          <div className="grid grid-cols-1 md:grid-cols-2 lg:grid-cols-4 gap-4">
            
            {/* PRESCRIPTIONS CARD */}
            <div className="bg-white rounded-2xl p-5 border border-slate-200 shadow-sm space-y-3 flex flex-col justify-between">
              <div className="space-y-2">
                <div className="flex items-center justify-between">
                  <span className="p-2 rounded-xl bg-purple-100 text-purple-700 font-bold text-xs flex items-center gap-1.5">
                    <FileText className="w-4 h-4" />
                    <span>Prescriptions</span>
                  </span>
                  <span className="text-sm font-extrabold text-slate-900">{prescriptionsCount}</span>
                </div>
                <p className="text-xs text-slate-500">
                  {prescriptionsCount > 0 ? `${prescriptionsCount} prescription uploads on record` : 'No prescriptions uploaded yet.'}
                </p>
              </div>

              <button
                onClick={() => navigate('/services')}
                className="w-full py-2.5 px-3 rounded-xl bg-purple-50 hover:bg-purple-100 text-purple-800 font-extrabold text-xs flex items-center justify-center gap-1.5 transition-colors cursor-pointer"
              >
                <PlusCircle className="w-4 h-4" />
                <span>Upload Prescription</span>
              </button>
            </div>

            {/* ENQUIRIES CARD */}
            <div className="bg-white rounded-2xl p-5 border border-slate-200 shadow-sm space-y-3 flex flex-col justify-between">
              <div className="space-y-2">
                <div className="flex items-center justify-between">
                  <span className="p-2 rounded-xl bg-sky-100 text-sky-700 font-bold text-xs flex items-center gap-1.5">
                    <MessageSquare className="w-4 h-4" />
                    <span>My Enquiries</span>
                  </span>
                  <span className="text-sm font-extrabold text-slate-900">{enquiriesCount}</span>
                </div>
                <p className="text-xs text-slate-500">
                  {enquiriesCount > 0 ? `${enquiriesCount} active care enquiries` : 'No active enquiries.'}
                </p>
              </div>

              <button
                onClick={() => navigate('/contact')}
                className="w-full py-2.5 px-3 rounded-xl bg-sky-50 hover:bg-sky-100 text-sky-800 font-extrabold text-xs flex items-center justify-center gap-1.5 transition-colors cursor-pointer"
              >
                <span>Submit Enquiry</span>
                <ArrowRight className="w-3.5 h-3.5" />
              </button>
            </div>

            {/* ORDERS CARD */}
            <div className="bg-white rounded-2xl p-5 border border-slate-200 shadow-sm space-y-3 flex flex-col justify-between">
              <div className="space-y-2">
                <div className="flex items-center justify-between">
                  <span className="p-2 rounded-xl bg-emerald-100 text-emerald-700 font-bold text-xs flex items-center gap-1.5">
                    <ShoppingBag className="w-4 h-4" />
                    <span>My Orders</span>
                  </span>
                  <span className="text-sm font-extrabold text-slate-900">{ordersCount}</span>
                </div>
                <p className="text-xs text-slate-500">
                  {ordersCount > 0 ? `${ordersCount} diagnostic orders placed` : 'No orders yet.'}
                </p>
              </div>

              <button
                onClick={() => navigate('/services')}
                className="w-full py-2.5 px-3 rounded-xl bg-emerald-50 hover:bg-emerald-100 text-emerald-800 font-extrabold text-xs flex items-center justify-center gap-1.5 transition-colors cursor-pointer"
              >
                <span>Browse Services</span>
                <ArrowRight className="w-3.5 h-3.5" />
              </button>
            </div>

            {/* APPOINTMENTS CARD */}
            <div className="bg-white rounded-2xl p-5 border border-slate-200 shadow-sm space-y-3 flex flex-col justify-between">
              <div className="space-y-2">
                <div className="flex items-center justify-between">
                  <span className="p-2 rounded-xl bg-amber-100 text-amber-700 font-bold text-xs flex items-center gap-1.5">
                    <Clock className="w-4 h-4" />
                    <span>Appointments</span>
                  </span>
                  <span className="text-sm font-extrabold text-slate-900">0</span>
                </div>
                <p className="text-xs text-slate-500">
                  No upcoming home sample collections scheduled.
                </p>
              </div>

              <button
                onClick={() => openWhatsApp(DEFAULT_MESSAGES.appointment)}
                className="w-full py-2.5 px-3 rounded-xl bg-amber-50 hover:bg-amber-100 text-amber-900 font-extrabold text-xs flex items-center justify-center gap-1.5 transition-colors cursor-pointer"
              >
                <span>Book Appointment</span>
                <ArrowRight className="w-3.5 h-3.5" />
              </button>
            </div>

          </div>
        </div>

        {/* RECENT ACTIVITY LOG */}
        <div className="bg-white rounded-3xl p-6 border border-slate-200 shadow-sm space-y-4">
          <h3 className="text-base font-black text-slate-900 flex items-center gap-2">
            <Clock className="w-4 h-4 text-purple-600" />
            <span>Recent Activity</span>
          </h3>

          {userActivity.length === 0 ? (
            <div className="p-4 rounded-2xl bg-slate-50 border border-slate-200/80 text-xs text-slate-500 space-y-1">
              <p className="font-bold text-slate-800">✅ Authenticated successfully via SMS OTP</p>
              <p>Your Health Express Personal Account is active and secured with Supabase Auth.</p>
            </div>
          ) : (
            <div className="divide-y divide-slate-100 text-xs">
              {userActivity.map((evt, idx) => (
                <div key={idx} className="py-3 flex items-center justify-between">
                  <div className="font-bold text-slate-800">{evt.event_type}</div>
                  <div className="text-[11px] text-slate-400">
                    {evt.created_at ? new Date(evt.created_at).toLocaleString('en-IN', { dateStyle: 'short', timeStyle: 'short' }) : 'Just now'}
                  </div>
                </div>
              ))}
            </div>
          )}
        </div>

        {/* WHATSAPP CARE TEAM CTA */}
        <div className="bg-emerald-900/90 text-white rounded-3xl p-6 flex flex-col sm:flex-row items-center justify-between gap-4 shadow-lg">
          <div className="space-y-1 text-center sm:text-left">
            <h4 className="text-lg font-black">Need Assistance from Health Express?</h4>
            <p className="text-xs text-emerald-200 font-medium">
              Our care coordinators are available 24/7 on WhatsApp for diagnostic test assistance, prescription guidance, and home nursing bookings.
            </p>
          </div>

          <button
            onClick={() => openWhatsApp(DEFAULT_MESSAGES.general)}
            className="px-6 py-3 bg-emerald-500 hover:bg-emerald-400 text-slate-950 font-black text-xs rounded-2xl transition-all shadow-md shrink-0 cursor-pointer flex items-center gap-2"
          >
            <MessageSquare className="w-4 h-4" />
            <span>WhatsApp Support (+91 81234 14120)</span>
          </button>
        </div>

      </div>
    </div>
  );
}
