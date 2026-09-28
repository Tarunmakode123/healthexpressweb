import React, { useState, useEffect } from 'react';
import { 
  ShieldCheck, Lock, DollarSign, ShoppingBag, FileText, Users, 
  RefreshCw, CheckCircle2, AlertCircle, Clock, Search, Filter, 
  ExternalLink, Download, ChevronRight, Eye, Phone, Mail, MapPin, Truck, CreditCard, LogOut, Check, X,
  BarChart2, Activity, Calendar, ArrowUpRight, CheckSquare, Layers, UserCheck, Menu, Settings,
  CreditCard as PaymentIcon, Bell, Tag, Percent, Plus
} from 'lucide-react';
import { supabase, isSupabaseConfigured } from '../lib/supabase';
import { 
  verifyAdminAuth,
  fetchAdminOrders, 
  fetchAdminPayments,
  updateAdminOrderStatus, 
  markCodPaymentCollected,
  fetchAdminPrescriptions, 
  updateAdminEnquiryStatus, 
  fetchAdminPatients,
  getPrescriptionSignedUrl,
  fetchCustomerDetails,
  fetchAnalyticsEvents,
  fetchAdminPromoCodes,
  createAdminPromoCode,
  updateAdminPromoCode,
  toggleAdminPromoCodeStatus,
  deleteAdminPromoCode
} from '../services/adminService';
import { openWhatsApp } from '../utils/whatsapp';

