import React, { useState, useEffect } from 'react';
import { 
  ShieldCheck, Lock, DollarSign, ShoppingBag, FileText, Users, 
  RefreshCw, CheckCircle2, AlertCircle, Clock, Search, Filter, 
  ExternalLink, Download, ChevronRight, Eye, Phone, Mail, MapPin, Truck, CreditCard, LogOut, Check, X
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
  getPrescriptionSignedUrl
} from '../services/adminService';
import { openWhatsApp } from '../utils/whatsapp';

export default function AdminDashboardPage() {
  const [isAuthenticated, setIsAuthenticated] = useState(false);
  const [isCheckingSession, setIsCheckingSession] = useState(true);

  const [adminEmail, setAdminEmail] = useState('');
  const [adminPassword, setAdminPassword] = useState('');
  const [authError, setAuthError] = useState('');
  const [isAuthenticating, setIsAuthenticating] = useState(false);

  const [activeTab, setActiveTab] = useState('orders'); // 'orders' | 'prescriptions' | 'patients'
  const [orderFilter, setOrderFilter] = useState('ALL'); // 'ALL' | 'COD' | 'ONLINE' | 'PAID' | 'PENDING' | 'FAILED' | 'COMPLETED' | 'CANCELLED'

  const [orders, setOrders] = useState([]);
  const [prescriptions, setPrescriptions] = useState([]);
  const [patients, setPatients] = useState([]);
  const [isLoading, setIsLoading] = useState(false);
  const [dataError, setDataError] = useState(null);
  const [searchQuery, setSearchQuery] = useState('');

  // Selected Order for Detail Modal
  const [selectedOrder, setSelectedOrder] = useState(null);
  const [selectedPatient, setSelectedPatient] = useState(null);

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
          // Verify database RBAC via check_is_admin() RPC
          const { data: isAdmin, error: rpcErr } = await supabase.rpc('check_is_admin');

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

    // Listen for auth state changes
    const { data: authListener } = supabase.auth.onAuthStateChange(async (event, session) => {
      if (event === 'SIGNED_OUT') {
        setIsAuthenticated(false);
        setSelectedOrder(null);
        setSelectedPatient(null);
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
    setSelectedPatient(null);
    if (isSupabaseConfigured) {
      try {
        await supabase.auth.signOut();
      } catch (e) {
        console.warn('Signout error:', e);
      }
    }
  };

  // Load Admin Telemetry Data directly from production Supabase database
  const loadAdminData = async () => {
    setIsLoading(true);
    setDataError(null);

    try {
      const [ordRes, presRes, patRes] = await Promise.all([
        fetchAdminOrders(),
        fetchAdminPrescriptions(),
        fetchAdminPatients()
      ]);

      const errors = [];
      if (ordRes.success) {
        setOrders(ordRes.data || []);
      } else {
        errors.push(ordRes.error || 'Unable to fetch orders.');
      }

      if (presRes.success) {
        setPrescriptions(presRes.data || []);
      } else {
        errors.push(presRes.error || 'Unable to fetch guest prescriptions.');
      }

      if (patRes.success) {
        setPatients(patRes.data || []);
      } else {
        errors.push(patRes.error || 'Unable to fetch registered patients.');
      }

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

  // Mark COD Payment Collected Handler
  const handleMarkCodCollected = async (order) => {
    const confirmMsg = `Confirm that Cash on Delivery payment of ₹${order.total_amount} has been collected for Order ${order.order_code}?`;
    if (!window.confirm(confirmMsg)) return;

    const res = await markCodPaymentCollected(order.id);
    if (res.success) {
      // Re-query database to recalculate telemetry directly from Supabase
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

  // Secure Prescription File View/Download Handler
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

  // STRICT FINANCIAL CALCULATIONS
  const onlineRevenueCollected = orders
    .filter((o) => {
      const payObj = o.payments?.[0] || {};
      const payMethod = (payObj.payment_method || o.payment_method || '').toUpperCase();
      const payMode = (payObj.payment_mode || o.payment_mode || '').toUpperCase();
      return o.payment_status === 'PAID' && payMethod !== 'COD' && payMode !== 'DEMO';
    })
    .reduce((acc, o) => acc + Number(o.total_amount || 0), 0);

  const codPendingCollection = orders
    .filter((o) => {
      const payObj = o.payments?.[0] || {};
      const payMethod = (payObj.payment_method || o.payment_method || '').toUpperCase();
      const payMode = (payObj.payment_mode || o.payment_mode || '').toUpperCase();
      return (payMethod === 'COD' || payMode === 'COD') && o.payment_status === 'PENDING';
    })
    .reduce((acc, o) => acc + Number(o.total_amount || 0), 0);

  const codCollected = orders
    .filter((o) => {
      const payObj = o.payments?.[0] || {};
      const payMethod = (payObj.payment_method || o.payment_method || '').toUpperCase();
      const payMode = (payObj.payment_mode || o.payment_mode || '').toUpperCase();
      return (payMethod === 'COD' || payMode === 'COD') && o.payment_status === 'PAID';
    })
    .reduce((acc, o) => acc + Number(o.total_amount || 0), 0);

  const totalOrderValue = orders.reduce((acc, o) => acc + Number(o.total_amount || 0), 0);

  const codOrdersCount = orders.filter((o) => {
    const payMethod = (o.payments?.[0]?.payment_method || o.payment_method || '').toUpperCase();
    const payMode = (o.payments?.[0]?.payment_mode || o.payment_mode || '').toUpperCase();
    return payMethod === 'COD' || payMode === 'COD';
  }).length;

  const onlineOrdersCount = orders.length - codOrdersCount;

  // Filtered Orders
  const filteredOrders = orders.filter((o) => {
    const payMethod = (o.payments?.[0]?.payment_method || o.payment_method || '').toUpperCase();
    const payMode = (o.payments?.[0]?.payment_mode || o.payment_mode || '').toUpperCase();
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

  // Filtered Prescriptions
  const filteredPrescriptions = prescriptions.filter((p) => {
    if (!searchQuery.trim()) return true;
    const q = searchQuery.toLowerCase();
    const name = p.patients?.full_name?.toLowerCase() || '';
    const phone = p.patients?.phone_e164?.toLowerCase() || '';
    const code = p.enquiry_code?.toLowerCase() || '';
    return name.includes(q) || phone.includes(q) || code.includes(q);
  });

  // Filtered Patients
  const filteredPatients = patients.filter((pat) => {
    if (!searchQuery.trim()) return true;
    const q = searchQuery.toLowerCase();
    const name = pat.full_name?.toLowerCase() || '';
    const phone = pat.phone_e164?.toLowerCase() || '';
    const email = pat.email?.toLowerCase() || '';
    return name.includes(q) || phone.includes(q) || email.includes(q);
  });

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

  // DEDICATED ADMIN LOGIN UI (WHEN UNAUTHENTICATED)
  if (!isAuthenticated) {
    return (
      <div className="min-h-[88vh] flex items-center justify-center p-4 bg-slate-900">
        <div className="w-full max-w-md bg-white rounded-3xl p-8 shadow-2xl space-y-6 text-left border border-purple-200 animate-in fade-in duration-200">
          
          {/* Logo & Header */}
          <div className="text-center space-y-3">
            <div className="w-16 h-16 rounded-2xl bg-purple-100 border border-purple-200 flex items-center justify-center mx-auto p-2 overflow-hidden shadow-xs">
              <img src="/logo.png" alt="Health Express Logo" className="w-full h-full object-contain" />
            </div>
            <div>
              <h2 className="text-2xl font-black text-slate-900 tracking-tight">Team Admin Portal</h2>
              <p className="text-xs text-slate-500 font-medium mt-1">
                Secure access for Health Express team
              </p>
            </div>
          </div>

          {/* Error Callout Banner */}
          {authError && (
            <div className="p-3.5 bg-rose-50 border border-rose-200 rounded-2xl text-xs text-rose-900 font-bold flex items-start gap-2.5 animate-in fade-in">
              <AlertCircle className="w-4 h-4 text-rose-600 shrink-0 mt-0.5" />
              <div className="flex-1">{authError}</div>
            </div>
          )}

          {/* Admin Login Form */}
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

  // MAIN ADMIN DASHBOARD UI (UPON SUCCESSFUL AUTHENTICATION)
  return (
    <div className="min-h-screen bg-slate-900 text-slate-100 py-8 px-4 sm:px-6 lg:px-8 text-left">
      <div className="max-w-7xl mx-auto space-y-8">
        
        {/* TOP DASHBOARD HEADER */}
        <div className="flex flex-wrap items-center justify-between gap-4 border-b border-slate-800 pb-6">
          <div className="flex items-center gap-3">
            <div className="w-12 h-12 rounded-2xl bg-purple-700/80 border border-purple-500/50 flex items-center justify-center text-white shadow-md">
              <ShieldCheck className="w-7 h-7" />
            </div>
            <div>
              <div className="flex items-center gap-2">
                <h1 className="text-2xl font-black text-white">Health Express Portal</h1>
                <span className="px-2.5 py-0.5 rounded-full bg-emerald-500/20 border border-emerald-400/30 text-emerald-400 text-[10px] font-black uppercase tracking-wider">
                  AUTHENTICATED ADMIN
                </span>
              </div>
              <p className="text-xs text-purple-300/80">Backend Team Control Center & Financial Telemetry</p>
            </div>
          </div>

          <div className="flex items-center gap-3">
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

        {/* ACCURATE FINANCIAL SUMMARY CARDS */}
        <div className="grid grid-cols-1 sm:grid-cols-2 lg:grid-cols-4 gap-4">
          
          {/* Card 1: Online Revenue Collected */}
          <div className="bg-slate-800/90 border border-slate-700/80 rounded-3xl p-5 space-y-2">
            <div className="flex items-center justify-between text-xs text-emerald-400 font-bold">
              <span>ONLINE REVENUE COLLECTED</span>
              <DollarSign className="w-4 h-4 text-emerald-400" />
            </div>
            <div className="text-3xl font-black text-emerald-300">₹{onlineRevenueCollected.toLocaleString('en-IN')}</div>
            <p className="text-[11px] text-slate-400 font-medium">Verified Paid Online Razorpay Transactions</p>
          </div>

          {/* Card 2: COD Pending Collection */}
          <div className="bg-slate-800/90 border border-slate-700/80 rounded-3xl p-5 space-y-2">
            <div className="flex items-center justify-between text-xs text-amber-400 font-bold">
              <span>COD PENDING COLLECTION</span>
              <Truck className="w-4 h-4 text-amber-400" />
            </div>
            <div className="text-3xl font-black text-amber-300">₹{codPendingCollection.toLocaleString('en-IN')}</div>
            <p className="text-[11px] text-slate-400 font-medium">To be collected upon sample collection</p>
          </div>

          {/* Card 3: COD Collected */}
          <div className="bg-slate-800/90 border border-slate-700/80 rounded-3xl p-5 space-y-2">
            <div className="flex items-center justify-between text-xs text-purple-300 font-bold">
              <span>COD COLLECTED</span>
              <CheckCircle2 className="w-4 h-4 text-purple-400" />
            </div>
            <div className="text-3xl font-black text-purple-200">₹{codCollected.toLocaleString('en-IN')}</div>
            <p className="text-[11px] text-slate-400 font-medium">Cash/UPI received for COD orders</p>
          </div>

          {/* Card 4: Total Order Value */}
          <div className="bg-slate-800/90 border border-slate-700/80 rounded-3xl p-5 space-y-2">
            <div className="flex items-center justify-between text-xs text-slate-300 font-bold">
              <span>TOTAL ORDER VALUE</span>
              <ShoppingBag className="w-4 h-4 text-indigo-400" />
            </div>
            <div className="text-3xl font-black text-white">₹{totalOrderValue.toLocaleString('en-IN')}</div>
            <p className="text-[11px] text-slate-400 font-medium">{orders.length} Total Orders ({codOrdersCount} COD • {onlineOrdersCount} Online)</p>
          </div>

        </div>

        {/* NAVIGATION TABS & SEARCH BAR */}
        <div className="flex flex-wrap items-center justify-between gap-4 bg-slate-800/60 p-2.5 rounded-2xl border border-slate-800">
          <div className="flex items-center gap-2 overflow-x-auto">
            <button
              onClick={() => setActiveTab('orders')}
              className={`px-4 py-2.5 rounded-xl text-xs font-extrabold transition-all cursor-pointer flex items-center gap-2 ${
                activeTab === 'orders'
                  ? 'bg-purple-700 text-white shadow-md'
                  : 'text-slate-400 hover:text-white hover:bg-slate-800'
              }`}
            >
              <ShoppingBag className="w-3.5 h-3.5" />
              <span>Orders & Transactions ({orders.length})</span>
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
              onClick={() => setActiveTab('patients')}
              className={`px-4 py-2.5 rounded-xl text-xs font-extrabold transition-all cursor-pointer flex items-center gap-2 ${
                activeTab === 'patients'
                  ? 'bg-purple-700 text-white shadow-md'
                  : 'text-slate-400 hover:text-white hover:bg-slate-800'
              }`}
            >
              <Users className="w-3.5 h-3.5" />
              <span>Registered Patients ({patients.length})</span>
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

        {/* TAB 1: ORDERS & TRANSACTIONS TABLE */}
        {activeTab === 'orders' && (
          <div className="space-y-4">
            
            {/* Filter Sub-Chips */}
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

            {/* Table */}
            <div className="bg-slate-800/90 border border-slate-700/80 rounded-3xl overflow-hidden shadow-xl">
              <div className="overflow-x-auto">
                <table className="w-full text-left text-xs">
                  <thead className="bg-slate-900/90 text-purple-300 font-extrabold border-b border-slate-700 text-[11px] uppercase tracking-wider">
                    <tr>
                      <th className="p-4">Order Code</th>
                      <th className="p-4">Customer</th>
                      <th className="p-4">Items</th>
                      <th className="p-4">Amount</th>
                      <th className="p-4">Method & Mode</th>
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

                            <td className="p-4 cursor-pointer" onClick={() => setSelectedOrder(ord)}>
                              <div className="font-extrabold text-white">{ord.customer_name}</div>
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
                              <div className="flex items-center gap-1.5">
                                {isCod ? (
                                  <span className="px-2 py-0.5 rounded bg-amber-500/20 text-amber-300 border border-amber-500/30 text-[10px] font-extrabold flex items-center gap-1">
                                    <Truck className="w-3 h-3" /> COD
                                  </span>
                                ) : (
                                  <span className="px-2 py-0.5 rounded bg-purple-500/20 text-purple-300 border border-purple-500/30 text-[10px] font-extrabold flex items-center gap-1">
                                    <CreditCard className="w-3 h-3" /> ONLINE ({payMode})
                                  </span>
                                )}
                              </div>
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
                              {/* COD Collection Action Button */}
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

        {/* TAB 2: GUEST PRESCRIPTIONS & ENQUIRIES TABLE */}
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
                                      className="p-1 hover:text-white text-purple-300 hover:text-purple-100 cursor-pointer flex items-center gap-1 bg-purple-900/40 hover:bg-purple-800/60 px-1.5 py-0.5 rounded transition-colors"
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

        {/* TAB 3: REGISTERED PATIENTS DIRECTORY */}
        {activeTab === 'patients' && (
          <div className="bg-slate-800/90 border border-slate-700/80 rounded-3xl overflow-hidden shadow-xl">
            <div className="overflow-x-auto">
              <table className="w-full text-left text-xs">
                <thead className="bg-slate-900/90 text-purple-300 font-extrabold border-b border-slate-700 text-[11px] uppercase tracking-wider">
                  <tr>
                    <th className="p-4">Patient Name</th>
                    <th className="p-4">Phone Number</th>
                    <th className="p-4">Email Address</th>
                    <th className="p-4">City</th>
                    <th className="p-4">Account Status</th>
                    <th className="p-4">Joined Date</th>
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
                        <td className="p-4 font-extrabold text-white">{pat.full_name}</td>
                        <td className="p-4 font-bold text-slate-200">{pat.phone_e164}</td>
                        <td className="p-4 text-slate-300">{pat.email || '—'}</td>
                        <td className="p-4 text-slate-300">{pat.city || 'Bengaluru'}</td>
                        <td className="p-4">
                          <span className={`px-2 py-0.5 rounded text-[10px] font-bold ${pat.is_verified ? 'bg-emerald-500/20 text-emerald-300 border border-emerald-500/30' : 'bg-slate-700 text-slate-300'}`}>
                            {pat.is_verified ? 'VERIFIED PATIENT' : 'GUEST PROFILE'}
                          </span>
                        </td>
                        <td className="p-4 text-slate-400 text-[11px]">
                          {new Date(pat.created_at).toLocaleDateString('en-IN', { dateStyle: 'medium' })}
                        </td>
                        <td className="p-4">
                          <button
                            onClick={() => setSelectedPatient(pat)}
                            className="px-2.5 py-1.5 rounded-lg bg-slate-700 hover:bg-slate-600 text-slate-200 font-bold text-[11px] cursor-pointer transition-colors"
                          >
                            View Profile
                          </button>
                        </td>
                      </tr>
                    ))
                  )}
                </tbody>
              </table>
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
              <button onClick={() => setSelectedOrder(null)} className="p-1 text-slate-400 hover:text-white rounded-lg">
                <X className="w-5 h-5" />
              </button>
            </div>

            <div className="p-6 space-y-5 overflow-y-auto max-h-[75vh] text-xs">
              <div className="grid grid-cols-1 md:grid-cols-2 gap-4">
                <div className="bg-slate-800 p-4 rounded-2xl border border-slate-700 space-y-2">
                  <span className="text-[10px] font-black uppercase text-purple-300 tracking-wider block">Customer Information</span>
                  <div className="font-extrabold text-sm text-white">{selectedOrder.customer_name}</div>
                  <div className="text-slate-300 font-semibold">{selectedOrder.customer_phone}</div>
                  {selectedOrder.customer_email && <div className="text-slate-400">{selectedOrder.customer_email}</div>}
                </div>

                <div className="bg-slate-800 p-4 rounded-2xl border border-slate-700 space-y-2">
                  <span className="text-[10px] font-black uppercase text-purple-300 tracking-wider block">Payment & Order Status</span>
                  <div className="flex items-center gap-2">
                    <span className="font-bold text-slate-400">Payment Status:</span>
                    <span className="font-black text-emerald-400 uppercase">{selectedOrder.payment_status}</span>
                  </div>
                  <div className="flex items-center gap-2">
                    <span className="font-bold text-slate-400">Order Status:</span>
                    <span className="font-black text-purple-300 uppercase">{selectedOrder.order_status}</span>
                  </div>
                  <div className="flex items-center gap-2">
                    <span className="font-bold text-slate-400">Payment Method:</span>
                    <span className="font-extrabold text-amber-300 uppercase">{selectedOrder.payment_method || selectedOrder.payments?.[0]?.payment_method || 'ONLINE'}</span>
                  </div>
                </div>
              </div>

              {/* Itemized Purchased List */}
              <div className="bg-slate-800 p-4 rounded-2xl border border-slate-700 space-y-3">
                <span className="text-[10px] font-black uppercase text-purple-300 tracking-wider block">Purchased Items ({selectedOrder.items?.length || 0})</span>
                <div className="space-y-2 divide-y divide-slate-700">
                  {Array.isArray(selectedOrder.items) && selectedOrder.items.map((it, idx) => (
                    <div key={idx} className="pt-2 flex justify-between items-center text-xs">
                      <div>
                        <span className="font-bold text-white">{it.name}</span>
                        <span className="text-purple-300 ml-2 font-bold">({it.quantity}x)</span>
                      </div>
                      <span className="font-black text-white">₹{it.total_price || (it.unit_price * it.quantity)}</span>
                    </div>
                  ))}
                </div>
                <div className="pt-3 border-t border-slate-700 flex justify-between items-baseline text-sm font-black">
                  <span className="text-white">Total Amount:</span>
                  <span className="text-purple-300 text-lg">₹{selectedOrder.total_amount}</span>
                </div>
              </div>

              {/* Razorpay Transaction Log */}
              {selectedOrder.payments?.[0] && (
                <div className="bg-slate-800/80 p-4 rounded-2xl border border-slate-700 text-[11px] space-y-1.5 text-slate-300 font-mono">
                  <span className="text-[10px] font-black uppercase text-purple-300 tracking-wider block font-sans">Payment Metadata</span>
                  <div>Razorpay Order ID: <span className="text-white">{selectedOrder.payments[0].razorpay_order_id}</span></div>
                  <div>Razorpay Payment ID: <span className="text-white">{selectedOrder.payments[0].razorpay_payment_id || 'N/A (COD / Pending)'}</span></div>
                  <div>Payment Mode: <span className="text-amber-300 font-bold">{selectedOrder.payments[0].payment_mode}</span></div>
                </div>
              )}
            </div>
          </div>
        </div>
      )}

      {/* PATIENT PROFILE DRAWER */}
      {selectedPatient && (
        <div className="fixed inset-0 z-[100000] flex items-center justify-center p-4 bg-slate-950/80 backdrop-blur-xs animate-in fade-in duration-200">
          <div className="w-full max-w-lg bg-slate-900 border border-purple-500/40 rounded-3xl shadow-2xl overflow-hidden text-left space-y-0">
            <div className="p-5 bg-gradient-to-r from-purple-950 to-slate-900 border-b border-purple-800/40 flex items-center justify-between text-white">
              <div className="flex items-center gap-3">
                <Users className="w-6 h-6 text-indigo-400" />
                <div>
                  <h3 className="text-lg font-black text-white">{selectedPatient.full_name}</h3>
                  <p className="text-xs text-purple-300 font-medium">Registered Patient Profile</p>
                </div>
              </div>
              <button onClick={() => setSelectedPatient(null)} className="p-1 text-slate-400 hover:text-white rounded-lg">
                <X className="w-5 h-5" />
              </button>
            </div>

            <div className="p-6 space-y-4 text-xs">
              <div className="bg-slate-800 p-4 rounded-2xl border border-slate-700 space-y-2">
                <div>Phone: <strong className="text-white">{selectedPatient.phone_e164}</strong></div>
                <div>Email: <strong className="text-white">{selectedPatient.email || 'None'}</strong></div>
                <div>City: <strong className="text-white">{selectedPatient.city || 'Bengaluru'}</strong></div>
                <div>Joined Date: <strong className="text-white">{new Date(selectedPatient.created_at).toLocaleDateString('en-IN')}</strong></div>
              </div>
            </div>
          </div>
        </div>
      )}

    </div>
  );
}
