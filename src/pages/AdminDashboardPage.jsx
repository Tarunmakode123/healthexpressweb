import React, { useState, useEffect } from 'react';
import { 
  ShieldCheck, Lock, DollarSign, ShoppingBag, FileText, Users, 
  RefreshCw, CheckCircle2, AlertCircle, Clock, Search, Filter, 
  ExternalLink, Download, ChevronRight, Eye, Phone, Mail, MapPin, Truck, CreditCard, LogOut, Check, X,
  BarChart2, Activity, Calendar, ArrowUpRight, CheckSquare, Layers, UserCheck
} from 'lucide-react';
import { supabase, isSupabaseConfigured } from '../lib/supabase';
import { 
  verifyAdminAuth,
  fetchAdminOrders, 
  updateAdminOrderStatus, 
  markCodPaymentCollected,
  fetchAdminPrescriptions, 
  updateAdminEnquiryStatus, 
  fetchAdminPatients,
  getPrescriptionSignedUrl,
  fetchCustomerDetails,
  fetchAnalyticsEvents
} from '../services/adminService';
import { openWhatsApp } from '../utils/whatsapp';

export default function AdminDashboardPage() {
  const [isAuthenticated, setIsAuthenticated] = useState(false);
  const [isCheckingSession, setIsCheckingSession] = useState(true);

  const [adminEmail, setAdminEmail] = useState('');
  const [adminPassword, setAdminPassword] = useState('');
  const [authError, setAuthError] = useState('');
  const [isAuthenticating, setIsAuthenticating] = useState(false);

  // NAVIGATION TABS: 'dashboard' | 'orders' | 'customers' | 'prescriptions' | 'analytics' | 'events'
  const [activeTab, setActiveTab] = useState('dashboard');
  
  // FILTERS
  const [orderFilter, setOrderFilter] = useState('ALL'); // 'ALL' | 'COD' | 'ONLINE' | 'PAID' | 'PENDING' | 'FAILED' | 'COMPLETED' | 'CANCELLED'
  const [customerTypeFilter, setCustomerTypeFilter] = useState('ALL'); // 'ALL' | 'REGISTERED' | 'GUEST'
  const [dateRangeFilter, setDateRangeFilter] = useState('ALL'); // 'ALL' | 'TODAY' | 'YESTERDAY' | 'LAST_7' | 'LAST_30' | 'THIS_MONTH'

  const [orders, setOrders] = useState([]);
  const [prescriptions, setPrescriptions] = useState([]);
  const [patients, setPatients] = useState([]);
  const [analyticsEvents, setAnalyticsEvents] = useState([]);
  const [isLoading, setIsLoading] = useState(false);
  const [dataError, setDataError] = useState(null);
  const [searchQuery, setSearchQuery] = useState('');

  // Modals & Detail Drawers
  const [selectedOrder, setSelectedOrder] = useState(null);
  const [selectedPatientId, setSelectedPatientId] = useState(null);
  const [customer360Data, setCustomer360Data] = useState(null);
  const [isLoadingCustomer, setIsLoadingCustomer] = useState(false);

  // ROUTE PROTECTION: Check active Supabase Auth session and check_is_admin() RPC on mount
  useEffect(() => {
    let isMounted = true;

    async function checkCurrentSession() {
      if (!isSupabaseConfigured) {
        if (isMounted) {
          setIsAuthenticated(false);
          setAuthError('Supabase environment is not configured.');
          setIsCheckingSession(false);
        }
        return;
      }

      try {
        const { data: { session } } = await supabase.auth.getSession();
        if (session && session.user) {
          const { data: isAdmin } = await supabase.rpc('check_is_admin');

          if (isMounted) {
            if (isAdmin === true) {
              setIsAuthenticated(true);
            } else {
              setIsAuthenticated(false);
              setAuthError('You do not have permission to access the Health Express Admin Portal.');
              await supabase.auth.signOut();
            }
          }
        } else {
          if (isMounted) setIsAuthenticated(false);
        }
      } catch (err) {
        console.error('Session check error:', err);
        if (isMounted) setIsAuthenticated(false);
      } finally {
        if (isMounted) setIsCheckingSession(false);
      }
    }

    checkCurrentSession();

    const { data: authListener } = supabase.auth.onAuthStateChange(async (event) => {
      if (event === 'SIGNED_OUT') {
        setIsAuthenticated(false);
        setSelectedOrder(null);
        setSelectedPatientId(null);
      }
    });

    return () => {
      isMounted = false;
      authListener?.subscription?.unsubscribe();
    };
  }, []);

  // Handle Admin Login Form Submission
  const handleAdminLogin = async (e) => {
    e.preventDefault();
    setAuthError('');
    setIsAuthenticating(true);

    try {
      const res = await verifyAdminAuth(adminEmail, adminPassword);
      if (res.success) {
        setIsAuthenticated(true);
        setAuthError('');
      } else {
        setAuthError(res.error || 'Invalid email or password.');
      }
    } catch (err) {
      setAuthError(err.message || 'Authentication error.');
    } finally {
      setIsAuthenticating(false);
    }
  };

  // Handle Admin Logout
  const handleLogout = async () => {
    setIsAuthenticated(false);
    setSelectedOrder(null);
    setSelectedPatientId(null);
    if (isSupabaseConfigured) {
      try {
        await supabase.auth.signOut();
      } catch (e) {
        console.warn('Signout error:', e);
      }
    }
  };

  // Load Admin Data from Supabase
  const loadAdminData = async () => {
    setIsLoading(true);
    setDataError(null);

    try {
      const [ordRes, presRes, patRes, evtRes] = await Promise.all([
        fetchAdminOrders(),
        fetchAdminPrescriptions(),
        fetchAdminPatients(),
        fetchAnalyticsEvents(100)
      ]);

      const errors = [];
      if (ordRes.success) setOrders(ordRes.data || []);
      else errors.push(ordRes.error || 'Unable to fetch orders.');

      if (presRes.success) setPrescriptions(presRes.data || []);
      else errors.push(presRes.error || 'Unable to fetch guest prescriptions.');

      if (patRes.success) setPatients(patRes.data || []);
      else errors.push(patRes.error || 'Unable to fetch registered patients.');

      if (evtRes.success) setAnalyticsEvents(evtRes.data || []);

      if (errors.length > 0) {
        setDataError(errors.join(' | '));
      }
    } catch (err) {
      console.error('Failed to load admin data:', err);
      setDataError(err.message || 'Unable to load production telemetry data from database.');
    } finally {
      setIsLoading(false);
    }
  };

  useEffect(() => {
    if (isAuthenticated) {
      loadAdminData();
    }
  }, [isAuthenticated]);

  // Load 360 Customer Detail Modal
  const handleOpenCustomer360 = async (patientId) => {
    setSelectedPatientId(patientId);
    setIsLoadingCustomer(true);
    setCustomer360Data(null);

    try {
      const res = await fetchCustomerDetails(patientId);
      if (res.success) {
        setCustomer360Data(res.data);
      } else {
        alert(`Error loading customer profile: ${res.error}`);
      }
    } catch (err) {
      console.error('Customer 360 load exception:', err);
    } finally {
      setIsLoadingCustomer(false);
    }
  };

  // Mark COD Payment Collected Handler
  const handleMarkCodCollected = async (order) => {
    const confirmMsg = `Confirm that Cash on Delivery payment of ₹${order.total_amount} has been collected for Order ${order.order_code}?`;
    if (!window.confirm(confirmMsg)) return;

    const res = await markCodPaymentCollected(order.id);
    if (res.success) {
      await loadAdminData();
      if (selectedOrder && selectedOrder.id === order.id) {
        setSelectedOrder((prev) => ({
          ...prev,
          payment_status: 'PAID',
          order_status: 'CONFIRMED'
        }));
      }
    } else {
      alert(`Error updating COD payment: ${res.error}`);
    }
  };

  // Status Updaters
  const handleOrderStatusChange = async (orderId, newStatus) => {
    setOrders((prev) =>
      prev.map((o) => (o.id === orderId ? { ...o, order_status: newStatus } : o))
    );
    await updateAdminOrderStatus(orderId, newStatus);
  };

  const handleEnquiryStatusChange = async (enquiryId, newStatus) => {
    setPrescriptions((prev) =>
      prev.map((p) => (p.id === enquiryId ? { ...p, status: newStatus } : p))
    );
    await updateAdminEnquiryStatus(enquiryId, newStatus);
  };

  // Secure Prescription File View Handler
  const handleViewPrescriptionFile = async (fileObj) => {
    const filePath = fileObj?.file_path || fileObj?.filePath;
    if (!filePath) {
      alert('File path is unavailable for this prescription.');
      return;
    }

    try {
      const res = await getPrescriptionSignedUrl(filePath, 300);
      if (res.success && res.signedUrl) {
        window.open(res.signedUrl, '_blank', 'noopener,noreferrer');
      } else {
        alert(`Unable to open prescription file: ${res.error}`);
      }
    } catch (err) {
      console.error('Prescription file view exception:', err);
      alert(`Error accessing prescription file: ${err.message}`);
    }
  };

  // Helper for Date Filtering
  const isDateInFilter = (dateString, filter) => {
    if (filter === 'ALL') return true;
    if (!dateString) return false;

    const date = new Date(dateString);
    const now = new Date();
    const todayStart = new Date(now.getFullYear(), now.getMonth(), now.getDate());

    if (filter === 'TODAY') {
      return date >= todayStart;
    }
    if (filter === 'YESTERDAY') {
      const yestStart = new Date(todayStart);
      yestStart.setDate(yestStart.getDate() - 1);
      return date >= yestStart && date < todayStart;
    }
    if (filter === 'LAST_7') {
      const d7 = new Date(todayStart);
      d7.setDate(d7.getDate() - 7);
      return date >= d7;
    }
    if (filter === 'LAST_30') {
      const d30 = new Date(todayStart);
      d30.setDate(d30.getDate() - 30);
      return date >= d30;
    }
    if (filter === 'THIS_MONTH') {
      const mStart = new Date(now.getFullYear(), now.getMonth(), 1);
      return date >= mStart;
    }

    return true;
  };

  // Filtered Orders Dataset
  const dateFilteredOrders = orders.filter((o) => isDateInFilter(o.created_at, dateRangeFilter));

  const filteredOrders = dateFilteredOrders.filter((o) => {
    const payObj = o.payments?.[0] || {};
    const payMethod = (payObj.payment_method || o.payment_method || '').toUpperCase();
    const payMode = (payObj.payment_mode || o.payment_mode || '').toUpperCase();
    const isCod = payMethod === 'COD' || payMode === 'COD';

    if (orderFilter === 'COD' && !isCod) return false;
    if (orderFilter === 'ONLINE' && isCod) return false;
    if (orderFilter === 'PAID' && o.payment_status !== 'PAID') return false;
    if (orderFilter === 'PENDING' && o.payment_status !== 'PENDING') return false;
    if (orderFilter === 'FAILED' && o.payment_status !== 'FAILED') return false;
    if (orderFilter === 'COMPLETED' && o.order_status !== 'COMPLETED') return false;
    if (orderFilter === 'CANCELLED' && o.order_status !== 'CANCELLED') return false;

    if (searchQuery.trim()) {
      const q = searchQuery.toLowerCase();
      const matchName = o.customer_name?.toLowerCase().includes(q);
      const matchPhone = o.customer_phone?.toLowerCase().includes(q);
      const matchCode = o.order_code?.toLowerCase().includes(q);
      const matchEmail = o.customer_email?.toLowerCase().includes(q);
      const rzpId = o.payments?.[0]?.razorpay_payment_id || '';
      const matchRzp = rzpId.toLowerCase().includes(q);
      return matchName || matchPhone || matchCode || matchEmail || matchRzp;
    }

    return true;
  });

  // Filtered Prescriptions Dataset
  const filteredPrescriptions = prescriptions.filter((p) => {
    if (!isDateInFilter(p.created_at, dateRangeFilter)) return false;
    if (!searchQuery.trim()) return true;
    const q = searchQuery.toLowerCase();
    const name = p.patients?.full_name?.toLowerCase() || '';
    const phone = p.patients?.phone_e164?.toLowerCase() || '';
    const code = p.enquiry_code?.toLowerCase() || '';
    return name.includes(q) || phone.includes(q) || code.includes(q);
  });

  // Filtered Patients Dataset
  const filteredPatients = patients.filter((pat) => {
    if (customerTypeFilter === 'REGISTERED' && !pat.user_id) return false;
    if (customerTypeFilter === 'GUEST' && pat.user_id) return false;

    if (!searchQuery.trim()) return true;
    const q = searchQuery.toLowerCase();
    const name = pat.full_name?.toLowerCase() || '';
    const phone = pat.phone_e164?.toLowerCase() || '';
    const email = pat.email?.toLowerCase() || '';
    return name.includes(q) || phone.includes(q) || email.includes(q);
  });

  // FINANCIAL & OPERATIONAL KPI CALCULATIONS
  const totalRevenue = dateFilteredOrders
    .filter((o) => o.payment_status === 'PAID')
    .reduce((acc, o) => acc + Number(o.total_amount || 0), 0);

  const todayStart = new Date(new Date().setHours(0,0,0,0));
  const todayOrders = orders.filter((o) => new Date(o.created_at) >= todayStart);
  const todayRevenue = todayOrders
    .filter((o) => o.payment_status === 'PAID')
    .reduce((acc, o) => acc + Number(o.total_amount || 0), 0);

  const onlineRevenueCollected = dateFilteredOrders
    .filter((o) => {
      const payObj = o.payments?.[0] || {};
      const payMethod = (payObj.payment_method || o.payment_method || '').toUpperCase();
      return o.payment_status === 'PAID' && payMethod !== 'COD';
    })
    .reduce((acc, o) => acc + Number(o.total_amount || 0), 0);

  const codPendingCollection = dateFilteredOrders
    .filter((o) => {
      const payObj = o.payments?.[0] || {};
      const payMethod = (payObj.payment_method || o.payment_method || '').toUpperCase();
      const payMode = (payObj.payment_mode || o.payment_mode || '').toUpperCase();
      return (payMethod === 'COD' || payMode === 'COD') && o.payment_status === 'PENDING';
    })
    .reduce((acc, o) => acc + Number(o.total_amount || 0), 0);

  const codCollected = dateFilteredOrders
    .filter((o) => {
      const payObj = o.payments?.[0] || {};
      const payMethod = (payObj.payment_method || o.payment_method || '').toUpperCase();
      const payMode = (payObj.payment_mode || o.payment_mode || '').toUpperCase();
      return (payMethod === 'COD' || payMode === 'COD') && o.payment_status === 'PAID';
    })
    .reduce((acc, o) => acc + Number(o.total_amount || 0), 0);

  const failedAmount = dateFilteredOrders
    .filter((o) => o.payment_status === 'FAILED')
    .reduce((acc, o) => acc + Number(o.total_amount || 0), 0);

  const successfulPaymentsCount = dateFilteredOrders.filter((o) => o.payment_status === 'PAID').length;
  const pendingPaymentsCount = dateFilteredOrders.filter((o) => o.payment_status === 'PENDING').length;
  const failedPaymentsCount = dateFilteredOrders.filter((o) => o.payment_status === 'FAILED').length;
  const cancelledOrdersCount = dateFilteredOrders.filter((o) => o.order_status === 'CANCELLED').length;

  const registeredPatientsCount = patients.filter((p) => p.user_id).length;
  const guestEnquiriesCount = prescriptions.length;
  const pendingReviewsCount = prescriptions.filter((p) => p.status === 'pending_review').length;
  const totalPrescriptionFilesCount = prescriptions.reduce((acc, p) => acc + (p.prescriptions?.length || 0), 0);

  // SESSION CHECK SPINNER
  if (isCheckingSession) {
    return (
      <div className="min-h-[85vh] flex items-center justify-center p-4 bg-slate-900 text-purple-300">
        <div className="flex flex-col items-center gap-3">
          <RefreshCw className="w-8 h-8 animate-spin text-purple-500" />
          <span className="text-xs font-bold tracking-wide">Verifying Admin Session & RBAC...</span>
        </div>
      </div>
    );
  }

  // DEDICATED ADMIN LOGIN UI (UNAUTHENTICATED)
  if (!isAuthenticated) {
    return (
      <div className="min-h-[88vh] flex items-center justify-center p-4 bg-slate-900">
        <div className="w-full max-w-md bg-white rounded-3xl p-8 shadow-2xl space-y-6 text-left border border-purple-200 animate-in fade-in duration-200">
          <div className="text-center space-y-3">
            <div className="w-16 h-16 rounded-2xl bg-purple-100 border border-purple-200 flex items-center justify-center mx-auto p-2 overflow-hidden shadow-xs">
              <img src="/logo.png" alt="Health Express Logo" className="w-full h-full object-contain" />
            </div>
            <div>
              <h2 className="text-2xl font-black text-slate-900 tracking-tight">Team Admin Portal</h2>
              <p className="text-xs text-slate-500 font-medium mt-1">
                Secure access for Health Express operations team
              </p>
            </div>
          </div>

          {authError && (
            <div className="p-3.5 bg-rose-50 border border-rose-200 rounded-2xl text-xs text-rose-900 font-bold flex items-start gap-2.5 animate-in fade-in">
              <AlertCircle className="w-4 h-4 text-rose-600 shrink-0 mt-0.5" />
              <div className="flex-1">{authError}</div>
            </div>
          )}

          <form onSubmit={handleAdminLogin} className="space-y-4">
            <div>
              <label className="block text-xs font-extrabold text-slate-700 mb-1">Email Address *</label>
              <input
                type="email"
                required
                value={adminEmail}
                onChange={(e) => setAdminEmail(e.target.value)}
                placeholder="admin@healthexpress.in"
                className="w-full px-4 py-3 rounded-xl border border-slate-300 text-xs font-medium text-slate-900 focus:outline-none focus:ring-2 focus:ring-purple-600 bg-slate-50 focus:bg-white transition-colors"
              />
            </div>

            <div>
              <label className="block text-xs font-extrabold text-slate-700 mb-1">Password *</label>
              <input
                type="password"
                required
                value={adminPassword}
                onChange={(e) => setAdminPassword(e.target.value)}
                placeholder="••••••••••••"
                className="w-full px-4 py-3 rounded-xl border border-slate-300 text-xs font-medium text-slate-900 focus:outline-none focus:ring-2 focus:ring-purple-600 bg-slate-50 focus:bg-white transition-colors"
              />
            </div>

            <button
              type="submit"
              disabled={isAuthenticating}
              className="w-full py-4 rounded-2xl bg-purple-900 hover:bg-purple-950 disabled:opacity-50 text-white font-extrabold text-xs sm:text-sm shadow-lg shadow-purple-900/20 transition-all cursor-pointer flex items-center justify-center gap-2 active:scale-98"
            >
              {isAuthenticating ? (
                <span className="flex items-center gap-2">
                  <RefreshCw className="w-4 h-4 animate-spin" />
                  Verifying Authorization...
                </span>
              ) : (
                <span className="flex items-center gap-2">
                  <Lock className="w-4 h-4" />
                  <span>Sign In</span>
                </span>
              )}
            </button>
          </form>

          <div className="pt-2 border-t border-slate-100 text-center">
            <p className="text-[11px] text-slate-400 font-medium">
              Health Express Security System • Database RBAC Enforced
            </p>
          </div>
        </div>
      </div>
    );
  }

  // MAIN ADMIN OPERATIONS DASHBOARD UI (AUTHENTICATED)
  return (
    <div className="min-h-screen bg-slate-900 text-slate-100 py-8 px-4 sm:px-6 lg:px-8 text-left">
      <div className="max-w-7xl mx-auto space-y-8">
        
        {/* TELEMETRY HEADER & ACTIONS BAR */}
        <div className="flex flex-col md:flex-row md:items-center justify-between gap-4 bg-slate-800/80 p-6 rounded-3xl border border-slate-700/80 shadow-xl">
          <div className="flex items-center gap-4">
            <div className="w-12 h-12 rounded-2xl bg-purple-900/60 border border-purple-500/40 flex items-center justify-center text-purple-300 shrink-0">
              <ShieldCheck className="w-7 h-7" />
            </div>
            <div>
              <div className="flex items-center gap-2">
                <h1 className="text-2xl font-black text-white">Health Express Control Center</h1>
                <span className="px-2.5 py-0.5 rounded-full bg-emerald-500/20 border border-emerald-400/30 text-emerald-400 text-[10px] font-black uppercase tracking-wider">
                  LIVE OPERATIONS
                </span>
              </div>
              <p className="text-xs text-purple-300/80">Backend Operations, Financial Telemetry & Patient Management</p>
            </div>
          </div>

          <div className="flex flex-wrap items-center gap-3">
            {/* Global Date Filter */}
            <div className="flex items-center gap-1.5 bg-slate-900 px-3 py-2 rounded-xl border border-slate-700 text-xs font-bold text-slate-300">
              <Calendar className="w-3.5 h-3.5 text-purple-400" />
              <select
                value={dateRangeFilter}
                onChange={(e) => setDateRangeFilter(e.target.value)}
                className="bg-transparent focus:outline-none cursor-pointer text-white font-bold"
              >
                <option value="ALL" className="bg-slate-900 text-white">All Time</option>
                <option value="TODAY" className="bg-slate-900 text-white">Today</option>
                <option value="YESTERDAY" className="bg-slate-900 text-white">Yesterday</option>
                <option value="LAST_7" className="bg-slate-900 text-white">Last 7 Days</option>
                <option value="LAST_30" className="bg-slate-900 text-white">Last 30 Days</option>
                <option value="THIS_MONTH" className="bg-slate-900 text-white">This Month</option>
              </select>
            </div>

            <button
              onClick={loadAdminData}
              disabled={isLoading}
              className="px-4 py-2.5 rounded-xl bg-slate-800 hover:bg-slate-700 text-purple-200 border border-slate-700 text-xs font-bold flex items-center gap-2 cursor-pointer transition-colors"
            >
              <RefreshCw className={`w-3.5 h-3.5 ${isLoading ? 'animate-spin' : ''}`} />
              <span>Refresh Data</span>
            </button>

            <button
              onClick={handleLogout}
              className="px-4 py-2.5 rounded-xl bg-rose-950/80 hover:bg-rose-900 text-rose-200 border border-rose-800/60 text-xs font-bold flex items-center gap-2 cursor-pointer transition-colors"
            >
              <LogOut className="w-3.5 h-3.5" />
              <span>Logout</span>
            </button>
          </div>
        </div>

        {/* DATABASE ERROR CALLOUT BANNER */}
        {dataError && (
          <div className="p-4 bg-rose-950/80 border border-rose-800/80 rounded-2xl text-xs text-rose-200 font-bold flex items-center justify-between gap-4 animate-in fade-in">
            <div className="flex items-center gap-3">
              <AlertCircle className="w-5 h-5 text-rose-400 shrink-0" />
              <span>{dataError}</span>
            </div>
            <button
              onClick={loadAdminData}
              className="px-3 py-1.5 rounded-lg bg-rose-900 hover:bg-rose-800 text-white font-black text-xs cursor-pointer shrink-0 transition-colors"
            >
              Retry Connection
            </button>
          </div>
        )}

        {/* TOP OPERATIONAL KPI METRIC CARDS */}
        <div className="grid grid-cols-1 sm:grid-cols-2 lg:grid-cols-4 gap-4">
          <div className="bg-slate-800/90 border border-slate-700/80 rounded-3xl p-5 space-y-2">
            <div className="flex items-center justify-between text-xs text-emerald-400 font-bold">
              <span>TOTAL PAID REVENUE</span>
              <DollarSign className="w-4 h-4 text-emerald-400" />
            </div>
            <div className="text-3xl font-black text-emerald-300">₹{totalRevenue.toLocaleString('en-IN')}</div>
            <div className="text-[11px] text-slate-400 font-medium flex items-center gap-2">
              <span>Today: <strong className="text-emerald-400">₹{todayRevenue.toLocaleString('en-IN')}</strong></span>
            </div>
          </div>

          <div className="bg-slate-800/90 border border-slate-700/80 rounded-3xl p-5 space-y-2">
            <div className="flex items-center justify-between text-xs text-amber-400 font-bold">
              <span>COD PENDING COLLECTION</span>
              <Truck className="w-4 h-4 text-amber-400" />
            </div>
            <div className="text-3xl font-black text-amber-300">₹{codPendingCollection.toLocaleString('en-IN')}</div>
            <div className="text-[11px] text-slate-400 font-medium">
              Collected COD: <strong className="text-purple-300">₹{codCollected.toLocaleString('en-IN')}</strong>
            </div>
          </div>

          <div className="bg-slate-800/90 border border-slate-700/80 rounded-3xl p-5 space-y-2">
            <div className="flex items-center justify-between text-xs text-purple-300 font-bold">
              <span>TOTAL ORDERS</span>
              <ShoppingBag className="w-4 h-4 text-purple-400" />
            </div>
            <div className="text-3xl font-black text-white">{dateFilteredOrders.length}</div>
            <div className="text-[11px] text-slate-400 font-medium flex items-center justify-between">
              <span>Paid: {successfulPaymentsCount}</span>
              <span>Pending: {pendingPaymentsCount}</span>
              <span>Failed: {failedPaymentsCount}</span>
            </div>
          </div>

          <div className="bg-slate-800/90 border border-slate-700/80 rounded-3xl p-5 space-y-2">
            <div className="flex items-center justify-between text-xs text-indigo-400 font-bold">
              <span>GUEST ENQUIRIES & RX</span>
              <FileText className="w-4 h-4 text-indigo-400" />
            </div>
            <div className="text-3xl font-black text-white">{guestEnquiriesCount}</div>
            <div className="text-[11px] text-slate-400 font-medium flex items-center justify-between">
              <span>Pending Review: <strong className="text-amber-400">{pendingReviewsCount}</strong></span>
              <span>Files: {totalPrescriptionFilesCount}</span>
            </div>
          </div>
        </div>

        {/* PRIMARY NAVIGATION TABS */}
        <div className="flex flex-wrap items-center justify-between gap-4 bg-slate-800/60 p-2.5 rounded-2xl border border-slate-800">
          <div className="flex items-center gap-2 overflow-x-auto">
            <button
              onClick={() => setActiveTab('dashboard')}
              className={`px-4 py-2.5 rounded-xl text-xs font-extrabold transition-all cursor-pointer flex items-center gap-2 ${
                activeTab === 'dashboard'
                  ? 'bg-purple-700 text-white shadow-md'
                  : 'text-slate-400 hover:text-white hover:bg-slate-800'
              }`}
            >
              <Activity className="w-3.5 h-3.5" />
              <span>Dashboard Overview</span>
            </button>

            <button
              onClick={() => setActiveTab('orders')}
              className={`px-4 py-2.5 rounded-xl text-xs font-extrabold transition-all cursor-pointer flex items-center gap-2 ${
                activeTab === 'orders'
                  ? 'bg-purple-700 text-white shadow-md'
                  : 'text-slate-400 hover:text-white hover:bg-slate-800'
              }`}
            >
              <ShoppingBag className="w-3.5 h-3.5" />
              <span>Orders & Transactions ({dateFilteredOrders.length})</span>
            </button>

            <button
              onClick={() => setActiveTab('customers')}
              className={`px-4 py-2.5 rounded-xl text-xs font-extrabold transition-all cursor-pointer flex items-center gap-2 ${
                activeTab === 'customers'
                  ? 'bg-purple-700 text-white shadow-md'
                  : 'text-slate-400 hover:text-white hover:bg-slate-800'
              }`}
            >
              <Users className="w-3.5 h-3.5" />
              <span>Customers / Patients ({patients.length})</span>
            </button>

            <button
              onClick={() => setActiveTab('prescriptions')}
              className={`px-4 py-2.5 rounded-xl text-xs font-extrabold transition-all cursor-pointer flex items-center gap-2 ${
                activeTab === 'prescriptions'
                  ? 'bg-purple-700 text-white shadow-md'
                  : 'text-slate-400 hover:text-white hover:bg-slate-800'
              }`}
            >
              <FileText className="w-3.5 h-3.5" />
              <span>Guest Prescriptions ({prescriptions.length})</span>
            </button>

            <button
              onClick={() => setActiveTab('analytics')}
              className={`px-4 py-2.5 rounded-xl text-xs font-extrabold transition-all cursor-pointer flex items-center gap-2 ${
                activeTab === 'analytics'
                  ? 'bg-purple-700 text-white shadow-md'
                  : 'text-slate-400 hover:text-white hover:bg-slate-800'
              }`}
            >
              <BarChart2 className="w-3.5 h-3.5" />
              <span>Revenue Analytics</span>
            </button>
          </div>

          <div className="relative w-full sm:w-64">
            <Search className="w-3.5 h-3.5 text-slate-400 absolute left-3 top-3" />
            <input
              type="text"
              value={searchQuery}
              onChange={(e) => setSearchQuery(e.target.value)}
              placeholder="Search name, phone, order code..."
              className="w-full pl-9 pr-3 py-2 rounded-xl bg-slate-900 border border-slate-700 text-xs text-white placeholder:text-slate-500 focus:outline-none focus:ring-1 focus:ring-purple-500"
            />
          </div>
        </div>

        {/* TAB 1: OPERATIONAL DASHBOARD OVERVIEW */}
        {activeTab === 'dashboard' && (
          <div className="space-y-6">
            <div className="grid grid-cols-1 lg:grid-cols-3 gap-6">
              
              {/* Recent Orders Overview Card */}
              <div className="lg:col-span-2 bg-slate-800/90 border border-slate-700/80 rounded-3xl p-6 space-y-4 shadow-xl text-left">
                <div className="flex items-center justify-between border-b border-slate-700/80 pb-3">
                  <div className="flex items-center gap-2">
                    <ShoppingBag className="w-5 h-5 text-purple-400" />
                    <h3 className="text-base font-black text-white">Recent Orders & Transactions</h3>
                  </div>
                  <button onClick={() => setActiveTab('orders')} className="text-xs font-bold text-purple-400 hover:underline flex items-center gap-1">
                    <span>View All ({orders.length})</span>
                    <ChevronRight className="w-3.5 h-3.5" />
                  </button>
                </div>

                {dateFilteredOrders.length === 0 ? (
                  <p className="text-xs text-slate-400 py-8 text-center">No transactions recorded for selected period.</p>
                ) : (
                  <div className="space-y-3">
                    {dateFilteredOrders.slice(0, 5).map((ord) => {
                      const isCod = ord.payment_method === 'COD' || ord.payments?.[0]?.payment_method === 'COD';
                      return (
                        <div key={ord.id} className="p-3.5 bg-slate-900/60 rounded-2xl border border-slate-800 flex items-center justify-between hover:border-slate-700 transition-colors">
                          <div className="space-y-1">
                            <div className="flex items-center gap-2">
                              <span className="font-extrabold text-xs text-purple-300">{ord.order_code}</span>
                              <span className="text-xs font-bold text-white">{ord.customer_name}</span>
                              {isCod && <span className="px-1.5 py-0.5 rounded bg-amber-500/20 text-amber-300 border border-amber-500/30 text-[9px] font-black">COD</span>}
                            </div>
                            <div className="text-[11px] text-slate-400 font-medium">
                              {ord.customer_phone} • {new Date(ord.created_at).toLocaleString('en-IN', { dateStyle: 'short', timeStyle: 'short' })}
                            </div>
                          </div>
                          <div className="text-right space-y-1">
                            <div className="font-black text-sm text-white">₹{ord.total_amount}</div>
                            <span className={`px-2 py-0.5 rounded-full text-[9px] font-black uppercase ${
                              ord.payment_status === 'PAID' ? 'bg-emerald-500/20 text-emerald-300 border border-emerald-500/40' : 'bg-amber-500/20 text-amber-300 border border-amber-500/40'
                            }`}>
                              {ord.payment_status}
                            </span>
                          </div>
                        </div>
                      );
                    })}
                  </div>
                )}
              </div>

              {/* Pending Action Items Sidebar */}
              <div className="bg-slate-800/90 border border-slate-700/80 rounded-3xl p-6 space-y-4 shadow-xl text-left">
                <div className="flex items-center gap-2 border-b border-slate-700/80 pb-3">
                  <CheckSquare className="w-5 h-5 text-amber-400" />
                  <h3 className="text-base font-black text-white">Pending Operations Queue</h3>
                </div>

                <div className="space-y-4">
                  <div className="p-4 bg-slate-900/80 rounded-2xl border border-slate-700/60 space-y-2">
                    <div className="flex items-center justify-between text-xs text-amber-300 font-bold">
                      <span>COD Collection Pending</span>
                      <span className="px-2 py-0.5 bg-amber-500/20 text-amber-300 rounded-full text-[10px] font-extrabold">{orders.filter(o => o.payment_method === 'COD' && o.payment_status === 'PENDING').length} Orders</span>
                    </div>
                    <p className="text-[11px] text-slate-400">Total COD collection balance waiting to be marked collected upon home sample pickup.</p>
                    <button onClick={() => { setActiveTab('orders'); setOrderFilter('COD'); }} className="w-full py-2 bg-amber-500/20 hover:bg-amber-500/30 text-amber-300 font-extrabold text-xs rounded-xl transition-colors cursor-pointer">
                      Filter Pending COD Orders
                    </button>
                  </div>

                  <div className="p-4 bg-slate-900/80 rounded-2xl border border-slate-700/60 space-y-2">
                    <div className="flex items-center justify-between text-xs text-indigo-300 font-bold">
                      <span>Prescriptions Pending Review</span>
                      <span className="px-2 py-0.5 bg-indigo-500/20 text-indigo-300 rounded-full text-[10px] font-extrabold">{pendingReviewsCount} Uploads</span>
                    </div>
                    <p className="text-[11px] text-slate-400">Guest prescription uploads submitted by patients awaiting team price quotation & callback.</p>
                    <button onClick={() => setActiveTab('prescriptions')} className="w-full py-2 bg-indigo-500/20 hover:bg-indigo-500/30 text-indigo-300 font-extrabold text-xs rounded-xl transition-colors cursor-pointer">
                      Review Pending Prescriptions
                    </button>
                  </div>
                </div>
              </div>

            </div>
          </div>
        )}

        {/* TAB 2: ORDERS & TRANSACTIONS TABLE */}
        {activeTab === 'orders' && (
          <div className="space-y-4">
            <div className="flex flex-wrap items-center gap-2 text-xs font-bold">
              <span className="text-slate-400 flex items-center gap-1 text-[11px] mr-1">
                <Filter className="w-3 h-3" /> Filter:
              </span>
              {['ALL', 'COD', 'ONLINE', 'PAID', 'PENDING', 'FAILED', 'COMPLETED', 'CANCELLED'].map((chip) => (
                <button
                  key={chip}
                  onClick={() => setOrderFilter(chip)}
                  className={`px-3 py-1.5 rounded-lg border transition-all cursor-pointer text-[11px] ${
                    orderFilter === chip
                      ? 'bg-purple-600 border-purple-500 text-white font-black'
                      : 'bg-slate-800 border-slate-700 text-slate-300 hover:bg-slate-700'
                  }`}
                >
                  {chip}
                </button>
              ))}
            </div>

            <div className="bg-slate-800/90 border border-slate-700/80 rounded-3xl overflow-hidden shadow-xl">
              <div className="overflow-x-auto">
                <table className="w-full text-left text-xs">
                  <thead className="bg-slate-900/90 text-purple-300 font-extrabold border-b border-slate-700 text-[11px] uppercase tracking-wider">
                    <tr>
                      <th className="p-4">Order Code</th>
                      <th className="p-4">Customer</th>
                      <th className="p-4">Items Purchased</th>
                      <th className="p-4">Amount</th>
                      <th className="p-4">Method</th>
                      <th className="p-4">Payment Status</th>
                      <th className="p-4">Order Status</th>
                      <th className="p-4">Actions</th>
                    </tr>
                  </thead>
                  <tbody className="divide-y divide-slate-700/60 text-slate-200">
                    {filteredOrders.length === 0 ? (
                      <tr>
                        <td colSpan={8} className="p-8 text-center text-slate-400 font-medium">
                          {orders.length === 0 ? 'No orders yet.' : 'No transaction records found matching filter criteria.'}
                        </td>
                      </tr>
                    ) : (
                      filteredOrders.map((ord) => {
                        const payObj = ord.payments?.[0] || {};
                        const payMethod = (payObj.payment_method || ord.payment_method || 'ONLINE').toUpperCase();
                        const payMode = (payObj.payment_mode || ord.payment_mode || 'LIVE').toUpperCase();
                        const isCod = payMethod === 'COD' || payMode === 'COD';

                        return (
                          <tr key={ord.id} className="hover:bg-slate-700/30 transition-colors">
                            <td className="p-4 font-black text-purple-300 whitespace-nowrap cursor-pointer" onClick={() => setSelectedOrder(ord)}>
                              <div className="hover:underline flex items-center gap-1">
                                <span>{ord.order_code}</span>
                                <Eye className="w-3 h-3 text-purple-400" />
                              </div>
                              <div className="text-[10px] text-slate-400 font-normal">
                                {new Date(ord.created_at).toLocaleString('en-IN', { dateStyle: 'short', timeStyle: 'short' })}
                              </div>
                            </td>

                            <td className="p-4 cursor-pointer" onClick={() => handleOpenCustomer360(ord.patient_id)}>
                              <div className="font-extrabold text-white hover:text-purple-300 flex items-center gap-1">
                                <span>{ord.customer_name}</span>
                                <ChevronRight className="w-3 h-3 text-slate-400" />
                              </div>
                              <div className="text-[11px] text-slate-300 font-semibold">{ord.customer_phone}</div>
                            </td>

                            <td className="p-4 max-w-xs cursor-pointer" onClick={() => setSelectedOrder(ord)}>
                              <div className="space-y-1">
                                {Array.isArray(ord.items) && ord.items.map((it, idx) => (
                                  <div key={idx} className="text-[11px] text-slate-300 truncate">
                                    • {it.name} <span className="text-purple-300 font-bold">({it.quantity}x)</span>
                                  </div>
                                ))}
                              </div>
                            </td>

                            <td className="p-4 font-black text-white text-sm whitespace-nowrap">
                              ₹{ord.total_amount}
                            </td>

                            <td className="p-4 whitespace-nowrap">
                              {isCod ? (
                                <span className="px-2 py-0.5 rounded bg-amber-500/20 text-amber-300 border border-amber-500/30 text-[10px] font-extrabold flex items-center gap-1">
                                  <Truck className="w-3 h-3" /> COD
                                </span>
                              ) : (
                                <span className="px-2 py-0.5 rounded bg-purple-500/20 text-purple-300 border border-purple-500/30 text-[10px] font-extrabold flex items-center gap-1">
                                  <CreditCard className="w-3 h-3" /> ONLINE ({payMode})
                                </span>
                              )}
                            </td>

                            <td className="p-4 whitespace-nowrap">
                              <span className={`px-2.5 py-1 rounded-full text-[10px] font-black tracking-wide ${
                                ord.payment_status === 'PAID'
                                  ? 'bg-emerald-500/20 text-emerald-300 border border-emerald-500/40'
                                  : ord.payment_status === 'FAILED'
                                  ? 'bg-rose-500/20 text-rose-300 border border-rose-500/40'
                                  : 'bg-amber-500/20 text-amber-300 border border-amber-500/40'
                              }`}>
                                {ord.payment_status}
                              </span>
                            </td>

                            <td className="p-4 whitespace-nowrap">
                              <select
                                value={ord.order_status}
                                onChange={(e) => handleOrderStatusChange(ord.id, e.target.value)}
                                className="bg-slate-900 border border-slate-700 text-xs rounded-lg px-2 py-1 text-slate-200 font-bold focus:outline-none focus:ring-1 focus:ring-purple-500 cursor-pointer"
                              >
                                <option value="PENDING">PENDING</option>
                                <option value="CONFIRMED">CONFIRMED</option>
                                <option value="COMPLETED">COMPLETED</option>
                                <option value="CANCELLED">CANCELLED</option>
                              </select>
                            </td>

                            <td className="p-4 whitespace-nowrap space-x-2">
                              {isCod && ord.payment_status === 'PENDING' && (
                                <button
                                  onClick={() => handleMarkCodCollected(ord)}
                                  className="px-3 py-1.5 rounded-lg bg-amber-600 hover:bg-amber-700 text-slate-950 font-black text-[11px] cursor-pointer transition-colors shadow-xs"
                                >
                                  Mark COD Collected
                                </button>
                              )}

                              <button
                                onClick={() => setSelectedOrder(ord)}
                                className="px-2.5 py-1.5 rounded-lg bg-slate-700 hover:bg-slate-600 text-slate-200 font-bold text-[11px] cursor-pointer transition-colors"
                              >
                                View Details
                              </button>
                            </td>
                          </tr>
                        );
                      })
                    )}
                  </tbody>
                </table>
              </div>
            </div>
          </div>
        )}

        {/* TAB 3: CUSTOMERS & PATIENTS DIRECTORY */}
        {activeTab === 'customers' && (
          <div className="space-y-4">
            <div className="flex flex-wrap items-center gap-2 text-xs font-bold">
              <span className="text-slate-400 flex items-center gap-1 text-[11px] mr-1">
                <Filter className="w-3 h-3" /> Account Type:
              </span>
              {['ALL', 'REGISTERED', 'GUEST'].map((type) => (
                <button
                  key={type}
                  onClick={() => setCustomerTypeFilter(type)}
                  className={`px-3 py-1.5 rounded-lg border transition-all cursor-pointer text-[11px] ${
                    customerTypeFilter === type
                      ? 'bg-purple-600 border-purple-500 text-white font-black'
                      : 'bg-slate-800 border-slate-700 text-slate-300 hover:bg-slate-700'
                  }`}
                >
                  {type === 'ALL' ? 'All Customers' : type === 'REGISTERED' ? 'Registered Accounts' : 'Guest Profiles'}
                </button>
              ))}
            </div>

            <div className="bg-slate-800/90 border border-slate-700/80 rounded-3xl overflow-hidden shadow-xl">
              <div className="overflow-x-auto">
                <table className="w-full text-left text-xs">
                  <thead className="bg-slate-900/90 text-purple-300 font-extrabold border-b border-slate-700 text-[11px] uppercase tracking-wider">
                    <tr>
                      <th className="p-4">Customer Name</th>
                      <th className="p-4">Phone Number</th>
                      <th className="p-4">Email Address</th>
                      <th className="p-4">City</th>
                      <th className="p-4">User Type</th>
                      <th className="p-4">Created Date</th>
                      <th className="p-4">Actions</th>
                    </tr>
                  </thead>
                  <tbody className="divide-y divide-slate-700/60 text-slate-200">
                    {filteredPatients.length === 0 ? (
                      <tr>
                        <td colSpan={7} className="p-8 text-center text-slate-400 font-medium">
                          {patients.length === 0 ? 'No registered patients yet.' : 'No registered patients found matching search query.'}
                        </td>
                      </tr>
                    ) : (
                      filteredPatients.map((pat) => (
                        <tr key={pat.id} className="hover:bg-slate-700/30 transition-colors">
                          <td className="p-4 font-extrabold text-white cursor-pointer" onClick={() => handleOpenCustomer360(pat.id)}>
                            <div className="hover:text-purple-300 flex items-center gap-1">
                              <span>{pat.full_name}</span>
                              <ChevronRight className="w-3 h-3 text-slate-400" />
                            </div>
                          </td>
                          <td className="p-4 font-bold text-slate-200">{pat.phone_e164}</td>
                          <td className="p-4 text-slate-300">{pat.email || '—'}</td>
                          <td className="p-4 text-slate-300">{pat.city || 'Bengaluru'}</td>
                          <td className="p-4">
                            <span className={`px-2 py-0.5 rounded text-[10px] font-bold ${pat.user_id ? 'bg-emerald-500/20 text-emerald-300 border border-emerald-500/30' : 'bg-slate-700 text-slate-300'}`}>
                              {pat.user_id ? 'REGISTERED USER' : 'GUEST PROFILE'}
                            </span>
                          </td>
                          <td className="p-4 text-slate-400 text-[11px]">
                            {new Date(pat.created_at).toLocaleDateString('en-IN', { dateStyle: 'medium' })}
                          </td>
                          <td className="p-4">
                            <button
                              onClick={() => handleOpenCustomer360(pat.id)}
                              className="px-3 py-1.5 rounded-lg bg-purple-900/60 hover:bg-purple-800 text-purple-200 border border-purple-700/60 font-bold text-[11px] cursor-pointer transition-colors"
                            >
                              Customer 360° Profile
                            </button>
                          </td>
                        </tr>
                      ))
                    )}
                  </tbody>
                </table>
              </div>
            </div>
          </div>
        )}

        {/* TAB 4: GUEST PRESCRIPTIONS & ENQUIRIES TABLE */}
        {activeTab === 'prescriptions' && (
          <div className="bg-slate-800/90 border border-slate-700/80 rounded-3xl overflow-hidden shadow-xl">
            <div className="overflow-x-auto">
              <table className="w-full text-left text-xs">
                <thead className="bg-slate-900/90 text-purple-300 font-extrabold border-b border-slate-700 text-[11px] uppercase tracking-wider">
                  <tr>
                    <th className="p-4">Enquiry Code</th>
                    <th className="p-4">Patient Info</th>
                    <th className="p-4">Notes / Requirement</th>
                    <th className="p-4">Uploaded Files</th>
                    <th className="p-4">Review Status</th>
                    <th className="p-4">Action</th>
                  </tr>
                </thead>
                <tbody className="divide-y divide-slate-700/60 text-slate-200">
                  {filteredPrescriptions.length === 0 ? (
                    <tr>
                      <td colSpan={6} className="p-8 text-center text-slate-400 font-medium">
                        {prescriptions.length === 0 ? 'No prescriptions yet.' : 'No guest prescriptions found matching search query.'}
                      </td>
                    </tr>
                  ) : (
                    filteredPrescriptions.map((enq) => {
                      const pat = enq.patients || {};
                      const files = enq.prescriptions || [];

                      return (
                        <tr key={enq.id} className="hover:bg-slate-700/30 transition-colors">
                          <td className="p-4 font-black text-amber-300 whitespace-nowrap">
                            <div>{enq.enquiry_code}</div>
                            <div className="text-[10px] text-slate-400 font-normal">
                              {new Date(enq.created_at).toLocaleString('en-IN', { dateStyle: 'short', timeStyle: 'short' })}
                            </div>
                          </td>

                          <td className="p-4">
                            <div className="font-extrabold text-white">{pat.full_name || 'Guest Patient'}</div>
                            <div className="text-[11px] text-slate-300 font-semibold">{pat.phone_e164}</div>
                            {pat.city && <div className="text-[10px] text-slate-400">{pat.city}</div>}
                          </td>

                          <td className="p-4 max-w-xs">
                            <p className="text-slate-300 italic text-[11px]">
                              {enq.notes || 'No notes provided by patient.'}
                            </p>
                          </td>

                          <td className="p-4">
                            <div className="space-y-1">
                              {files.length === 0 ? (
                                <span className="text-slate-500 italic text-[11px]">No file attached</span>
                              ) : (
                                files.map((f, idx) => (
                                  <div key={idx} className="flex items-center gap-1.5 text-xs text-purple-300 font-bold">
                                    <FileText className="w-3.5 h-3.5 text-purple-400 shrink-0" />
                                    <span className="truncate max-w-[140px]">{f.file_name}</span>
                                    <button
                                      onClick={() => handleViewPrescriptionFile(f)}
                                      className="p-1 text-purple-300 hover:text-purple-100 cursor-pointer flex items-center gap-1 bg-purple-900/40 hover:bg-purple-800/60 px-1.5 py-0.5 rounded transition-colors"
                                      title="View / Download Secure File"
                                    >
                                      <Download className="w-3.5 h-3.5" />
                                      <span className="text-[10px]">Open</span>
                                    </button>
                                  </div>
                                ))
                              )}
                            </div>
                          </td>

                          <td className="p-4 whitespace-nowrap">
                            <select
                              value={enq.status}
                              onChange={(e) => handleEnquiryStatusChange(enq.id, e.target.value)}
                              className="bg-slate-900 border border-slate-700 text-xs rounded-lg px-2 py-1 text-amber-300 font-bold focus:outline-none focus:ring-1 focus:ring-amber-500 cursor-pointer uppercase"
                            >
                              <option value="pending_review">PENDING REVIEW</option>
                              <option value="contacted">CONTACTED</option>
                              <option value="completed">COMPLETED</option>
                            </select>
                          </td>

                          <td className="p-4 whitespace-nowrap">
                            <button
                              onClick={() => {
                                const msg = `Namaste ${pat.full_name || 'Patient'}! Health Express team received your prescription upload (Ref: ${enq.enquiry_code}). We are ready to assist with your lab tests/medicines.`;
                                openWhatsApp(msg);
                              }}
                              className="px-3 py-1.5 rounded-lg bg-emerald-600 hover:bg-emerald-700 text-white font-bold text-[11px] flex items-center gap-1 cursor-pointer transition-colors"
                            >
                              <span>Contact Patient</span>
                            </button>
                          </td>
                        </tr>
                      );
                    })
                  )}
                </tbody>
              </table>
            </div>
          </div>
        )}

        {/* TAB 5: REVENUE ANALYTICS VIEW */}
        {activeTab === 'analytics' && (
          <div className="space-y-6">
            <div className="bg-slate-800/90 border border-slate-700/80 rounded-3xl p-6 text-left space-y-6 shadow-xl">
              <div className="flex flex-col sm:flex-row sm:items-center justify-between gap-4 border-b border-slate-700/80 pb-4">
                <div>
                  <h3 className="text-lg font-black text-white flex items-center gap-2">
                    <BarChart2 className="w-5 h-5 text-purple-400" />
                    <span>Revenue & Payment Method Breakdown</span>
                  </h3>
                  <p className="text-xs text-slate-400">Calculated telemetry for period: <strong className="text-purple-300">{dateRangeFilter}</strong></p>
                </div>
              </div>

              {/* Progress bars / Telemetry distribution */}
              <div className="grid grid-cols-1 md:grid-cols-2 gap-6">
                <div className="bg-slate-900/80 p-5 rounded-2xl border border-slate-700/60 space-y-4">
                  <h4 className="text-xs font-black uppercase text-purple-300 tracking-wider">Revenue Distribution</h4>
                  
                  <div className="space-y-3">
                    <div>
                      <div className="flex justify-between text-xs font-bold mb-1">
                        <span className="text-slate-300">Online Paid Revenue</span>
                        <span className="text-emerald-300">₹{onlineRevenueCollected.toLocaleString('en-IN')}</span>
                      </div>
                      <div className="w-full h-3 bg-slate-800 rounded-full overflow-hidden">
                        <div 
                          className="h-full bg-emerald-500" 
                          style={{ width: `${totalRevenue > 0 ? (onlineRevenueCollected / totalRevenue) * 100 : 0}%` }}
                        />
                      </div>
                    </div>

                    <div>
                      <div className="flex justify-between text-xs font-bold mb-1">
                        <span className="text-slate-300">COD Collected Revenue</span>
                        <span className="text-purple-300">₹{codCollected.toLocaleString('en-IN')}</span>
                      </div>
                      <div className="w-full h-3 bg-slate-800 rounded-full overflow-hidden">
                        <div 
                          className="h-full bg-purple-500" 
                          style={{ width: `${totalRevenue > 0 ? (codCollected / totalRevenue) * 100 : 0}%` }}
                        />
                      </div>
                    </div>

                    <div>
                      <div className="flex justify-between text-xs font-bold mb-1">
                        <span className="text-slate-300">COD Pending Collection</span>
                        <span className="text-amber-300">₹{codPendingCollection.toLocaleString('en-IN')}</span>
                      </div>
                      <div className="w-full h-3 bg-slate-800 rounded-full overflow-hidden">
                        <div 
                          className="h-full bg-amber-500" 
                          style={{ width: `${(codPendingCollection / (totalRevenue + codPendingCollection || 1)) * 100}%` }}
                        />
                      </div>
                    </div>
                  </div>
                </div>

                <div className="bg-slate-900/80 p-5 rounded-2xl border border-slate-700/60 space-y-4">
                  <h4 className="text-xs font-black uppercase text-purple-300 tracking-wider">Order Status Volume</h4>
                  <div className="grid grid-cols-2 gap-3 text-center">
                    <div className="bg-slate-800 p-3 rounded-xl border border-slate-700">
                      <div className="text-xl font-black text-emerald-400">{successfulPaymentsCount}</div>
                      <div className="text-[10px] text-slate-400 font-bold uppercase mt-1">Paid / Successful</div>
                    </div>
                    <div className="bg-slate-800 p-3 rounded-xl border border-slate-700">
                      <div className="text-xl font-black text-amber-400">{pendingPaymentsCount}</div>
                      <div className="text-[10px] text-slate-400 font-bold uppercase mt-1">Pending</div>
                    </div>
                    <div className="bg-slate-800 p-3 rounded-xl border border-slate-700">
                      <div className="text-xl font-black text-rose-400">{failedPaymentsCount}</div>
                      <div className="text-[10px] text-slate-400 font-bold uppercase mt-1">Failed Payments</div>
                    </div>
                    <div className="bg-slate-800 p-3 rounded-xl border border-slate-700">
                      <div className="text-xl font-black text-slate-300">{cancelledOrdersCount}</div>
                      <div className="text-[10px] text-slate-400 font-bold uppercase mt-1">Cancelled</div>
                    </div>
                  </div>
                </div>
              </div>
            </div>
          </div>
        )}

      </div>

      {/* ORDER DETAILS MODAL DRAWER */}
      {selectedOrder && (
        <div className="fixed inset-0 z-[100000] flex items-center justify-center p-4 bg-slate-950/80 backdrop-blur-xs animate-in fade-in duration-200">
          <div className="w-full max-w-2xl bg-slate-900 border border-purple-500/40 rounded-3xl shadow-2xl overflow-hidden text-left space-y-0">
            <div className="p-5 bg-gradient-to-r from-purple-950 to-slate-900 border-b border-purple-800/40 flex items-center justify-between text-white">
              <div className="flex items-center gap-3">
                <ShoppingBag className="w-6 h-6 text-purple-400" />
                <div>
                  <h3 className="text-lg font-black text-white">Order Details — {selectedOrder.order_code}</h3>
                  <p className="text-xs text-purple-300 font-medium">Created on {new Date(selectedOrder.created_at).toLocaleString('en-IN')}</p>
                </div>
              </div>
              <button onClick={() => setSelectedOrder(null)} className="p-1 text-slate-400 hover:text-white rounded-lg cursor-pointer">
                <X className="w-5 h-5" />
              </button>
            </div>

            <div className="p-6 space-y-6 max-h-[80vh] overflow-y-auto text-xs text-slate-200">
              <div className="grid grid-cols-2 gap-4 bg-slate-800/80 p-4 rounded-2xl border border-slate-700">
                <div>
                  <div className="text-slate-400 font-bold text-[10px] uppercase">Customer Name</div>
                  <div className="font-extrabold text-white text-sm mt-0.5">{selectedOrder.customer_name}</div>
                  <div className="text-slate-300 mt-1">{selectedOrder.customer_phone}</div>
                  {selectedOrder.customer_email && <div className="text-slate-400 text-[11px]">{selectedOrder.customer_email}</div>}
                </div>
                <div>
                  <div className="text-slate-400 font-bold text-[10px] uppercase">Payment & Method</div>
                  <div className="font-black text-emerald-400 text-sm mt-0.5">₹{selectedOrder.total_amount}</div>
                  <div className="text-amber-300 font-bold mt-1 uppercase text-[11px]">Method: {selectedOrder.payment_method || selectedOrder.payments?.[0]?.payment_method || 'ONLINE'}</div>
                  <div className="text-slate-400 text-[10px]">Payment Status: <strong className="text-white">{selectedOrder.payment_status}</strong></div>
                </div>
              </div>

              <div>
                <h4 className="font-black text-white uppercase text-xs tracking-wider mb-2">Purchased Items Breakdown</h4>
                <div className="bg-slate-800/80 rounded-2xl border border-slate-700 overflow-hidden divide-y divide-slate-700">
                  {Array.isArray(selectedOrder.items) && selectedOrder.items.map((it, idx) => (
                    <div key={idx} className="p-3 flex items-center justify-between">
                      <div>
                        <div className="font-bold text-white">{it.name}</div>
                        <div className="text-[10px] text-slate-400">Qty: {it.quantity} • Unit Price: ₹{it.unit_price}</div>
                      </div>
                      <div className="font-black text-purple-300">₹{it.total_price || it.unit_price * it.quantity}</div>
                    </div>
                  ))}
                </div>
              </div>

              {selectedOrder.payments?.[0] && (
                <div>
                  <h4 className="font-black text-white uppercase text-xs tracking-wider mb-2">Razorpay Gateway Metadata</h4>
                  <div className="bg-slate-950 p-3 rounded-xl border border-slate-800 font-mono text-[11px] text-purple-300 space-y-1">
                    <div>Razorpay Order ID: {selectedOrder.payments[0].razorpay_order_id}</div>
                    {selectedOrder.payments[0].razorpay_payment_id && <div>Razorpay Payment ID: {selectedOrder.payments[0].razorpay_payment_id}</div>}
                    <div>Mode: {selectedOrder.payments[0].payment_mode}</div>
                  </div>
                </div>
              )}
            </div>

            <div className="p-4 bg-slate-950 border-t border-slate-800 flex justify-between items-center">
              <button
                onClick={() => handleOpenCustomer360(selectedOrder.patient_id)}
                className="px-4 py-2 bg-purple-900 hover:bg-purple-800 text-white font-bold text-xs rounded-xl transition-colors cursor-pointer"
              >
                View Customer 360° Profile
              </button>
              <button
                onClick={() => setSelectedOrder(null)}
                className="px-4 py-2 bg-slate-800 hover:bg-slate-700 text-slate-200 font-bold text-xs rounded-xl transition-colors cursor-pointer"
              >
                Close
              </button>
            </div>
          </div>
        </div>
      )}

      {/* CUSTOMER 360° PROFILE MODAL DRAWER */}
      {selectedPatientId && (
        <div className="fixed inset-0 z-[100000] flex items-center justify-center p-4 bg-slate-950/80 backdrop-blur-xs animate-in fade-in duration-200">
          <div className="w-full max-w-3xl bg-slate-900 border border-purple-500/40 rounded-3xl shadow-2xl overflow-hidden text-left space-y-0">
            <div className="p-5 bg-gradient-to-r from-purple-950 to-slate-900 border-b border-purple-800/40 flex items-center justify-between text-white">
              <div className="flex items-center gap-3">
                <Users className="w-6 h-6 text-purple-400" />
                <div>
                  <h3 className="text-lg font-black text-white">Customer 360° Profile</h3>
                  <p className="text-xs text-purple-300 font-medium">Complete Patient History & Activity Telemetry</p>
                </div>
              </div>
              <button onClick={() => { setSelectedPatientId(null); setCustomer360Data(null); }} className="p-1 text-slate-400 hover:text-white rounded-lg cursor-pointer">
                <X className="w-5 h-5" />
              </button>
            </div>

            <div className="p-6 space-y-6 max-h-[80vh] overflow-y-auto text-xs text-slate-200">
              {isLoadingCustomer ? (
                <div className="py-12 flex flex-col items-center justify-center gap-3">
                  <RefreshCw className="w-7 h-7 animate-spin text-purple-500" />
                  <span className="font-bold text-xs text-purple-300">Loading Customer 360° Data...</span>
                </div>
              ) : customer360Data ? (
                <>
                  {/* Profile Summary Card */}
                  <div className="bg-slate-800/90 p-4 rounded-2xl border border-slate-700 grid grid-cols-2 sm:grid-cols-4 gap-4">
                    <div>
                      <div className="text-[10px] text-slate-400 font-bold uppercase">Customer Name</div>
                      <div className="font-black text-white text-sm mt-0.5">{customer360Data.profile?.full_name || 'Guest'}</div>
                    </div>
                    <div>
                      <div className="text-[10px] text-slate-400 font-bold uppercase">Phone Number</div>
                      <div className="font-bold text-slate-200 mt-0.5">{customer360Data.profile?.phone_e164}</div>
                    </div>
                    <div>
                      <div className="text-[10px] text-slate-400 font-bold uppercase">Account Type</div>
                      <div className="font-extrabold text-purple-300 mt-0.5">{customer360Data.profile?.user_id ? 'REGISTERED' : 'GUEST'}</div>
                    </div>
                    <div>
                      <div className="text-[10px] text-slate-400 font-bold uppercase">City</div>
                      <div className="font-bold text-slate-300 mt-0.5">{customer360Data.profile?.city || 'Bengaluru'}</div>
                    </div>
                  </div>

                  {/* Customer Orders */}
                  <div className="space-y-2">
                    <h4 className="font-black text-white uppercase text-xs tracking-wider">Customer Orders ({customer360Data.orders.length})</h4>
                    {customer360Data.orders.length === 0 ? (
                      <p className="text-slate-400 italic text-[11px] p-3 bg-slate-900/60 rounded-xl">No orders placed by this customer.</p>
                    ) : (
                      <div className="space-y-2">
                        {customer360Data.orders.map((o) => (
                          <div key={o.id} className="p-3 bg-slate-900/80 rounded-xl border border-slate-800 flex items-center justify-between">
                            <div>
                              <span className="font-black text-purple-300">{o.order_code}</span> • <span className="font-bold text-white">₹{o.total_amount}</span>
                              <div className="text-[10px] text-slate-400">{new Date(o.created_at).toLocaleString('en-IN')}</div>
                            </div>
                            <span className="px-2 py-0.5 bg-emerald-500/20 text-emerald-300 rounded text-[10px] font-bold">{o.payment_status}</span>
                          </div>
                        ))}
                      </div>
                    )}
                  </div>

                  {/* Customer Prescriptions */}
                  <div className="space-y-2">
                    <h4 className="font-black text-white uppercase text-xs tracking-wider">Prescriptions Uploaded ({customer360Data.enquiries.length})</h4>
                    {customer360Data.enquiries.length === 0 ? (
                      <p className="text-slate-400 italic text-[11px] p-3 bg-slate-900/60 rounded-xl">No prescription uploads found.</p>
                    ) : (
                      <div className="space-y-2">
                        {customer360Data.enquiries.map((e) => (
                          <div key={e.id} className="p-3 bg-slate-900/80 rounded-xl border border-slate-800 flex items-center justify-between">
                            <div>
                              <span className="font-black text-amber-300">{e.enquiry_code}</span> • <span className="text-slate-300">{e.notes || 'Prescription upload'}</span>
                              <div className="text-[10px] text-slate-400">{new Date(e.created_at).toLocaleString('en-IN')}</div>
                            </div>
                            <span className="px-2 py-0.5 bg-indigo-500/20 text-indigo-300 rounded text-[10px] font-bold">{e.status}</span>
                          </div>
                        ))}
                      </div>
                    )}
                  </div>
                </>
              ) : (
                <p className="text-xs text-slate-400 text-center py-6">Customer data unavailable.</p>
              )}
            </div>

            <div className="p-4 bg-slate-950 border-t border-slate-800 text-right">
              <button
                onClick={() => { setSelectedPatientId(null); setCustomer360Data(null); }}
                className="px-4 py-2 bg-slate-800 hover:bg-slate-700 text-slate-200 font-bold text-xs rounded-xl transition-colors cursor-pointer"
              >
                Close
              </button>
            </div>
          </div>
        </div>
      )}

    </div>
  );
}