export default function AdminDashboardPage() {
  const [isAuthenticated, setIsAuthenticated] = useState(false);
  const [isCheckingSession, setIsCheckingSession] = useState(true);

  const [adminEmail, setAdminEmail] = useState('');
  const [adminPassword, setAdminPassword] = useState('');
  const [authError, setAuthError] = useState('');
  const [isAuthenticating, setIsAuthenticating] = useState(false);

  // NAVIGATION & SIDEBAR: 'overview' | 'orders' | 'customers' | 'prescriptions' | 'promotions' | 'payments' | 'analytics' | 'activity' | 'settings'
  const [activeNav, setActiveNav] = useState('overview');
  const [isSidebarOpen, setIsSidebarOpen] = useState(true);
  
  // FILTERS & PAGINATION
  const [orderFilter, setOrderFilter] = useState('ALL');
  const [customerTypeFilter, setCustomerTypeFilter] = useState('ALL');
  const [paymentFilter, setPaymentFilter] = useState('ALL');
  const [dateRangeFilter, setDateRangeFilter] = useState('ALL');
  const [currentPage, setCurrentPage] = useState(1);
  const ITEMS_PER_PAGE = 20;

  // DATASETS
  const [orders, setOrders] = useState([]);
  const [payments, setPayments] = useState([]);
  const [prescriptions, setPrescriptions] = useState([]);
  const [patients, setPatients] = useState([]);
  const [promoCodes, setPromoCodes] = useState([]);
  const [analyticsEvents, setAnalyticsEvents] = useState([]);
  const [isLoading, setIsLoading] = useState(false);
  const [dataError, setDataError] = useState(null);
  const [searchQuery, setSearchQuery] = useState('');

  // Toast & Modals
  const [toastMessage, setToastMessage] = useState(null);
  const [selectedOrder, setSelectedOrder] = useState(null);
  const [selectedPatientId, setSelectedPatientId] = useState(null);
  const [customer360Data, setCustomer360Data] = useState(null);
  const [isLoadingCustomer, setIsLoadingCustomer] = useState(false);
  
  // Confirmation Modal for COD Collection
  const [codConfirmOrder, setCodConfirmOrder] = useState(null);
  const [isCollectingCod, setIsCollectingCod] = useState(false);

  // PROMO MODAL STATES
  const [isPromoModalOpen, setIsPromoModalOpen] = useState(false);
  const [editingPromo, setEditingPromo] = useState(null);
  const [promoFormData, setPromoFormData] = useState({
    code: '',
    discount_type: 'flat',
    discount_value: '',
    min_order_amount: '299',
    max_discount: '',
    valid_from: '',
    valid_until: '',
    usage_limit: '',
    is_active: true
  });

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

  const showToast = (msg, type = 'success') => {
    setToastMessage({ text: msg, type });
    setTimeout(() => setToastMessage(null), 4000);
  };

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
        showToast('Welcome to Health Express Operations Control Center.');
      } else {
        setAuthError(res.error || 'Invalid email or password.');
      }
    } catch (err) {
      setAuthError(err.message || 'Authentication error.');
    } finally {
      setIsAuthenticating(false);
    }
  };

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
      const [ordRes, payRes, presRes, patRes, promoRes, evtRes] = await Promise.all([
        fetchAdminOrders(),
        fetchAdminPayments(),
        fetchAdminPrescriptions(),
        fetchAdminPatients(),
        fetchAdminPromoCodes(),
        fetchAnalyticsEvents(100)
      ]);

      const errors = [];
      if (ordRes.success) setOrders(ordRes.data || []);
      else errors.push(ordRes.error || 'Unable to fetch orders.');

      if (payRes.success) setPayments(payRes.data || []);
      else errors.push(payRes.error || 'Unable to fetch payments.');

      if (presRes.success) setPrescriptions(presRes.data || []);
      else errors.push(presRes.error || 'Unable to fetch guest prescriptions.');

      if (patRes.success) setPatients(patRes.data || []);
      else errors.push(patRes.error || 'Unable to fetch registered patients.');

      if (promoRes.success) setPromoCodes(promoRes.data || []);
      else errors.push(promoRes.error || 'Unable to fetch promo codes.');

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

  // PROMO MANAGEMENT HANDLERS
  const handleSavePromo = async (e) => {
    if (e) e.preventDefault();
    if (!promoFormData.code.trim()) {
      showToast('Please enter a promo code.', 'error');
      return;
    }

    if (editingPromo) {
      const res = await updateAdminPromoCode(editingPromo.id, promoFormData);
      if (res.success) {
        showToast(`Promo code ${promoFormData.code} updated successfully.`);
        setIsPromoModalOpen(false);
        loadAdminData();
      } else {
        showToast(res.error || 'Failed to update promo code.', 'error');
      }
    } else {
      const res = await createAdminPromoCode(promoFormData);
      if (res.success) {
        showToast(`Promo code ${promoFormData.code} created and published.`);
        setIsPromoModalOpen(false);
        loadAdminData();
      } else {
        showToast(res.error || 'Failed to create promo code.', 'error');
      }
    }
  };

  const handleTogglePromoStatus = async (id, currentStatus) => {
    const res = await toggleAdminPromoCodeStatus(id, currentStatus);
    if (res.success) {
      showToast(`Promo status updated to ${currentStatus ? 'ACTIVE' : 'INACTIVE'}.`);
      loadAdminData();
    } else {
      showToast(res.error || 'Failed to toggle promo status.', 'error');
    }
  };

  const handleDeletePromo = async (id) => {
    if (!window.confirm('Are you sure you want to delete this promo code? Historical usages will remain saved.')) return;
    const res = await deleteAdminPromoCode(id);
    if (res.success) {
      showToast('Promo code deleted successfully.');
      loadAdminData();
    } else {
      showToast(res.error || 'Failed to delete promo code.', 'error');
    }
  };

  const handleOpenEditPromoModal = (promo) => {
    setEditingPromo(promo);
    setPromoFormData({
      code: promo.code || '',
      discount_type: promo.discount_type || 'flat',
      discount_value: promo.discount_value || '',
      min_order_amount: promo.min_order_amount || '0',
      max_discount: promo.max_discount || '',
      valid_from: promo.valid_from ? promo.valid_from.slice(0, 10) : '',
      valid_until: promo.valid_until ? promo.valid_until.slice(0, 10) : '',
      usage_limit: promo.usage_limit || '',
      is_active: promo.is_active !== undefined ? promo.is_active : true
    });
    setIsPromoModalOpen(true);
  };

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
        showToast(`Error loading customer profile: ${res.error}`, 'error');
      }
    } catch (err) {
      console.error('Customer 360 load exception:', err);
    } finally {
      setIsLoadingCustomer(false);
    }
  };

  // Confirm and Execute COD Payment Collection via RPC
  const executeMarkCodCollected = async () => {
    if (!codConfirmOrder) return;
    setIsCollectingCod(true);

    try {
      const res = await markCodPaymentCollected(codConfirmOrder.id);
      if (res.success) {
        showToast(`COD payment collected for ${codConfirmOrder.order_code}. Status: PAID.`);
        await loadAdminData();
        if (selectedOrder && selectedOrder.id === codConfirmOrder.id) {
          setSelectedOrder((prev) => ({
            ...prev,
            payment_status: 'PAID',
            order_status: 'CONFIRMED'
          }));
        }
      } else {
        showToast(`Error updating COD payment: ${res.error}`, 'error');
      }
    } catch (err) {
      showToast(`COD Collection exception: ${err.message}`, 'error');
    } finally {
      setIsCollectingCod(false);
      setCodConfirmOrder(null);
    }
  };

  // Status Updaters
  const handleOrderStatusChange = async (orderId, newStatus) => {
    setOrders((prev) =>
      prev.map((o) => (o.id === orderId ? { ...o, order_status: newStatus } : o))
    );
    const res = await updateAdminOrderStatus(orderId, newStatus);
    if (res.success) showToast(`Order status updated to ${newStatus}.`);
    else showToast(`Failed to update status: ${res.error}`, 'error');
  };

  const handleEnquiryStatusChange = async (enquiryId, newStatus) => {
    setPrescriptions((prev) =>
      prev.map((p) => (p.id === enquiryId ? { ...p, status: newStatus } : p))
    );
    const res = await updateAdminEnquiryStatus(enquiryId, newStatus);
    if (res.success) showToast(`Prescription review status updated to ${newStatus}.`);
    else showToast(`Failed to update enquiry status: ${res.error}`, 'error');
  };

  // Secure Prescription File View Handler
  const handleViewPrescriptionFile = async (fileObj) => {
    const filePath = fileObj?.file_path || fileObj?.filePath;
    if (!filePath) {
      showToast('File path is unavailable for this prescription.', 'error');
      return;
    }

    try {
      const res = await getPrescriptionSignedUrl(filePath, 300);
      if (res.success && res.signedUrl) {
        window.open(res.signedUrl, '_blank', 'noopener,noreferrer');
      } else {
        showToast(`Unable to preview file: ${res.error}`, 'error');
      }
    } catch (err) {
      console.error('Prescription file view exception:', err);
      showToast(`Error accessing prescription file: ${err.message}`, 'error');
    }
  };

  // Date Filter Logic
  const isDateInFilter = (dateString, filter) => {
    if (filter === 'ALL') return true;
    if (!dateString) return false;

    const date = new Date(dateString);
    const now = new Date();

    if (filter === 'TODAY') {
      return date.toDateString() === now.toDateString();
    }
    if (filter === 'YESTERDAY') {
      const yest = new Date(now);
      yest.setDate(yest.getDate() - 1);
      return date.toDateString() === yest.toDateString();
    }
    if (filter === 'LAST_7') {
      const d7 = new Date(now);
      d7.setDate(d7.getDate() - 7);
      return date >= d7;
    }
    if (filter === 'LAST_30') {
      const d30 = new Date(now);
      d30.setDate(d30.getDate() - 30);
      return date >= d30;
    }
    if (filter === 'THIS_MONTH') {
      return date.getMonth() === now.getMonth() && date.getFullYear() === now.getFullYear();
    }
    return true;
  };

  // Filtered Orders
  const dateFilteredOrders = orders.filter((o) => isDateInFilter(o.created_at, dateRangeFilter));
  const filteredOrders = dateFilteredOrders.filter((ord) => {
    // Payment Status / Method Filter
    if (orderFilter !== 'ALL') {
      if (orderFilter === 'COD') {
        const payMethod = (ord.payments?.[0]?.payment_method || ord.payment_method || '').toUpperCase();
        if (payMethod !== 'COD') return false;
      } else if (orderFilter === 'ONLINE') {
        const payMethod = (ord.payments?.[0]?.payment_method || ord.payment_method || '').toUpperCase();
        if (payMethod === 'COD') return false;
      } else if (orderFilter === 'PAID') {
        if (ord.payment_status !== 'PAID') return false;
      } else if (orderFilter === 'PENDING') {
        if (ord.payment_status !== 'PENDING') return false;
      } else if (orderFilter === 'FAILED') {
        if (ord.payment_status !== 'FAILED') return false;
      }
    }

    // Search Query
    if (searchQuery.trim()) {
      const q = searchQuery.toLowerCase();
      const code = ord.order_code?.toLowerCase() || '';
      const name = ord.customer_name?.toLowerCase() || '';
      const phone = ord.customer_phone?.toLowerCase() || '';
      return code.includes(q) || name.includes(q) || phone.includes(q);
    }
    return true;
  });

  // Filtered Patients
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

  // Pagination Slice
  const paginatedOrders = filteredOrders.slice((currentPage - 1) * ITEMS_PER_PAGE, currentPage * ITEMS_PER_PAGE);
  const totalOrderPages = Math.ceil(filteredOrders.length / ITEMS_PER_PAGE) || 1;

  // KPI STATS
  const totalRevenue = dateFilteredOrders
    .filter((o) => o.payment_status === 'PAID')
    .reduce((acc, o) => acc + Number(o.total_amount || 0), 0);

  const todayStart = new Date(new Date().setHours(0,0,0,0));
  const todayOrders = orders.filter((o) => new Date(o.created_at) >= todayStart);
  const todayRevenue = todayOrders
    .filter((o) => o.payment_status === 'PAID')
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

  const successfulPaymentsCount = dateFilteredOrders.filter((o) => o.payment_status === 'PAID').length;
  const pendingPaymentsCount = dateFilteredOrders.filter((o) => o.payment_status === 'PENDING').length;
  const failedPaymentsCount = dateFilteredOrders.filter((o) => o.payment_status === 'FAILED').length;

  const registeredPatientsCount = patients.filter((p) => p.user_id).length;
  const guestEnquiriesCount = prescriptions.length;
  const pendingReviewsCount = prescriptions.filter((p) => p.status === 'pending_review').length;

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
                className="w-full px-4 py-3 rounded-xl border border-purple-200 text-xs font-medium focus:outline-none focus:ring-2 focus:ring-purple-600 bg-white"
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
                className="w-full px-4 py-3 rounded-xl border border-purple-200 text-xs font-medium focus:outline-none focus:ring-2 focus:ring-purple-600 bg-white"
              />
            </div>

            <button
              type="submit"
              disabled={isAuthenticating}
              className="w-full py-3.5 rounded-xl bg-purple-700 hover:bg-purple-800 disabled:opacity-50 text-white font-extrabold text-xs shadow-md shadow-purple-900/20 transition-all flex items-center justify-center gap-2 cursor-pointer"
            >
              {isAuthenticating ? (
                <span className="flex items-center gap-2">
                  <RefreshCw className="w-4 h-4 animate-spin" />
                  Verifying Admin RBAC...
                </span>
              ) : (
                <span className="flex items-center gap-2">
                  <Lock className="w-4 h-4" />
                  Sign In to Admin Portal
                </span>
              )}
            </button>
          </form>
        </div>
      </div>
    );
  }

  return (
    <div className="min-h-screen bg-slate-900 text-slate-100 flex flex-col md:flex-row text-left font-sans">
      
      {/* TOAST NOTIFICATION CALLOUT */}
      {toastMessage && (
        <div className={`fixed top-5 right-5 z-[200000] p-4 rounded-2xl shadow-2xl text-xs font-bold border flex items-center gap-3 animate-in slide-in-from-top-4 duration-300 ${
          toastMessage.type === 'error' ? 'bg-rose-950 text-rose-100 border-rose-800' : 'bg-emerald-950 text-emerald-100 border-emerald-800'
        }`}>
          {toastMessage.type === 'error' ? <AlertCircle className="w-4 h-4 text-rose-400 shrink-0" /> : <CheckCircle2 className="w-4 h-4 text-emerald-400 shrink-0" />}
          <span>{toastMessage.text}</span>
        </div>
      )}

      {/* LEFT SIDEBAR NAVIGATION */}
      <aside className={`w-full md:w-64 bg-slate-950 border-r border-slate-800 flex flex-col shrink-0 transition-all ${isSidebarOpen ? 'block' : 'hidden md:flex'}`}>
        <div className="p-5 border-b border-slate-800/80 flex items-center justify-between">
          <div className="flex items-center gap-3">
            <div className="w-10 h-10 rounded-xl bg-purple-900/80 border border-purple-500/40 p-1.5 overflow-hidden flex items-center justify-center shrink-0">
              <img src="/logo.png" alt="Health Express" className="w-full h-full object-contain" />
            </div>
            <div>
              <h2 className="text-sm font-black text-white tracking-tight">HEALTH EXPRESS</h2>
              <span className="text-[10px] font-bold text-purple-400 uppercase tracking-widest">OPS CONTROL</span>
            </div>
          </div>
          <button onClick={() => setIsSidebarOpen(!isSidebarOpen)} className="md:hidden text-slate-400 hover:text-white">
            <X className="w-5 h-5" />
          </button>
        </div>

        <nav className="p-4 space-y-1 flex-1">
          {[
            { id: 'overview', label: 'Overview', icon: Activity },
            { id: 'orders', label: 'Orders', icon: ShoppingBag, badge: orders.length },
            { id: 'customers', label: 'Customers', icon: Users, badge: patients.length },
            { id: 'prescriptions', label: 'Prescriptions', icon: FileText, badge: pendingReviewsCount > 0 ? pendingReviewsCount : null },
            { id: 'promotions', label: 'Offers & Promotions', icon: Tag, badge: promoCodes.length },
            { id: 'payments', label: 'Payments', icon: PaymentIcon },
            { id: 'analytics', label: 'Revenue Analytics', icon: BarChart2 },
            { id: 'activity', label: 'Activity Logs', icon: Layers },
            { id: 'settings', label: 'System Settings', icon: Settings },
          ].map((item) => {
            const IconComponent = item.icon;
            const isActive = activeNav === item.id;
            return (
              <button
                key={item.id}
                onClick={() => { setActiveNav(item.id); setCurrentPage(1); }}
                className={`w-full px-3.5 py-3 rounded-xl text-xs font-bold transition-all flex items-center justify-between cursor-pointer ${
                  isActive 
                    ? 'bg-purple-900/60 text-white border border-purple-700/60 shadow-md font-black' 
                    : 'text-slate-400 hover:text-white hover:bg-slate-900'
                }`}
              >
                <div className="flex items-center gap-3">
                  <IconComponent className={`w-4 h-4 ${isActive ? 'text-purple-400' : 'text-slate-400'}`} />
                  <span>{item.label}</span>
                </div>
                {item.badge !== undefined && item.badge !== null && (
                  <span className={`px-2 py-0.5 rounded-full text-[10px] font-black ${
                    item.id === 'prescriptions' && pendingReviewsCount > 0 
                      ? 'bg-amber-500 text-slate-950 font-black animate-pulse' 
                      : 'bg-slate-800 text-purple-300 border border-slate-700'
                  }`}>
                    {item.badge}
                  </span>
                )}
              </button>
            );
          })}
        </nav>

        <div className="p-4 border-t border-slate-800/80 space-y-3">
          <div className="p-3 bg-slate-900 rounded-xl border border-slate-800 text-[11px] space-y-1 text-slate-400">
            <div className="font-bold text-slate-200">Admin Account</div>
            <div className="truncate text-purple-300 font-semibold">{adminEmail || 'admin@healthexpress.in'}</div>
          </div>
          <button
            onClick={handleLogout}
            className="w-full py-2.5 rounded-xl bg-rose-950/80 hover:bg-rose-900 text-rose-200 border border-rose-800/60 text-xs font-bold flex items-center justify-center gap-2 cursor-pointer transition-colors"
          >
            <LogOut className="w-3.5 h-3.5" />
            <span>Logout</span>
          </button>
        </div>
      </aside>

      {/* MAIN CONTENT AREA */}
      <main className="flex-1 overflow-y-auto p-4 sm:p-6 lg:p-8 space-y-6">
        
        {/* TOP APP BAR & GLOBAL CONTROLS */}
        <div className="flex flex-col sm:flex-row sm:items-center justify-between gap-4 bg-slate-800/80 p-5 rounded-3xl border border-slate-700/80 shadow-xl">
          <div className="flex items-center gap-3">
            <button onClick={() => setIsSidebarOpen(!isSidebarOpen)} className="md:hidden p-2 text-slate-300 hover:text-white bg-slate-900 rounded-xl">
              <Menu className="w-5 h-5" />
            </button>
            <div>
              <h1 className="text-xl font-black text-white tracking-tight uppercase">
                {activeNav === 'overview' && 'Operational Overview'}
                {activeNav === 'orders' && 'Orders & Transactions'}
                {activeNav === 'customers' && 'Customer Directory (360°)'}
                {activeNav === 'prescriptions' && 'Guest Prescriptions'}
                {activeNav === 'promotions' && 'Offers & Promotions Management'}
                {activeNav === 'payments' && 'Payment Gateway Transactions'}
                {activeNav === 'analytics' && 'Revenue & Order Analytics'}
                {activeNav === 'activity' && 'Event Logs'}
                {activeNav === 'settings' && 'System Configuration'}
              </h1>
              <p className="text-xs text-purple-300/80 font-medium">Real-time Supabase Production Data</p>
            </div>
          </div>

          <div className="flex flex-wrap items-center gap-3">
            <div className="flex items-center gap-1.5 bg-slate-900 px-3 py-2 rounded-xl border border-slate-700 text-xs font-bold text-slate-300">
              <Calendar className="w-3.5 h-3.5 text-purple-400" />
              <select
                value={dateRangeFilter}
                onChange={(e) => { setDateRangeFilter(e.target.value); setCurrentPage(1); }}
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

            <div className="relative w-full sm:w-64">
              <Search className="w-3.5 h-3.5 text-slate-400 absolute left-3 top-3" />
              <input
                type="text"
                value={searchQuery}
                onChange={(e) => { setSearchQuery(e.target.value); setCurrentPage(1); }}
                placeholder="Search name, phone, order code..."
                className="w-full pl-9 pr-3 py-2 rounded-xl bg-slate-900 border border-slate-700 text-xs text-white placeholder:text-slate-500 focus:outline-none focus:ring-1 focus:ring-purple-500"
              />
            </div>

            <button
              onClick={loadAdminData}
              disabled={isLoading}
              className="px-3.5 py-2 rounded-xl bg-slate-800 hover:bg-slate-700 text-purple-200 border border-slate-700 text-xs font-bold flex items-center gap-2 cursor-pointer transition-colors"
            >
              <RefreshCw className={`w-3.5 h-3.5 ${isLoading ? 'animate-spin' : ''}`} />
              <span>Refresh</span>
            </button>
          </div>
        </div>

        {/* DATABASE ERROR BANNER */}
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

        {/* TOP KPI SUMMARY CARDS */}
        <div className="grid grid-cols-1 sm:grid-cols-2 lg:grid-cols-4 gap-4">
          <div className="bg-slate-800/90 border border-slate-700/80 rounded-3xl p-5 space-y-2">
            <div className="flex items-center justify-between text-xs text-emerald-400 font-bold">
              <span>TOTAL PAID REVENUE</span>
              <DollarSign className="w-4 h-4 text-emerald-400" />
            </div>
            <div className="text-3xl font-black text-emerald-300">₹{totalRevenue.toLocaleString('en-IN')}</div>
            <div className="text-[11px] text-slate-400 font-medium">Today: <strong className="text-emerald-400">₹{todayRevenue.toLocaleString('en-IN')}</strong></div>
          </div>

          <div className="bg-slate-800/90 border border-slate-700/80 rounded-3xl p-5 space-y-2">
            <div className="flex items-center justify-between text-xs text-amber-400 font-bold">
              <span>COD PENDING COLLECTION</span>
              <Truck className="w-4 h-4 text-amber-400" />
            </div>
            <div className="text-3xl font-black text-amber-300">₹{codPendingCollection.toLocaleString('en-IN')}</div>
            <div className="text-[11px] text-slate-400 font-medium">COD Collected: <strong className="text-purple-300">₹{codCollected.toLocaleString('en-IN')}</strong></div>
          </div>

          <div className="bg-slate-800/90 border border-slate-700/80 rounded-3xl p-5 space-y-2">
            <div className="flex items-center justify-between text-xs text-purple-300 font-bold">
              <span>ACTIVE PROMO CODES</span>
              <Tag className="w-4 h-4 text-purple-400" />
            </div>
            <div className="text-3xl font-black text-white">{promoCodes.filter(p => p.is_active).length}</div>
            <div className="text-[11px] text-slate-400 font-medium flex items-center justify-between">
              <span>Total Promos: {promoCodes.length}</span>
              <span>Unlimited: {promoCodes.filter(p => !p.usage_limit).length}</span>
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
              <span>Registered Users: {registeredPatientsCount}</span>
            </div>
          </div>
        </div>

        {/* NAV SECTION: OFFERS & PROMOTIONS */}
        {activeNav === 'promotions' && (
          <div className="space-y-6">
            <div className="bg-slate-800/90 border border-slate-700/80 rounded-3xl p-6 flex flex-col sm:flex-row items-start sm:items-center justify-between gap-4 shadow-xl">
              <div>
                <h3 className="text-lg font-black text-white flex items-center gap-2">
                  <Tag className="w-5 h-5 text-purple-400" />
                  <span>Promo Codes & Coupon Management</span>
                </h3>
                <p className="text-xs text-slate-400 mt-1">
                  Create, edit, activate, or deactivate promotional coupons. Changes apply instantly to customer checkout without redeploying code.
                </p>
              </div>

              <button
                onClick={() => {
                  setEditingPromo(null);
                  setPromoFormData({
                    code: '',
                    discount_type: 'flat',
                    discount_value: '',
                    min_order_amount: '299',
                    max_discount: '',
                    valid_from: new Date().toISOString().slice(0, 10),
                    valid_until: '',
                    usage_limit: '',
                    is_active: true
                  });
                  setIsPromoModalOpen(true);
                }}
                className="px-5 py-2.5 rounded-2xl bg-purple-600 hover:bg-purple-700 text-white font-extrabold text-xs shadow-md transition-all flex items-center gap-2 cursor-pointer shrink-0"
              >
                <Plus className="w-4 h-4" />
                <span>Create Promo Code</span>
              </button>
            </div>

            <div className="bg-slate-800/90 border border-slate-700/80 rounded-3xl overflow-hidden shadow-xl">
              <div className="overflow-x-auto">
                <table className="w-full text-left text-xs text-slate-300">
                  <thead className="bg-slate-900 text-slate-400 font-extrabold uppercase border-b border-slate-700">
                    <tr>
                      <th className="p-4">Code</th>
                      <th className="p-4">Discount</th>
                      <th className="p-4">Min Order</th>
                      <th className="p-4">Usage</th>
                      <th className="p-4">Valid Until</th>
                      <th className="p-4">Status</th>
                      <th className="p-4 text-right">Actions</th>
                    </tr>
                  </thead>
                  <tbody className="divide-y divide-slate-700/60 font-medium">
                    {promoCodes.length === 0 ? (
                      <tr>
                        <td colSpan="7" className="p-8 text-center text-slate-400 italic">
                          No promo codes created yet. Click "Create Promo Code" to add a new offer.
                        </td>
                      </tr>
                    ) : (
                      promoCodes.map((p) => (
                        <tr key={p.id} className="hover:bg-slate-700/40 transition-colors">
                          <td className="p-4 font-black text-purple-300 text-sm">{p.code}</td>
                          <td className="p-4 font-extrabold text-white">
                            {p.discount_type === 'flat' ? `₹${p.discount_value} OFF` : `${p.discount_value}% OFF`}
                            {p.max_discount ? ` (Max ₹${p.max_discount})` : ''}
                          </td>
                          <td className="p-4">₹{p.min_order_amount || 0}</td>
                          <td className="p-4">
                            <span className="font-bold text-slate-200">
                              {p.used_count || 0} / {p.usage_limit || '∞'}
                            </span>
                          </td>
                          <td className="p-4 text-slate-300">
                            {p.valid_until ? new Date(p.valid_until).toLocaleDateString('en-IN') : 'Lifetime'}
                          </td>
                          <td className="p-4">
                            <span className={`px-2.5 py-1 rounded-full text-[10px] font-black uppercase ${
                              p.is_active ? 'bg-emerald-500/20 text-emerald-300 border border-emerald-500/40' : 'bg-slate-700 text-slate-400 border border-slate-600'
                            }`}>
                              {p.is_active ? 'ACTIVE' : 'INACTIVE'}
                            </span>
                          </td>
                          <td className="p-4 text-right space-x-2">
                            <button
                              onClick={() => handleTogglePromoStatus(p.id, !p.is_active)}
                              className={`px-3 py-1 rounded-xl text-[11px] font-bold cursor-pointer transition-colors ${
                                p.is_active ? 'bg-amber-950/80 text-amber-300 border border-amber-800' : 'bg-emerald-950/80 text-emerald-300 border border-emerald-800'
                              }`}
                            >
                              {p.is_active ? 'Disable' : 'Enable'}
                            </button>
                            <button
                              onClick={() => handleOpenEditPromoModal(p)}
                              className="px-3 py-1 rounded-xl bg-purple-900/80 hover:bg-purple-800 text-purple-200 border border-purple-700 text-[11px] font-bold cursor-pointer transition-colors"
                            >
                              Edit
                            </button>
                            <button
                              onClick={() => handleDeletePromo(p.id)}
                              className="px-3 py-1 rounded-xl bg-rose-950/80 hover:bg-rose-900 text-rose-300 border border-rose-800 text-[11px] font-bold cursor-pointer transition-colors"
                            >
                              Delete
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

        {/* NAV SECTION 1: OVERVIEW */}
        {activeNav === 'overview' && (
          <div className="grid grid-cols-1 lg:grid-cols-3 gap-6">
            <div className="lg:col-span-2 bg-slate-800/90 border border-slate-700/80 rounded-3xl p-6 space-y-4 shadow-xl">
              <div className="flex items-center justify-between border-b border-slate-700/80 pb-3">
                <div className="flex items-center gap-2">
                  <ShoppingBag className="w-5 h-5 text-purple-400" />
                  <h3 className="text-base font-black text-white">Recent Orders Stream</h3>
                </div>
                <button onClick={() => setActiveNav('orders')} className="text-xs font-bold text-purple-400 hover:underline flex items-center gap-1 cursor-pointer">
                  <span>View All Orders</span>
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

            <div className="bg-slate-800/90 border border-slate-700/80 rounded-3xl p-6 space-y-4 shadow-xl">
              <h3 className="text-base font-black text-white flex items-center gap-2 border-b border-slate-700/80 pb-3">
                <ShieldCheck className="w-5 h-5 text-purple-400" />
                <span>Quick System Actions</span>
              </h3>
              <div className="space-y-2">
                <button
                  onClick={() => {
                    setEditingPromo(null);
                    setPromoFormData({
                      code: '',
                      discount_type: 'flat',
                      discount_value: '',
                      min_order_amount: '299',
                      max_discount: '',
                      valid_from: new Date().toISOString().slice(0, 10),
                      valid_until: '',
                      usage_limit: '',
                      is_active: true
                    });
                    setIsPromoModalOpen(true);
                  }}
                  className="w-full p-3 bg-purple-900/40 hover:bg-purple-900/60 border border-purple-700/60 rounded-2xl text-left text-xs text-purple-200 font-bold transition-all flex items-center justify-between"
                >
                  <span className="flex items-center gap-2">
                    <Tag className="w-4 h-4 text-purple-400" />
                    <span>Create Promo Coupon</span>
                  </span>
                  <Plus className="w-4 h-4" />
                </button>
                <button
                  onClick={() => setActiveNav('orders')}
                  className="w-full p-3 bg-slate-900/60 hover:bg-slate-900 border border-slate-800 rounded-2xl text-left text-xs text-slate-300 font-bold transition-all flex items-center justify-between"
                >
                  <span className="flex items-center gap-2">
                    <ShoppingBag className="w-4 h-4 text-purple-400" />
                    <span>Manage Orders ({orders.length})</span>
                  </span>
                  <ChevronRight className="w-4 h-4" />
                </button>
              </div>
            </div>
          </div>
        )}

      </main>

      {/* CREATE / EDIT PROMO MODAL */}
      {isPromoModalOpen && (
        <div className="fixed inset-0 z-[100000] flex items-center justify-center p-4 bg-slate-950/80 backdrop-blur-xs animate-in fade-in duration-200">
          <div className="w-full max-w-lg bg-slate-900 border border-purple-500/40 rounded-3xl shadow-2xl overflow-hidden text-left space-y-0">
            <div className="p-5 bg-gradient-to-r from-purple-950 to-slate-900 border-b border-purple-800/40 flex items-center justify-between text-white">
              <div className="flex items-center gap-3">
                <Tag className="w-6 h-6 text-purple-400" />
                <div>
                  <h3 className="text-lg font-black text-white">{editingPromo ? 'Edit Promo Code' : 'Create New Promo Code'}</h3>
                  <p className="text-xs text-purple-300 font-medium">Configure discount rule and validity</p>
                </div>
              </div>
              <button onClick={() => setIsPromoModalOpen(false)} className="p-1 text-slate-400 hover:text-white rounded-lg cursor-pointer">
                <X className="w-5 h-5" />
              </button>
            </div>

            <form onSubmit={handleSavePromo} className="p-6 space-y-4 text-xs">
              <div>
                <label className="block text-slate-300 font-bold mb-1">Promo Code *</label>
                <input
                  type="text"
                  required
                  value={promoFormData.code}
                  onChange={(e) => setPromoFormData({ ...promoFormData, code: e.target.value.toUpperCase() })}
                  placeholder="e.g., HEALTH50"
                  className="w-full px-3.5 py-2.5 rounded-xl bg-slate-950 border border-slate-700 text-white font-black uppercase text-sm focus:outline-none focus:ring-1 focus:ring-purple-500"
                />
              </div>

              <div className="grid grid-cols-2 gap-3">
                <div>
                  <label className="block text-slate-300 font-bold mb-1">Discount Type *</label>
                  <select
                    value={promoFormData.discount_type}
                    onChange={(e) => setPromoFormData({ ...promoFormData, discount_type: e.target.value })}
                    className="w-full px-3.5 py-2.5 rounded-xl bg-slate-950 border border-slate-700 text-white font-bold focus:outline-none focus:ring-1 focus:ring-purple-500"
                  >
                    <option value="flat">Flat Discount (₹)</option>
                    <option value="percentage">Percentage Discount (%)</option>
                  </select>
                </div>

                <div>
                  <label className="block text-slate-300 font-bold mb-1">Discount Value *</label>
                  <input
                    type="number"
                    required
                    min="1"
                    value={promoFormData.discount_value}
                    onChange={(e) => setPromoFormData({ ...promoFormData, discount_value: e.target.value })}
                    placeholder={promoFormData.discount_type === 'flat' ? '50 (₹)' : '10 (%)'}
                    className="w-full px-3.5 py-2.5 rounded-xl bg-slate-950 border border-slate-700 text-white font-extrabold focus:outline-none focus:ring-1 focus:ring-purple-500"
                  />
                </div>
              </div>

              <div className="grid grid-cols-2 gap-3">
                <div>
                  <label className="block text-slate-300 font-bold mb-1">Minimum Order Amount (₹)</label>
                  <input
                    type="number"
                    min="0"
                    value={promoFormData.min_order_amount}
                    onChange={(e) => setPromoFormData({ ...promoFormData, min_order_amount: e.target.value })}
                    placeholder="299"
                    className="w-full px-3.5 py-2.5 rounded-xl bg-slate-950 border border-slate-700 text-white font-bold focus:outline-none focus:ring-1 focus:ring-purple-500"
                  />
                </div>

                <div>
                  <label className="block text-slate-300 font-bold mb-1">Max Discount Cap (₹)</label>
                  <input
                    type="number"
                    min="0"
                    value={promoFormData.max_discount}
                    onChange={(e) => setPromoFormData({ ...promoFormData, max_discount: e.target.value })}
                    placeholder={promoFormData.discount_type === 'percentage' ? '200 (Required for %)' : 'Optional'}
                    className="w-full px-3.5 py-2.5 rounded-xl bg-slate-950 border border-slate-700 text-white font-bold focus:outline-none focus:ring-1 focus:ring-purple-500"
                  />
                </div>
              </div>

              <div className="grid grid-cols-2 gap-3">
                <div>
                  <label className="block text-slate-300 font-bold mb-1">Valid Until (Optional)</label>
                  <input
                    type="date"
                    value={promoFormData.valid_until ? promoFormData.valid_until.slice(0, 10) : ''}
                    onChange={(e) => setPromoFormData({ ...promoFormData, valid_until: e.target.value })}
                    className="w-full px-3.5 py-2.5 rounded-xl bg-slate-950 border border-slate-700 text-white font-bold focus:outline-none focus:ring-1 focus:ring-purple-500"
                  />
                </div>

                <div>
                  <label className="block text-slate-300 font-bold mb-1">Usage Limit (Optional)</label>
                  <input
                    type="number"
                    min="1"
                    value={promoFormData.usage_limit}
                    onChange={(e) => setPromoFormData({ ...promoFormData, usage_limit: e.target.value })}
                    placeholder="e.g., 500 (Blank = ∞)"
                    className="w-full px-3.5 py-2.5 rounded-xl bg-slate-950 border border-slate-700 text-white font-bold focus:outline-none focus:ring-1 focus:ring-purple-500"
                  />
                </div>
              </div>

              <div className="flex items-center gap-2 pt-2">
                <input
                  type="checkbox"
                  id="is_active_toggle"
                  checked={promoFormData.is_active}
                  onChange={(e) => setPromoFormData({ ...promoFormData, is_active: e.target.checked })}
                  className="w-4 h-4 rounded text-purple-600 focus:ring-purple-500"
                />
                <label htmlFor="is_active_toggle" className="text-slate-200 font-bold">Promo Code Active Immediately</label>
              </div>

              <div className="p-4 bg-slate-950 border-t border-slate-800 flex justify-end gap-3 pt-4">
                <button
                  type="button"
                  onClick={() => setIsPromoModalOpen(false)}
                  className="px-4 py-2.5 bg-slate-800 hover:bg-slate-700 text-slate-200 font-bold text-xs rounded-xl transition-colors cursor-pointer"
                >
                  Cancel
                </button>
                <button
                  type="submit"
                  className="px-5 py-2.5 bg-purple-600 hover:bg-purple-700 text-white font-extrabold text-xs rounded-xl shadow-md transition-colors cursor-pointer"
                >
                  {editingPromo ? 'Update Promo Code' : 'Save & Publish Promo Code'}
                </button>
              </div>
            </form>
          </div>
        </div>
      )}

      {/* CONFIRMATION MODAL FOR COD COLLECTION */}
      {codConfirmOrder && (
        <div className="fixed inset-0 z-[100000] flex items-center justify-center p-4 bg-slate-950/80 backdrop-blur-xs animate-in fade-in duration-200">
          <div className="w-full max-w-md bg-slate-900 border border-amber-500/40 rounded-3xl p-6 shadow-2xl space-y-4 text-left">
            <div className="flex items-center gap-3">
              <div className="w-10 h-10 rounded-2xl bg-amber-500/20 text-amber-400 border border-amber-500/30 flex items-center justify-center shrink-0">
                <Truck className="w-5 h-5" />
              </div>
              <div>
                <h3 className="text-base font-black text-white">Collect Cash on Delivery Payment</h3>
                <p className="text-xs text-amber-300/80">Order Reference: {codConfirmOrder.order_code}</p>
              </div>
            </div>

            <div className="p-4 bg-slate-950 rounded-2xl border border-slate-800 text-xs text-slate-300 space-y-1">
              <div>Customer: <strong className="text-white">{codConfirmOrder.customer_name}</strong></div>
              <div>Phone: <strong className="text-slate-200">{codConfirmOrder.customer_phone}</strong></div>
              <div>Amount Collected: <strong className="text-emerald-400 text-sm">₹{codConfirmOrder.total_amount}</strong></div>
            </div>

            <p className="text-xs text-slate-400">
              This action will invoke the server-side RPC function <code className="text-amber-300 font-mono">mark_cod_payment_collected()</code> to update the database state to PAID and CONFIRMED.
            </p>

            <div className="flex items-center justify-end gap-3 pt-2">
              <button
                disabled={isCollectingCod}
                onClick={() => setCodConfirmOrder(null)}
                className="px-4 py-2.5 rounded-xl bg-slate-800 hover:bg-slate-700 text-slate-300 font-bold text-xs cursor-pointer transition-colors"
              >
                Cancel
              </button>
              <button
                disabled={isCollectingCod}
                onClick={executeMarkCodCollected}
                className="px-4 py-2.5 rounded-xl bg-amber-600 hover:bg-amber-700 disabled:opacity-50 text-slate-950 font-black text-xs cursor-pointer transition-colors flex items-center gap-2"
              >
                {isCollectingCod ? <RefreshCw className="w-4 h-4 animate-spin" /> : <Check className="w-4 h-4" />}
                <span>Confirm Collection</span>
              </button>
            </div>
          </div>
        </div>
      )}

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
