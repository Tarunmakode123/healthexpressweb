import React, { useState, useEffect } from 'react';
import { Link, useNavigate, useSearchParams } from 'react-router-dom';
import { 
  Phone, Mail, Lock, User, ArrowRight, CheckCircle2, ShieldCheck, 
  Activity, Eye, EyeOff, Sparkles, AlertCircle, RefreshCw, ChevronLeft
} from 'lucide-react';
import { useAuth } from '../context/AuthContext';
import { openWhatsApp, DEFAULT_MESSAGES } from '../utils/whatsapp';
import { POPULAR_COUNTRY_CODES, validateAndNormalizeInternationalPhone } from '../utils/phone';

export default function AuthPage() {
  const navigate = useNavigate();
  const [searchParams] = useSearchParams();
  const { login, signup, isLoggedIn, user } = useAuth();

  // Mode: 'signin' or 'signup'
  const initialMode = searchParams.get('mode') === 'signup' ? 'signup' : 'signin';
  const [mode, setMode] = useState(initialMode);

  // Auth Method: 'phone' or 'email'
  const [authMethod, setAuthMethod] = useState('phone');

  // Form Fields
  const [fullName, setFullName] = useState('');
  const [countryCode, setCountryCode] = useState('+91');
  const [phone, setPhone] = useState('');
  const [email, setEmail] = useState('');
  const [password, setPassword] = useState('');
  const [showPassword, setShowPassword] = useState(false);
  const [agreedToTerms, setAgreedToTerms] = useState(true);

  // OTP Step State for Phone Auth
  const [otpStep, setOtpStep] = useState(false);
  const [otp, setOtp] = useState(['', '', '', '']);
  const [otpTimer, setOtpTimer] = useState(30);
  const [canResendOtp, setCanResendOtp] = useState(false);

  // Status & Validation
  const [error, setError] = useState('');
  const [isSubmitting, setIsSubmitting] = useState(false);
  const [successMessage, setSuccessMessage] = useState('');

  // OTP Timer countdown
  useEffect(() => {
    let timer;
    if (otpStep && otpTimer > 0) {
      timer = setInterval(() => {
        setOtpTimer((prev) => prev - 1);
      }, 1000);
    } else if (otpTimer === 0) {
      setCanResendOtp(true);
    }
    return () => clearInterval(timer);
  }, [otpStep, otpTimer]);

  // If already logged in, show user profile status card
  if (isLoggedIn && user) {
    return (
      <div className="min-h-[80vh] flex items-center justify-center px-4 py-16 bg-gradient-to-b from-purple-50/50 via-white to-slate-50">
        <div className="max-w-md w-full bg-white rounded-3xl p-8 border border-purple-100 shadow-xl text-center space-y-6">
          <div className="w-16 h-16 rounded-full bg-purple-100 text-purple-700 flex items-center justify-center mx-auto text-2xl font-bold shadow-xs">
            {user.name ? user.name.charAt(0).toUpperCase() : '👤'}
          </div>
          
          <div className="space-y-1">
            <span className="px-3 py-1 rounded-full bg-emerald-100 text-emerald-800 text-[11px] font-extrabold uppercase">
              Logged In
            </span>
            <h2 className="text-2xl font-extrabold text-slate-900 pt-2">
              Welcome back, {user.name || 'Health Express Member'}!
            </h2>
            <p className="text-xs text-slate-500">
              {user.phone ? `📱 ${user.phone}` : `✉️ ${user.email}`}
            </p>
          </div>

          <div className="p-4 rounded-2xl bg-purple-50/70 border border-purple-100 text-left text-xs space-y-2">
            <div className="font-bold text-purple-900 flex items-center justify-between">
              <span>Personal Health Manager</span>
              <span className="text-[10px] bg-purple-700 text-white px-2 py-0.5 rounded-full">Active</span>
            </div>
            <p className="text-slate-600 text-[11px] leading-relaxed">
              Your account is ready to manage diagnostic appointments, home nursing schedules, and family health records.
            </p>
          </div>

          <div className="space-y-3 pt-2">
            <button
              onClick={() => navigate('/')}
              className="w-full py-3.5 px-6 rounded-2xl bg-purple-700 hover:bg-purple-800 text-white font-bold text-xs flex items-center justify-center gap-2 shadow-sm transition-all"
            >
              <span>Go to Homepage</span>
              <ArrowRight className="w-4 h-4" />
            </button>
            
            <button
              onClick={() => openWhatsApp(DEFAULT_MESSAGES.general)}
              className="w-full py-3.5 px-6 rounded-2xl bg-emerald-50 border border-emerald-200 text-emerald-800 hover:bg-emerald-100 font-bold text-xs flex items-center justify-center gap-2 transition-colors"
            >
              <span>Connect with Care Manager on WhatsApp</span>
            </button>
          </div>
        </div>
      </div>
    );
  }

  // Handle Phone Submit (Step 1: Request OTP)
  const handlePhoneSubmit = (e) => {
    e.preventDefault();
    setError('');

    const phoneCheck = validateAndNormalizeInternationalPhone(phone, countryCode);
    if (!phoneCheck.isValid) {
      setError(phoneCheck.error);
      return;
    }

    if (mode === 'signup' && !fullName.trim()) {
      setError('Please enter your full name.');
      return;
    }

    if (!agreedToTerms) {
      setError('You must agree to the Terms of Service and Privacy Policy.');
      return;
    }

    setIsSubmitting(true);
    setTimeout(() => {
      setIsSubmitting(false);
      setOtpStep(true);
      setOtpTimer(30);
      setCanResendOtp(false);
      setSuccessMessage(`OTP sent successfully to ${phoneCheck.phone_e164}`);
    }, 800);
  };

  // Handle OTP Input Change
  const handleOtpChange = (index, value) => {
    if (isNaN(value)) return;
    const newOtp = [...otp];
    newOtp[index] = value;
    setOtp(newOtp);

    // Auto-advance input
    if (value && index < 3) {
      const nextInput = document.getElementById(`otp-input-${index + 1}`);
      if (nextInput) nextInput.focus();
    }
  };

  // Handle OTP Verify (Step 2: Authenticate)
  const handleVerifyOtp = (e) => {
    e.preventDefault();
    setError('');
    
    const otpCode = otp.join('');
    if (otpCode.length < 4) {
      setError('Please enter the 4-digit OTP code.');
      return;
    }

    setIsSubmitting(true);
    setTimeout(() => {
      setIsSubmitting(false);
      const userData = {
        name: mode === 'signup' ? fullName : (fullName || 'Health Express Member'),
        phone: phone,
        authType: 'phone',
        createdAt: new Date().toISOString()
      };

      if (mode === 'signup') {
        signup(userData);
      } else {
        login(userData);
      }
      navigate('/');
    }, 900);
  };

  // Handle Resend OTP
  const handleResendOtp = () => {
    if (!canResendOtp) return;
    setOtpTimer(30);
    setCanResendOtp(false);
    setError('');
    setSuccessMessage('A new 4-digit OTP has been sent to your mobile number.');
  };

  // Handle Email Submit
  const handleEmailSubmit = (e) => {
    e.preventDefault();
    setError('');

    if (!email || !email.includes('@')) {
      setError('Please enter a valid email address.');
      return;
    }

    if (!password || password.length < 6) {
      setError('Password must be at least 6 characters long.');
      return;
    }

    if (mode === 'signup' && !fullName.trim()) {
      setError('Please enter your full name.');
      return;
    }

    if (!agreedToTerms) {
      setError('You must agree to the Terms of Service and Privacy Policy.');
      return;
    }

    setIsSubmitting(true);
    setTimeout(() => {
      setIsSubmitting(false);
      const userData = {
        name: mode === 'signup' ? fullName : (email.split('@')[0]),
        email: email,
        authType: 'email',
        createdAt: new Date().toISOString()
      };

      if (mode === 'signup') {
        signup(userData);
      } else {
        login(userData);
      }
      navigate('/');
    }, 900);
  };

  return (
    <div className="min-h-[85vh] bg-gradient-to-b from-purple-50/70 via-slate-50/30 to-white py-12 md:py-16 flex items-center justify-center px-4 sm:px-6 lg:px-8">
      
      <div className="max-w-5xl w-full grid grid-cols-1 lg:grid-cols-12 gap-8 bg-white rounded-3xl border border-purple-100 shadow-2xl overflow-hidden">
        
        {/* Left Side: Visual Brand Feature Box */}
        <div className="lg:col-span-5 bg-gradient-to-br from-purple-900 via-purple-800 to-indigo-950 p-8 sm:p-10 text-white flex flex-col justify-between relative overflow-hidden">
          
          {/* Background Ambient Glow */}
          <div className="absolute top-0 right-0 w-64 h-64 bg-purple-500/20 rounded-full blur-3xl pointer-events-none"></div>
          <div className="absolute bottom-0 left-0 w-64 h-64 bg-indigo-500/20 rounded-full blur-3xl pointer-events-none"></div>

          <div className="relative z-10 space-y-6">
            <Link to="/" className="inline-block group bg-white px-3.5 py-2 rounded-2xl border border-purple-100 shadow-md transition-transform hover:scale-105">
              <img 
                src="/logo.png" 
                alt="Health Express - Everything Health Fast Tracked" 
                className="h-10 sm:h-12 w-auto object-contain"
              />
            </Link>

            <div className="space-y-3 pt-4">
              <span className="inline-flex items-center gap-1.5 px-3 py-1 rounded-full bg-purple-700/80 border border-purple-500/40 text-[11px] font-bold uppercase tracking-wider text-purple-200">
                <Sparkles className="w-3.5 h-3.5 text-purple-300" />
                Personal Health Manager
              </span>
              <h2 className="text-2xl sm:text-3xl font-extrabold leading-tight text-white">
                One place to manage healthcare for your whole family.
              </h2>
              <p className="text-xs sm:text-sm text-purple-200/90 leading-relaxed">
                Access diagnostic lab reports, coordinate home nursing care, and connect directly with personal care managers.
              </p>
            </div>
          </div>

          {/* Key Value Props List */}
          <div className="relative z-10 space-y-4 pt-8 border-t border-purple-700/60">
            <div className="flex items-start gap-3">
              <CheckCircle2 className="w-5 h-5 text-emerald-400 shrink-0 mt-0.5" />
              <div>
                <h4 className="text-xs font-bold text-white">Fast Diagnostics & Home Nursing</h4>
                <p className="text-[11px] text-purple-200">Book accredited labs with home sample collection</p>
              </div>
            </div>

            <div className="flex items-start gap-3">
              <CheckCircle2 className="w-5 h-5 text-emerald-400 shrink-0 mt-0.5" />
              <div>
                <h4 className="text-xs font-bold text-white">Family Profiles</h4>
                <p className="text-[11px] text-purple-200">Coordinate care for parents, spouse, and children</p>
              </div>
            </div>

            <div className="flex items-start gap-3">
              <ShieldCheck className="w-5 h-5 text-purple-300 shrink-0 mt-0.5" />
              <div>
                <h4 className="text-xs font-bold text-white">100% Confidential & Secure</h4>
                <p className="text-[11px] text-purple-200">Your health data stays private and encrypted</p>
              </div>
            </div>
          </div>

          <div className="relative z-10 text-[11px] text-purple-300/80 pt-6">
            Starting with Bengaluru launch. Need instant help?{' '}
            <button 
              onClick={() => openWhatsApp(DEFAULT_MESSAGES.general)} 
              className="text-white underline font-semibold hover:text-purple-200"
            >
              WhatsApp Support
            </button>
          </div>
        </div>

        {/* Right Side: Interactive Auth Form */}
        <div className="lg:col-span-7 p-8 sm:p-10 flex flex-col justify-center space-y-6">
          
          {/* Sign In / Sign Up Mode Switcher */}
          <div className="flex items-center justify-between border-b border-slate-100 pb-4">
            <div className="flex items-center gap-4">
              <button
                onClick={() => {
                  setMode('signin');
                  setOtpStep(false);
                  setError('');
                }}
                className={`text-lg font-extrabold pb-1 transition-all ${
                  mode === 'signin'
                    ? 'text-purple-800 border-b-2 border-purple-700'
                    : 'text-slate-400 hover:text-slate-600'
                }`}
              >
                Sign In
              </button>

              <button
                onClick={() => {
                  setMode('signup');
                  setOtpStep(false);
                  setError('');
                }}
                className={`text-lg font-extrabold pb-1 transition-all ${
                  mode === 'signup'
                    ? 'text-purple-800 border-b-2 border-purple-700'
                    : 'text-slate-400 hover:text-slate-600'
                }`}
              >
                Sign Up
              </button>
            </div>

            <span className="text-xs font-semibold text-purple-700 bg-purple-50 px-3 py-1 rounded-full border border-purple-100">
              {mode === 'signin' ? 'Welcome Back' : 'Create Free Account'}
            </span>
          </div>

          {/* Error & Success Messages */}
          {error && (
            <div className="p-3.5 rounded-2xl bg-rose-50 border border-rose-200 text-rose-800 text-xs font-semibold flex items-center gap-2.5 animate-in fade-in">
              <AlertCircle className="w-4 h-4 text-rose-600 shrink-0" />
              <span>{error}</span>
            </div>
          )}

          {successMessage && !error && (
            <div className="p-3.5 rounded-2xl bg-emerald-50 border border-emerald-200 text-emerald-800 text-xs font-semibold flex items-center gap-2.5 animate-in fade-in">
              <CheckCircle2 className="w-4 h-4 text-emerald-600 shrink-0" />
              <span>{successMessage}</span>
            </div>
          )}

          {/* Auth Method Sub-Tabs: Phone OTP vs Email */}
          {!otpStep && (
            <div className="grid grid-cols-2 gap-2 bg-slate-100/80 p-1 rounded-2xl">
              <button
                type="button"
                onClick={() => {
                  setAuthMethod('phone');
                  setError('');
                }}
                className={`py-2 px-3 rounded-xl text-xs font-bold flex items-center justify-center gap-2 transition-all ${
                  authMethod === 'phone'
                    ? 'bg-white text-purple-900 shadow-xs'
                    : 'text-slate-600 hover:text-slate-900'
                }`}
              >
                <Phone className="w-3.5 h-3.5 text-purple-600" />
                <span>Mobile OTP</span>
              </button>

              <button
                type="button"
                onClick={() => {
                  setAuthMethod('email');
                  setError('');
                }}
                className={`py-2 px-3 rounded-xl text-xs font-bold flex items-center justify-center gap-2 transition-all ${
                  authMethod === 'email'
                    ? 'bg-white text-purple-900 shadow-xs'
                    : 'text-slate-600 hover:text-slate-900'
                }`}
              >
                <Mail className="w-3.5 h-3.5 text-purple-600" />
                <span>Email & Password</span>
              </button>
            </div>
          )}

          {/* Option A: Phone OTP Verification Flow */}
          {authMethod === 'phone' && (
            <div>
              {!otpStep ? (
                /* Step 1: Mobile Number Input Form */
                <form onSubmit={handlePhoneSubmit} className="space-y-4">
                  {mode === 'signup' && (
                    <div className="space-y-1.5">
                      <label className="text-xs font-bold text-slate-800">Full Name</label>
                      <div className="relative">
                        <User className="w-4 h-4 text-slate-400 absolute left-3.5 top-1/2 -translate-y-1/2" />
                        <input
                          type="text"
                          value={fullName}
                          onChange={(e) => setFullName(e.target.value)}
                          placeholder="e.g. Rahul Sharma"
                          className="w-full pl-10 pr-4 py-3 rounded-2xl bg-slate-50 border border-slate-200 text-xs font-semibold text-slate-900 focus:outline-none focus:ring-2 focus:ring-purple-600 focus:bg-white"
                        />
                      </div>
                    </div>
                  )}

                  <div className="space-y-1.5">
                    <label className="text-xs font-bold text-slate-800">Mobile Phone Number</label>
                    <div className="flex gap-2">
                      <select
                        value={countryCode}
                        onChange={(e) => setCountryCode(e.target.value)}
                        className="px-2.5 py-3 rounded-2xl bg-slate-50 border border-slate-200 text-xs font-bold text-purple-900 focus:outline-none focus:ring-2 focus:ring-purple-600 focus:bg-white shrink-0 cursor-pointer"
                      >
                        {POPULAR_COUNTRY_CODES.map((c) => (
                          <option key={c.code} value={c.code}>
                            {c.flag} {c.code} ({c.country})
                          </option>
                        ))}
                      </select>

                      <div className="relative flex-1">
                        <Phone className="w-4 h-4 text-slate-400 absolute left-3.5 top-1/2 -translate-y-1/2" />
                        <input
                          type="tel"
                          value={phone}
                          onChange={(e) => setPhone(e.target.value)}
                          placeholder={countryCode === '+91' ? 'Enter 10-digit mobile' : 'Enter mobile number'}
                          className="w-full pl-10 pr-4 py-3 rounded-2xl bg-slate-50 border border-slate-200 text-xs font-semibold text-slate-900 focus:outline-none focus:ring-2 focus:ring-purple-600 focus:bg-white"
                        />
                      </div>
                    </div>
                  </div>

                  <div className="flex items-start gap-2 pt-1">
                    <input
                      type="checkbox"
                      id="terms-phone"
                      checked={agreedToTerms}
                      onChange={(e) => setAgreedToTerms(e.target.checked)}
                      className="mt-0.5 rounded border-slate-300 text-purple-700 focus:ring-purple-600"
                    />
                    <label htmlFor="terms-phone" className="text-[11px] text-slate-500 leading-tight">
                      I agree to the Health Express{' '}
                      <Link to="/legal/terms" className="text-purple-700 underline font-semibold">Terms of Service</Link>{' '}
                      and{' '}
                      <Link to="/legal/privacy" className="text-purple-700 underline font-semibold">Privacy Policy</Link>.
                    </label>
                  </div>

                  <button
                    type="submit"
                    disabled={isSubmitting}
                    className="w-full py-3.5 px-6 rounded-2xl bg-purple-700 hover:bg-purple-800 text-white font-bold text-xs flex items-center justify-center gap-2 shadow-md shadow-purple-700/20 transition-all hover:scale-[1.01] active:scale-[0.99] disabled:opacity-50"
                  >
                    {isSubmitting ? (
                      <span className="flex items-center gap-2">
                        <RefreshCw className="w-4 h-4 animate-spin" />
                        <span>Sending OTP...</span>
                      </span>
                    ) : (
                      <>
                        <span>Get OTP Code</span>
                        <ArrowRight className="w-4 h-4" />
                      </>
                    )}
                  </button>
                </form>
              ) : (
                /* Step 2: Enter 4-Digit OTP Code */
                <form onSubmit={handleVerifyOtp} className="space-y-5 animate-in fade-in">
                  <div className="flex items-center justify-between">
                    <button
                      type="button"
                      onClick={() => setOtpStep(false)}
                      className="text-xs font-bold text-purple-700 hover:text-purple-900 flex items-center gap-1"
                    >
                      <ChevronLeft className="w-4 h-4" />
                      <span>Change Mobile Number (+91 {phone})</span>
                    </button>
                  </div>

                  <div className="text-center space-y-1">
                    <h3 className="text-base font-extrabold text-slate-900">Enter Verification Code</h3>
                    <p className="text-xs text-slate-500">
                      Enter the 4-digit code sent to <strong className="text-slate-800">+91 {phone}</strong>
                    </p>
                  </div>

                  {/* 4 OTP Digit Boxes */}
                  <div className="flex items-center justify-center gap-3 py-2">
                    {otp.map((digit, idx) => (
                      <input
                        key={idx}
                        id={`otp-input-${idx}`}
                        type="text"
                        maxLength={1}
                        value={digit}
                        onChange={(e) => handleOtpChange(idx, e.target.value)}
                        className="w-12 h-14 text-center text-xl font-extrabold text-slate-900 bg-purple-50/60 border border-purple-200 rounded-2xl focus:outline-none focus:ring-2 focus:ring-purple-700 focus:bg-white shadow-xs"
                      />
                    ))}
                  </div>

                  {/* Resend Timer */}
                  <div className="text-center text-xs text-slate-500">
                    {!canResendOtp ? (
                      <span>Resend OTP code in <strong className="text-purple-700 font-bold">{otpTimer}s</strong></span>
                    ) : (
                      <button
                        type="button"
                        onClick={handleResendOtp}
                        className="text-purple-700 hover:text-purple-900 font-bold underline"
                      >
                        Resend OTP Code
                      </button>
                    )}
                  </div>

                  <button
                    type="submit"
                    disabled={isSubmitting}
                    className="w-full py-3.5 px-6 rounded-2xl bg-purple-700 hover:bg-purple-800 text-white font-bold text-xs flex items-center justify-center gap-2 shadow-md shadow-purple-700/20 transition-all hover:scale-[1.01] active:scale-[0.99] disabled:opacity-50"
                  >
                    {isSubmitting ? (
                      <span className="flex items-center gap-2">
                        <RefreshCw className="w-4 h-4 animate-spin" />
                        <span>Verifying...</span>
                      </span>
                    ) : (
                      <>
                        <span>Verify & Continue</span>
                        <ArrowRight className="w-4 h-4" />
                      </>
                    )}
                  </button>
                </form>
              )}
            </div>
          )}

          {/* Option B: Email & Password Flow */}
          {authMethod === 'email' && (
            <form onSubmit={handleEmailSubmit} className="space-y-4">
              {mode === 'signup' && (
                <div className="space-y-1.5">
                  <label className="text-xs font-bold text-slate-800">Full Name</label>
                  <div className="relative">
                    <User className="w-4 h-4 text-slate-400 absolute left-3.5 top-1/2 -translate-y-1/2" />
                    <input
                      type="text"
                      value={fullName}
                      onChange={(e) => setFullName(e.target.value)}
                      placeholder="e.g. Rahul Sharma"
                      className="w-full pl-10 pr-4 py-3 rounded-2xl bg-slate-50 border border-slate-200 text-xs font-semibold text-slate-900 focus:outline-none focus:ring-2 focus:ring-purple-600 focus:bg-white"
                    />
                  </div>
                </div>
              )}

              <div className="space-y-1.5">
                <label className="text-xs font-bold text-slate-800">Email Address</label>
                <div className="relative">
                  <Mail className="w-4 h-4 text-slate-400 absolute left-3.5 top-1/2 -translate-y-1/2" />
                  <input
                    type="email"
                    value={email}
                    onChange={(e) => setEmail(e.target.value)}
                    placeholder="name@example.com"
                    className="w-full pl-10 pr-4 py-3 rounded-2xl bg-slate-50 border border-slate-200 text-xs font-semibold text-slate-900 focus:outline-none focus:ring-2 focus:ring-purple-600 focus:bg-white"
                  />
                </div>
              </div>

              <div className="space-y-1.5">
                <div className="flex items-center justify-between">
                  <label className="text-xs font-bold text-slate-800">Password</label>
                  {mode === 'signin' && (
                    <button
                      type="button"
                      onClick={() => setError('Password reset instructions will be sent to your email.')}
                      className="text-[11px] text-purple-700 hover:text-purple-900 font-semibold"
                    >
                      Forgot password?
                    </button>
                  )}
                </div>
                <div className="relative">
                  <Lock className="w-4 h-4 text-slate-400 absolute left-3.5 top-1/2 -translate-y-1/2" />
                  <input
                    type={showPassword ? 'text' : 'password'}
                    value={password}
                    onChange={(e) => setPassword(e.target.value)}
                    placeholder="••••••••"
                    className="w-full pl-10 pr-10 py-3 rounded-2xl bg-slate-50 border border-slate-200 text-xs font-semibold text-slate-900 focus:outline-none focus:ring-2 focus:ring-purple-600 focus:bg-white"
                  />
                  <button
                    type="button"
                    onClick={() => setShowPassword(!showPassword)}
                    className="absolute right-3.5 top-1/2 -translate-y-1/2 text-slate-400 hover:text-slate-600"
                  >
                    {showPassword ? <EyeOff className="w-4 h-4" /> : <Eye className="w-4 h-4" />}
                  </button>
                </div>
              </div>

              <div className="flex items-start gap-2 pt-1">
                <input
                  type="checkbox"
                  id="terms-email"
                  checked={agreedToTerms}
                  onChange={(e) => setAgreedToTerms(e.target.checked)}
                  className="mt-0.5 rounded border-slate-300 text-purple-700 focus:ring-purple-600"
                />
                <label htmlFor="terms-email" className="text-[11px] text-slate-500 leading-tight">
                  I agree to the Health Express{' '}
                  <Link to="/legal/terms" className="text-purple-700 underline font-semibold">Terms of Service</Link>{' '}
                  and{' '}
                  <Link to="/legal/privacy" className="text-purple-700 underline font-semibold">Privacy Policy</Link>.
                </label>
              </div>

              <button
                type="submit"
                disabled={isSubmitting}
                className="w-full py-3.5 px-6 rounded-2xl bg-purple-700 hover:bg-purple-800 text-white font-bold text-xs flex items-center justify-center gap-2 shadow-md shadow-purple-700/20 transition-all hover:scale-[1.01] active:scale-[0.99] disabled:opacity-50"
              >
                {isSubmitting ? (
                  <span className="flex items-center gap-2">
                    <RefreshCw className="w-4 h-4 animate-spin" />
                    <span>Processing...</span>
                  </span>
                ) : (
                  <>
                    <span>{mode === 'signin' ? 'Sign In' : 'Create Account'}</span>
                    <ArrowRight className="w-4 h-4" />
                  </>
                )}
              </button>
            </form>
          )}

          {/* Bottom Switch Mode helper */}
          <div className="text-center pt-2 text-xs text-slate-500">
            {mode === 'signin' ? (
              <span>
                Don't have a Health Express account?{' '}
                <button
                  onClick={() => {
                    setMode('signup');
                    setOtpStep(false);
                    setError('');
                  }}
                  className="text-purple-700 font-extrabold hover:underline"
                >
                  Sign Up Free
                </button>
              </span>
            ) : (
              <span>
                Already registered?{' '}
                <button
                  onClick={() => {
                    setMode('signin');
                    setOtpStep(false);
                    setError('');
                  }}
                  className="text-purple-700 font-extrabold hover:underline"
                >
                  Sign In
                </button>
              </span>
            )}
          </div>

        </div>

      </div>

    </div>
  );
}
