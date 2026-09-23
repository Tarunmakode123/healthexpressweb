import React, { useState, useEffect } from 'react';
import { 
  ShieldCheck, Lock, DollarSign, ShoppingBag, FileText, Users, 
  RefreshCw, CheckCircle2, AlertCircle, Clock, Search, Filter, 
  ExternalLink, Download, ChevronRight, Eye, Phone, Mail, MapPin, Truck, CreditCard, LogOut
} from 'lucide-react';
import { 
  fetchAdminOrders, 
  updateAdminOrderStatus, 
  fetchAdminPrescriptions, 
  updateAdminEnquiryStatus, 
  fetchAdminPatients 
} from '../services/adminService';
import { openWhatsApp } from '../utils/whatsapp';

export default function AdminDashboardPage() {
  const [isAuthenticated, setIsAuthenticated] = useState(() => {
    return localStorage.getItem('hex_admin_auth') === 'true';
  });
  const [passcode, setPasscode] = useState('');
  const [authError, setAuthError] = useState('');

  const [activeTab, setActiveTab] = useState('orders'); // 'orders' | 'prescriptions' | 'patients'
  const [orderFilter, setOrderFilter] = useState('ALL'); // 'ALL' | 'COD' | 'ONLINE' | 'PAID' | 'PENDING' | 'FAILED'

  const [orders, setOrders] = useState([]);
  const [prescriptions, setPrescriptions] = useState([]);
  const [patients, setPatients] = useState([]);
  const [isLoading, setIsLoading] = useState(false);
  const [searchQuery, setSearchQuery] = useState('');

  // Handle Passcode Authentication
  const handlePasscodeSubmit = (e) => {
    e.preventDefault();
    if (passcode === 'admin123' || passcode === 'healthexpress2026') {
      setIsAuthenticated(true);
      localStorage.setItem('hex_admin_auth', 'true');
      setAuthError('');
    } else {
      setAuthError('Invalid Admin Passcode. Please try again.');
    }
  };

  const handleLogout = () => {
    setIsAuthenticated(false);
    localStorage.removeItem('hex_admin_auth');
  };

  // Load Admin Telemetry Data
  const loadAdminData = async () => {
    setIsLoading(true);
    try {
      const [ordRes, presRes, patRes] = await Promise.all([
        fetchAdminOrders(),
        fetchAdminPrescriptions(),
        fetchAdminPatients()
      ]);

      if (ordRes.success) setOrders(ordRes.data || []);
      if (presRes.success) setPrescriptions(presRes.data || []);
      if (patRes.success) setPatients(patRes.data || []);
    } catch (err) {
      console.error('Failed to load admin data:', err);
    } finally {
      setIsLoading(false);
    }
  };

  useEffect(() => {
    if (isAuthenticated) {
      loadAdminData();
    }
  }, [isAuthenticated]);

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

  // Computations
  const totalRevenue = orders
    .filter((o) => o.payment_status === 'PAID' || o.order_status === 'CONFIRMED')
    .reduce((acc, o) => acc + Number(o.total_amount || 0), 0);

  const codOrdersCount = orders.filter((o) => {
    const payMethod = o.payments?.[0]?.payment_method || o.payment_method;
    return payMethod === 'COD' || o.payment_mode === 'COD';
  }).length;

  const onlineOrdersCount = orders.length - codOrdersCount;

  const paidOrdersCount = orders.filter((o) => o.payment_status === 'PAID').length;

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

    if (searchQuery.trim()) {
      const q = searchQuery.toLowerCase();
      const matchName = o.customer_name?.toLowerCase().includes(q);
      const matchPhone = o.customer_phone?.toLowerCase().includes(q);
      const matchCode = o.order_code?.toLowerCase().includes(q);
      return matchName || matchPhone || matchCode;
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

  // PASSCODE AUTHENTICATION CARD (IF NOT AUTHENTICATED)
  if (!isAuthenticated) {
    return (
      <div className="min-h-[85vh] flex items-center justify-center p-4 bg-slate-900">
        <div className="w-full max-w-md bg-white rounded-3xl p-8 shadow-2xl space-y-6 text-left border border-purple-200">
          <div className="text-center space-y-2">
            <div className="w-14 h-14 rounded-2xl bg-purple-100 text-purple-800 flex items-center justify-center mx-auto border border-purple-200">
              <ShieldCheck className="w-8 h-8" />
            </div>
            <h2 className="text-2xl font-black text-slate-900">Health Express Team Portal</h2>
            <p className="text-xs text-slate-500 font-medium">
              Enter internal security passcode to access transactions and patient data.
            </p>
          </div>

          {authError && (
            <div className="p-3 bg-rose-50 border border-rose-200 rounded-xl text-xs text-rose-800 font-bold flex items-center gap-2">
              <AlertCircle className="w-4 h-4 text-rose-600 shrink-0" />
              <span>{authError}</span>
            </div>
          )}

          <form onSubmit={handlePasscodeSubmit} className="space-y-4">
            <div>
              <label className="block text-xs font-bold text-slate-700 mb-1">Admin Security Passcode</label>
              <input
                type="password"
                required
                value={passcode}
                onChange={(e) => setPasscode(e.target.value)}
                placeholder="Enter Passcode (default: admin123)"
                className="w-full px-4 py-3 rounded-xl border border-slate-300 text-xs font-medium focus:outline-none focus:ring-2 focus:ring-purple-600"
              />
            </div>

            <button
              type="submit"
              className="w-full py-3.5 rounded-2xl bg-purple-900 hover:bg-purple-950 text-white font-extrabold text-xs shadow-lg transition-transform active:scale-95 cursor-pointer flex items-center justify-center gap-2"
            >
              <Lock className="w-4 h-4" />
              <span>Sign In to Admin Portal</span>
            </button>
          </form>

          <p className="text-[11px] text-center text-slate-400 font-medium">
            Protected internal endpoint • Default passcode: <code className="bg-slate-100 px-1 py-0.5 rounded text-slate-800 font-bold">admin123</code>
          </p>
        </div>
      </div>
    );
  }

  // MAIN ADMIN DASHBOARD UI
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
                  LIVE TELEMETRY
                </span>
              </div>
              <p className="text-xs text-purple-300/80">Backend Team Control Center & Order Analytics</p>
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
              <span>Exit Admin</span>
            </button>
          </div>
        </div>

        {/* METRICS & REVENUE SUMMARY COUNTERS */}
        <div className="grid grid-cols-1 sm:grid-cols-2 lg:grid-cols-4 gap-4">
          
          <div className="bg-slate-800/90 border border-slate-700/80 rounded-3xl p-5 space-y-2">
            <div className="flex items-center justify-between text-xs text-purple-300 font-bold">
              <span>TOTAL REVENUE (₹)</span>
              <DollarSign className="w-4 h-4 text-emerald-400" />
            </div>
            <div className="text-3xl font-black text-white">₹{totalRevenue.toLocaleString('en-IN')}</div>
            <p className="text-[11px] text-slate-400 font-medium">Verified Paid & Confirmed Orders</p>
          </div>

          <div className="bg-slate-800/90 border border-slate-700/80 rounded-3xl p-5 space-y-2">
            <div className="flex items-center justify-between text-xs text-purple-300 font-bold">
              <span>TOTAL ORDERS</span>
              <ShoppingBag className="w-4 h-4 text-purple-400" />
            </div>
            <div className="text-3xl font-black text-white">{orders.length}</div>
            <div className="flex items-center gap-2 text-[11px] text-slate-400 font-medium">
              <span className="text-purple-300 font-bold">{onlineOrdersCount} Online</span>
              <span>•</span>
              <span className="text-emerald-400 font-bold">{codOrdersCount} COD</span>
            </div>
          </div>

          <div className="bg-slate-800/90 border border-slate-700/80 rounded-3xl p-5 space-y-2">
            <div className="flex items-center justify-between text-xs text-purple-300 font-bold">
              <span>GUEST PRESCRIPTIONS</span>
              <FileText className="w-4 h-4 text-amber-400" />
            </div>
            <div className="text-3xl font-black text-white">{prescriptions.length}</div>
            <p className="text-[11px] text-slate-400 font-medium">Uploaded Files & Lead Submissions</p>
          </div>

          <div className="bg-slate-800/90 border border-slate-700/80 rounded-3xl p-5 space-y-2">
            <div className="flex items-center justify-between text-xs text-purple-300 font-bold">
              <span>REGISTERED PATIENTS</span>
              <Users className="w-4 h-4 text-indigo-400" />
            </div>
            <div className="text-3xl font-black text-white">{patients.length}</div>
            <p className="text-[11px] text-slate-400 font-medium">Patient Accounts in System</p>
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
              {['ALL', 'COD', 'ONLINE', 'PAID', 'PENDING', 'FAILED'].map((chip) => (
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
                      <th className="p-4">Customer Details</th>
                      <th className="p-4">Purchased Items</th>
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
                          No orders match the selected filter.
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
                            <td className="p-4 font-black text-purple-300 whitespace-nowrap">
                              <div>{ord.order_code}</div>
                              <div className="text-[10px] text-slate-400 font-normal">
                                {new Date(ord.created_at).toLocaleString('en-IN', { dateStyle: 'short', timeStyle: 'short' })}
                              </div>
                            </td>

                            <td className="p-4">
                              <div className="font-extrabold text-white">{ord.customer_name}</div>
                              <div className="text-[11px] text-slate-300 font-semibold">{ord.customer_phone}</div>
                              {ord.customer_email && <div className="text-[10px] text-slate-400">{ord.customer_email}</div>}
                            </td>

                            <td className="p-4 max-w-xs">
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

                            <td className="p-4 whitespace-nowrap">
                              <button
                                onClick={() => {
                                  const msg = `Namaste ${ord.customer_name}! Health Express Care Team here regarding your Order ${ord.order_code} (₹${ord.total_amount}). We are coordinating your service slot.`;
                                  openWhatsApp(msg);
                                }}
                                className="px-3 py-1.5 rounded-lg bg-emerald-600 hover:bg-emerald-700 text-white font-bold text-[11px] flex items-center gap-1 cursor-pointer transition-colors"
                              >
                                <span>WhatsApp Customer</span>
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
                        No guest prescriptions found.
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
                                      onClick={() => alert(`Opening secure storage file: ${f.file_name}`)}
                                      className="p-1 hover:text-white text-slate-400 cursor-pointer"
                                      title="View / Download File"
                                    >
                                      <Download className="w-3.5 h-3.5" />
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
                  </tr>
                </thead>
                <tbody className="divide-y divide-slate-700/60 text-slate-200">
                  {patients.length === 0 ? (
                    <tr>
                      <td colSpan={6} className="p-8 text-center text-slate-400 font-medium">
                        No registered patients found.
                      </td>
                    </tr>
                  ) : (
                    patients.map((pat) => (
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
                      </tr>
                    ))
                  )}
                </tbody>
              </table>
            </div>
          </div>
        )}

      </div>
    </div>
  );
}
