import React, { useState, useEffect } from 'react';
import { useNavigate, Link } from 'react-router-dom';
import { 
  User, Phone, Mail, FileText, ShoppingBag, Activity, ShieldCheck, 
  Calendar, ArrowRight, Download, Eye, ExternalLink, RefreshCw, AlertCircle, 
  CheckCircle2, Clock, Package, Sparkles, LogOut, MessageSquare
} from 'lucide-react';
import { useAuth } from '../context/AuthContext';
import { 
  fetchCustomerHealthRecords, 
  fetchCustomerOrders, 
  fetchCustomerOverviewStats 
} from '../services/customerAccountService';
import { openWhatsApp, DEFAULT_MESSAGES } from '../utils/whatsapp';

export default function CustomerDashboardPage() {
  const navigate = useNavigate();
  const { user, isLoggedIn, logout, isLoading: authLoading } = useAuth();

  const [activeTab, setActiveTab] = useState('overview'); // 'overview' | 'records' | 'prescriptions' | 'orders'
  const [records, setRecords] = useState([]);
  const [orders, setOrders] = useState([]);
  const [stats, setStats] = useState({
    totalFiles: 0,
    reportsCount: 0,
    prescriptionsCount: 0,
    latestUpload: null,
    ordersCount: 0,
    paidOrdersCount: 0
  });

  const [isLoading, setIsLoading] = useState(true);
  const [error, setError] = useState(null);

  useEffect(() => {
    if (!authLoading && !isLoggedIn) {
      navigate('/auth');
      return;
    }

    if (isLoggedIn) {
      loadCustomerData();
    }
  }, [isLoggedIn, authLoading, navigate]);

  const loadCustomerData = async () => {
    setIsLoading(true);
    setError(null);
    try {
      const [recRes, ordRes, statRes] = await Promise.all([
        fetchCustomerHealthRecords(),
        fetchCustomerOrders(),
        fetchCustomerOverviewStats()
      ]);

      if (!recRes.success) console.warn('Health records error:', recRes.error);
      if (!ordRes.success) console.warn('Orders error:', ordRes.error);

      setRecords(recRes.data || []);
      setOrders(ordRes.data || []);
      if (statRes.success) setStats(statRes.stats);

    } catch (err) {
      console.error('Error loading account dashboard:', err);
      setError('We encountered an error loading your account activity. Please try again.');
    } finally {
      setIsLoading(false);
    }
  };

  if (authLoading || isLoading) {
    return (
      <div className="min-h-[75vh] flex items-center justify-center p-6 bg-slate-50">
        <div className="text-center space-y-4">
          <div className="w-12 h-12 rounded-full bg-purple-100 text-purple-700 flex items-center justify-center mx-auto animate-spin">
            <RefreshCw className="w-6 h-6" />
          </div>
          <p className="text-xs font-bold text-slate-600">Loading your Health Express account...</p>
        </div>
      </div>
    );
  }

  return (
    <div className="min-h-screen bg-slate-50/70 py-8 sm:py-12 px-4 sm:px-6 lg:px-8">
      <div className="max-w-7xl mx-auto space-y-8">
        
        {/* Top Header & Customer Profile Banner */}
        <div className="bg-gradient-to-r from-purple-900 via-purple-800 to-indigo-950 rounded-3xl p-6 sm:p-8 text-white shadow-xl relative overflow-hidden">
          <div className="absolute top-0 right-0 w-80 h-80 bg-purple-500/10 rounded-full blur-3xl pointer-events-none" />
          
          <div className="relative z-10 flex flex-col md:flex-row md:items-center justify-between gap-6">
            <div className="flex items-start gap-4">
              <div className="w-16 h-16 rounded-2xl bg-purple-600/80 border border-purple-400/30 flex items-center justify-center text-white text-2xl font-black shadow-md shrink-0">
                {user?.name ? user.name.charAt(0).toUpperCase() : 'U'}
              </div>
              
              <div className="space-y-1">
                <div className="flex items-center gap-2 flex-wrap">
                  <h1 className="text-2xl sm:text-3xl font-extrabold text-white">
                    {user?.name || 'Health Express Member'}
                  </h1>
                  <span className="px-2.5 py-0.5 rounded-full bg-emerald-500/20 border border-emerald-400/40 text-emerald-300 text-[10px] font-black uppercase tracking-wider">
                    Verified Account
                  </span>
                </div>

                <div className="flex items-center gap-4 text-xs text-purple-200/90 flex-wrap pt-0.5">
                  {user?.phone && (
                    <span className="flex items-center gap-1">
                      <Phone className="w-3.5 h-3.5 text-purple-300" />
                      <span>{user.phone}</span>
                    </span>
                  )}
                  {user?.email && (
                    <span className="flex items-center gap-1">
                      <Mail className="w-3.5 h-3.5 text-purple-300" />
                      <span>{user.email}</span>
                    </span>
                  )}
                </div>
              </div>
            </div>

            <div className="flex items-center gap-3 shrink-0">
              <button
                onClick={() => openWhatsApp(DEFAULT_MESSAGES.general)}
                className="py-2.5 px-4 rounded-xl bg-emerald-600 hover:bg-emerald-700 text-white font-bold text-xs flex items-center gap-2 shadow-sm transition-all"
              >
                <MessageSquare className="w-4 h-4 fill-current" />
                <span>Care Manager</span>
              </button>

              <button
                onClick={logout}
                className="py-2.5 px-4 rounded-xl bg-purple-900/80 hover:bg-rose-900 text-purple-200 hover:text-white font-bold text-xs flex items-center gap-2 border border-purple-700/50 transition-all"
              >
                <LogOut className="w-4 h-4" />
                <span>Sign Out</span>
              </button>
            </div>
          </div>
        </div>

        {/* Global Error Notice if any */}
        {error && (
          <div className="bg-rose-50 border border-rose-200 p-4 rounded-2xl flex items-center justify-between text-rose-800 text-xs font-semibold">
            <div className="flex items-center gap-2">
              <AlertCircle className="w-4 h-4 text-rose-600" />
              <span>{error}</span>
            </div>
            <button onClick={loadCustomerData} className="text-purple-700 underline font-bold">Retry</button>
          </div>
        )}

        {/* Unified Dashboard Navigation Tabs */}
        <div className="flex items-center gap-2 border-b border-slate-200 overflow-x-auto pb-1">
          {[
            { id: 'overview', label: 'Overview', icon: Activity },
            { id: 'records', label: `Health Records (${stats.totalFiles})`, icon: FileText },
            { id: 'prescriptions', label: `Prescriptions (${records.length})`, icon: Sparkles },
            { id: 'orders', label: `My Orders (${orders.length})`, icon: ShoppingBag }
          ].map((tab) => {
            const Icon = tab.icon;
            const isActive = activeTab === tab.id;
            return (
              <button
                key={tab.id}
                onClick={() => setActiveTab(tab.id)}
                className={`py-3 px-5 rounded-2xl text-xs font-extrabold flex items-center gap-2 transition-all whitespace-nowrap cursor-pointer ${
                  isActive
                    ? 'bg-purple-800 text-white shadow-sm'
                    : 'text-slate-600 hover:text-purple-900 hover:bg-white'
                }`}
              >
                <Icon className="w-4 h-4" />
                <span>{tab.label}</span>
              </button>
            );
          })}
        </div>

        {/* TAB 1: OVERVIEW & METRICS */}
        {activeTab === 'overview' && (
          <div className="space-y-6 animate-in fade-in duration-200">
            {/* Quick Metrics Grid */}
            <div className="grid grid-cols-2 md:grid-cols-4 gap-4">
              <div className="bg-white p-5 rounded-3xl border border-purple-100 shadow-xs space-y-1">
                <span className="text-[11px] font-bold text-slate-500 uppercase tracking-wider">Total Health Files</span>
                <p className="text-3xl font-black text-purple-950">{stats.totalFiles}</p>
                <p className="text-[10px] text-slate-400 font-medium">Uploaded documents & reports</p>
              </div>

              <div className="bg-white p-5 rounded-3xl border border-purple-100 shadow-xs space-y-1">
                <span className="text-[11px] font-bold text-slate-500 uppercase tracking-wider">Prescriptions</span>
                <p className="text-3xl font-black text-purple-950">{stats.prescriptionsCount}</p>
                <p className="text-[10px] text-slate-400 font-medium">Submitted for review</p>
              </div>

              <div className="bg-white p-5 rounded-3xl border border-purple-100 shadow-xs space-y-1">
                <span className="text-[11px] font-bold text-slate-500 uppercase tracking-wider">Total Orders</span>
                <p className="text-3xl font-black text-purple-950">{stats.ordersCount}</p>
                <p className="text-[10px] text-emerald-600 font-bold">{stats.paidOrdersCount} Paid & Confirmed</p>
              </div>

              <div className="bg-white p-5 rounded-3xl border border-purple-100 shadow-xs space-y-1">
                <span className="text-[11px] font-bold text-slate-500 uppercase tracking-wider">Latest Upload</span>
                <p className="text-sm font-extrabold text-slate-900 pt-1">
                  {stats.latestUpload ? new Date(stats.latestUpload).toLocaleDateString() : 'No uploads yet'}
                </p>
                <p className="text-[10px] text-slate-400 font-medium">Activity timeline</p>
              </div>
            </div>

            {/* Overview Sections Preview */}
            <div className="grid grid-cols-1 lg:grid-cols-2 gap-6">
              
              {/* Recent Health Records Card */}
              <div className="bg-white rounded-3xl p-6 border border-purple-100 shadow-sm space-y-4">
                <div className="flex items-center justify-between">
                  <h3 className="text-base font-extrabold text-slate-900 flex items-center gap-2">
                    <FileText className="w-5 h-5 text-purple-700" />
                    <span>Recent Health Records</span>
                  </h3>
                  <button 
                    onClick={() => setActiveTab('records')}
                    className="text-xs font-bold text-purple-700 hover:text-purple-900 flex items-center gap-1"
                  >
                    <span>View All</span>
                    <ArrowRight className="w-3.5 h-3.5" />
                  </button>
                </div>

                {records.length === 0 ? (
                  <div className="text-center py-8 bg-slate-50 rounded-2xl border border-dashed border-slate-200 space-y-2">
                    <FileText className="w-8 h-8 text-slate-300 mx-auto" />
                    <p className="text-xs font-bold text-slate-600">No health records yet.</p>
                    <p className="text-[11px] text-slate-400">Upload your prescription or lab test report to get started.</p>
                  </div>
                ) : (
                  <div className="space-y-3">
                    {records.slice(0, 3).map((item) => (
                      <div key={item.id} className="p-3.5 rounded-2xl bg-slate-50 border border-slate-100 flex items-center justify-between">
                        <div className="flex items-center gap-3">
                          <div className="w-9 h-9 rounded-xl bg-purple-100 text-purple-800 flex items-center justify-center font-bold text-xs shrink-0">
                            📄
                          </div>
                          <div>
                            <h4 className="text-xs font-bold text-slate-900 line-clamp-1">{item.fileName}</h4>
                            <p className="text-[10px] text-slate-500">{new Date(item.uploadDate).toLocaleDateString()}</p>
                          </div>
                        </div>
                        {item.signedUrl && (
                          <a
                            href={item.signedUrl}
                            target="_blank"
                            rel="noopener noreferrer"
                            className="p-2 rounded-xl bg-purple-50 text-purple-700 hover:bg-purple-100 transition-colors cursor-pointer"
                          >
                            <ExternalLink className="w-4 h-4" />
                          </a>
                        )}
                      </div>
                    ))}
                  </div>
                )}
              </div>

              {/* Recent Orders Card */}
              <div className="bg-white rounded-3xl p-6 border border-purple-100 shadow-sm space-y-4">
                <div className="flex items-center justify-between">
                  <h3 className="text-base font-extrabold text-slate-900 flex items-center gap-2">
                    <ShoppingBag className="w-5 h-5 text-purple-700" />
                    <span>Recent Purchases & Orders</span>
                  </h3>
                  <button 
                    onClick={() => setActiveTab('orders')}
                    className="text-xs font-bold text-purple-700 hover:text-purple-900 flex items-center gap-1"
                  >
                    <span>View All</span>
                    <ArrowRight className="w-3.5 h-3.5" />
                  </button>
                </div>

                {orders.length === 0 ? (
                  <div className="text-center py-8 bg-slate-50 rounded-2xl border border-dashed border-slate-200 space-y-2">
                    <ShoppingBag className="w-8 h-8 text-slate-300 mx-auto" />
                    <p className="text-xs font-bold text-slate-600">No orders yet.</p>
                    <p className="text-[11px] text-slate-400">Browse diagnostic services and health checkup packages.</p>
                    <div className="pt-2">
                      <Link to="/services" className="px-4 py-2 rounded-xl bg-purple-700 text-white font-bold text-xs inline-block">
                        Explore Services
                      </Link>
                    </div>
                  </div>
                ) : (
                  <div className="space-y-3">
                    {orders.slice(0, 3).map((ord) => (
                      <div key={ord.id} className="p-3.5 rounded-2xl bg-slate-50 border border-slate-100 flex items-center justify-between">
                        <div>
                          <div className="flex items-center gap-2">
                            <span className="text-xs font-black text-purple-950">{ord.order_code}</span>
                            <span className={`px-2 py-0.5 rounded-full text-[9px] font-black uppercase ${
                              ord.payment_status === 'PAID' ? 'bg-emerald-100 text-emerald-800' : 'bg-amber-100 text-amber-800'
                            }`}>
                              {ord.payment_status}
                            </span>
                          </div>
                          <p className="text-[10px] text-slate-500 pt-0.5">{new Date(ord.created_at).toLocaleDateString()}</p>
                        </div>
                        <span className="text-sm font-black text-slate-900">₹{ord.total_amount}</span>
                      </div>
                    ))}
                  </div>
                )}
              </div>

            </div>
          </div>
        )}

        {/* TAB 2: HEALTH RECORDS */}
        {activeTab === 'records' && (
          <div className="bg-white rounded-3xl p-6 border border-purple-100 shadow-sm space-y-6 animate-in fade-in duration-200">
            <div className="flex items-center justify-between">
              <div>
                <h2 className="text-xl font-extrabold text-slate-900">Health Records & Documents</h2>
                <p className="text-xs text-slate-500">Encrypted personal health documents and uploaded medical reports.</p>
              </div>
            </div>

            {records.length === 0 ? (
              <div className="text-center py-16 bg-slate-50 rounded-3xl border border-dashed border-slate-200 space-y-3">
                <FileText className="w-12 h-12 text-purple-300 mx-auto" />
                <h3 className="text-base font-extrabold text-slate-900">No health records yet.</h3>
                <p className="text-xs text-slate-500 max-w-sm mx-auto">
                  When you upload prescriptions or receive lab reports, they will securely appear here.
                </p>
              </div>
            ) : (
              <div className="grid grid-cols-1 md:grid-cols-2 lg:grid-cols-3 gap-4">
                {records.map((item) => (
                  <div key={item.id} className="p-5 rounded-2xl bg-purple-50/40 border border-purple-100 space-y-3 flex flex-col justify-between">
                    <div className="space-y-2">
                      <div className="flex items-center justify-between">
                        <span className="px-2.5 py-0.5 rounded-full bg-purple-100 text-purple-800 text-[10px] font-black uppercase">
                          {item.enquiryCode}
                        </span>
                        <span className="text-[10px] font-bold text-slate-400">
                          {new Date(item.uploadDate).toLocaleDateString()}
                        </span>
                      </div>
                      
                      <h4 className="text-sm font-extrabold text-slate-900 line-clamp-2">{item.fileName}</h4>
                      <p className="text-[11px] text-slate-500 uppercase font-semibold">Format: {item.fileType.split('/')[1] || 'Document'}</p>
                    </div>

                    {item.signedUrl && (
                      <a
                        href={item.signedUrl}
                        target="_blank"
                        rel="noopener noreferrer"
                        className="w-full py-2.5 rounded-xl bg-purple-700 hover:bg-purple-800 text-white font-bold text-xs flex items-center justify-center gap-2 shadow-xs transition-colors cursor-pointer"
                      >
                        <Eye className="w-4 h-4" />
                        <span>View Document</span>
                      </a>
                    )}
                  </div>
                ))}
              </div>
            )}
          </div>
        )}

        {/* TAB 3: PRESCRIPTIONS */}
        {activeTab === 'prescriptions' && (
          <div className="bg-white rounded-3xl p-6 border border-purple-100 shadow-sm space-y-6 animate-in fade-in duration-200">
            <div>
              <h2 className="text-xl font-extrabold text-slate-900">Prescription History</h2>
              <p className="text-xs text-slate-500">Uploaded prescriptions and review status by Health Express care managers.</p>
            </div>

            {records.length === 0 ? (
              <div className="text-center py-16 bg-slate-50 rounded-3xl border border-dashed border-slate-200 space-y-3">
                <Sparkles className="w-12 h-12 text-purple-300 mx-auto" />
                <h3 className="text-base font-extrabold text-slate-900">No prescriptions uploaded yet.</h3>
                <p className="text-xs text-slate-500 max-w-sm mx-auto">
                  Upload a prescription on our services page for quick review and home sample collection.
                </p>
                <div className="pt-2">
                  <Link to="/services" className="px-5 py-2.5 rounded-xl bg-purple-700 text-white font-bold text-xs inline-block">
                    Upload Prescription
                  </Link>
                </div>
              </div>
            ) : (
              <div className="space-y-4">
                {records.map((item) => (
                  <div key={item.id} className="p-5 rounded-2xl bg-white border border-slate-200 shadow-2xs flex flex-col md:flex-row md:items-center justify-between gap-4">
                    <div className="space-y-1">
                      <div className="flex items-center gap-2">
                        <span className="text-xs font-black text-purple-950">{item.enquiryCode}</span>
                        <span className="px-2 py-0.5 rounded-full bg-amber-100 text-amber-800 text-[10px] font-black uppercase">
                          {item.status.replace('_', ' ')}
                        </span>
                      </div>
                      <h4 className="text-sm font-bold text-slate-900">{item.fileName}</h4>
                      <p className="text-[11px] text-slate-500">Uploaded on {new Date(item.uploadDate).toLocaleString()}</p>
                    </div>

                    {item.signedUrl && (
                      <a
                        href={item.signedUrl}
                        target="_blank"
                        rel="noopener noreferrer"
                        className="py-2.5 px-4 rounded-xl bg-purple-50 text-purple-800 hover:bg-purple-100 font-bold text-xs flex items-center justify-center gap-2 transition-colors cursor-pointer"
                      >
                        <ExternalLink className="w-4 h-4" />
                        <span>View Prescription</span>
                      </a>
                    )}
                  </div>
                ))}
              </div>
            )}
          </div>
        )}

        {/* TAB 4: MY ORDERS / PURCHASE HISTORY */}
        {activeTab === 'orders' && (
          <div className="bg-white rounded-3xl p-6 border border-purple-100 shadow-sm space-y-6 animate-in fade-in duration-200">
            <div>
              <h2 className="text-xl font-extrabold text-slate-900">My Orders & Purchase History</h2>
              <p className="text-xs text-slate-500">Your diagnostic tests, health packages, and home nursing bookings.</p>
            </div>

            {orders.length === 0 ? (
              <div className="text-center py-16 bg-slate-50 rounded-3xl border border-dashed border-slate-200 space-y-3">
                <ShoppingBag className="w-12 h-12 text-purple-300 mx-auto" />
                <h3 className="text-base font-extrabold text-slate-900">No orders yet.</h3>
                <p className="text-xs text-slate-500 max-w-sm mx-auto">
                  You haven't purchased any diagnostic packages or home healthcare services yet.
                </p>
                <div className="pt-2">
                  <Link to="/services" className="px-5 py-2.5 rounded-xl bg-purple-700 text-white font-bold text-xs inline-block">
                    Explore Diagnostic Services
                  </Link>
                </div>
              </div>
            ) : (
              <div className="space-y-4">
                {orders.map((ord) => (
                  <div key={ord.id} className="p-6 rounded-3xl bg-white border border-purple-100 shadow-xs space-y-4">
                    <div className="flex flex-col sm:flex-row sm:items-center justify-between pb-3 border-b border-slate-100 gap-2">
                      <div>
                        <div className="flex items-center gap-2">
                          <span className="text-sm font-black text-purple-950">{ord.order_code}</span>
                          <span className={`px-2.5 py-0.5 rounded-full text-[10px] font-black uppercase ${
                            ord.payment_status === 'PAID' ? 'bg-emerald-100 text-emerald-800' : 'bg-amber-100 text-amber-800'
                          }`}>
                            {ord.payment_status === 'PAID' ? 'PAID & CONFIRMED' : 'PAYMENT PENDING'}
                          </span>
                        </div>
                        <p className="text-[11px] text-slate-500 pt-0.5">
                          Order Date: {new Date(ord.created_at).toLocaleString()}
                        </p>
                      </div>

                      <div className="text-right">
                        <span className="text-xs text-slate-500 block font-semibold">Total Amount</span>
                        <span className="text-xl font-black text-purple-950">₹{ord.total_amount}</span>
                      </div>
                    </div>

                    {/* Purchased Items List */}
                    <div className="space-y-2">
                      <span className="text-[11px] font-bold text-slate-500 uppercase tracking-wider">Services Purchased:</span>
                      <div className="grid grid-cols-1 sm:grid-cols-2 gap-2">
                        {Array.isArray(ord.items) && ord.items.map((item, idx) => (
                          <div key={idx} className="p-3 rounded-2xl bg-slate-50 border border-slate-100 flex items-center justify-between text-xs">
                            <span className="font-bold text-slate-800">{item.title || item.name || 'Healthcare Service'}</span>
                            <span className="font-black text-purple-900">₹{item.discountPrice || item.price || ord.total_amount}</span>
                          </div>
                        ))}
                      </div>
                    </div>
                  </div>
                ))}
              </div>
            )}
          </div>
        )}

      </div>
    </div>
  );
}
