import React, { useState } from 'react';
import { useNavigate } from 'react-router-dom';
import { 
  FileText, ArrowRight, ShieldCheck, Lock, Gift, Sparkles, X, CheckCircle2 
} from 'lucide-react';
import { useAuth } from '../../context/AuthContext';

export default function HealthRecordsSection() {
  const navigate = useNavigate();
  const { isLoggedIn, session } = useAuth();
  const [isAuthModalOpen, setIsAuthModalOpen] = useState(false);

  const handleViewHealthRecords = () => {
    if (isLoggedIn || session?.user) {
      navigate('/dashboard');
    } else {
      setIsAuthModalOpen(true);
    }
  };

  return (
    <section className="py-12 md:py-16 bg-white">
      <div className="max-w-7xl mx-auto px-4 sm:px-6 lg:px-8">
        <div className="bg-purple-50/50 rounded-3xl p-8 sm:p-12 border border-purple-100 flex flex-col md:flex-row items-center justify-between gap-8 shadow-xs">
          
          <div className="space-y-4 text-left max-w-2xl">
            <div className="inline-flex items-center gap-2 px-3 py-1 rounded-full bg-purple-100 text-purple-900 border border-purple-200 text-xs font-extrabold uppercase tracking-wider">
              <FileText className="w-3.5 h-3.5 text-purple-700" />
              <span>DIGITAL RECORD STORAGE</span>
            </div>
            <h2 className="text-3xl sm:text-4xl font-extrabold text-slate-900 tracking-tight">
              Health Records and Reports
            </h2>
            <p className="text-base sm:text-lg text-slate-600 leading-relaxed font-medium">
              Keep family reports, prescriptions, and healthcare history securely organized in one place.
            </p>

            <div className="flex items-center gap-2 text-xs font-semibold text-purple-900 pt-1">
              <ShieldCheck className="w-4 h-4 text-purple-700 shrink-0" />
              <span>Private & secure digital report storage for your family</span>
            </div>
          </div>

          <div className="shrink-0 w-full sm:w-auto">
            <button
              onClick={handleViewHealthRecords}
              className="w-full sm:w-auto px-7 py-4 rounded-2xl bg-purple-700 hover:bg-purple-800 text-white font-bold text-xs sm:text-sm flex items-center justify-center gap-2 shadow-md shadow-purple-700/20 transition-all hover:scale-105 touch-target cursor-pointer"
            >
              <span>View Health Records</span>
              <ArrowRight className="w-4 h-4" />
            </button>
          </div>

        </div>
      </div>

      {/* SIGN IN REQUIRED POPUP MODAL */}
      {isAuthModalOpen && (
        <div className="fixed inset-0 z-50 bg-slate-950/60 backdrop-blur-xs flex items-center justify-center p-4 animate-in fade-in">
          <div className="bg-white text-slate-900 rounded-3xl max-w-md w-full p-6 sm:p-7 shadow-2xl space-y-5 border border-purple-100 relative text-left">
            
            {/* Close Modal Button */}
            <button
              onClick={() => setIsAuthModalOpen(false)}
              className="absolute top-4 right-4 p-2 rounded-full bg-slate-100 hover:bg-slate-200 text-slate-500 hover:text-slate-700 transition-colors cursor-pointer"
              aria-label="Close modal"
            >
              <X className="w-4 h-4" />
            </button>

            {/* Header Lock Icon */}
            <div className="w-12 h-12 rounded-2xl bg-purple-100 text-purple-700 flex items-center justify-center">
              <Lock className="w-6 h-6" />
            </div>

            <div className="space-y-1.5">
              <span className="text-[10px] font-extrabold uppercase tracking-wider px-2.5 py-0.5 rounded-full bg-purple-50 text-purple-800 border border-purple-100 inline-flex items-center gap-1">
                <Sparkles className="w-3 h-3 text-purple-600" />
                <span>SIGN IN REQUIRED</span>
              </span>
              <h3 className="text-xl font-extrabold text-slate-900 leading-snug">
                Please Sign In to Access Health Records
              </h3>
              <p className="text-xs text-slate-600 font-medium leading-relaxed">
                Your medical history, prescriptions, and lab test reports are securely encrypted under your verified mobile profile. Please sign up or sign in to view your private health vault.
              </p>
            </div>

            {/* Instant Signup Bonus Banner */}
            <div className="p-3.5 rounded-2xl bg-gradient-to-r from-purple-900 via-indigo-900 to-purple-950 text-white space-y-1.5 border border-purple-700/50">
              <div className="flex items-center justify-between">
                <span className="text-xs font-black text-amber-300 flex items-center gap-1.5">
                  <Gift className="w-4 h-4 text-amber-400" /> Instant Welcome Bonus
                </span>
                <span className="px-2 py-0.5 rounded-full bg-amber-400 text-slate-950 text-[10px] font-extrabold">
                  1,000 Health Coins
                </span>
              </div>
              <p className="text-[11px] text-purple-200 font-medium leading-tight">
                Get 1,000 Health Coins (₹100 discount value) automatically credited to your wallet upon free OTP registration.
              </p>
            </div>

            {/* Key Benefits List */}
            <div className="space-y-2 text-xs font-semibold text-slate-700">
              <div className="flex items-center gap-2">
                <CheckCircle2 className="w-4 h-4 text-emerald-600 shrink-0" />
                <span>100% Confidential & Private Storage</span>
              </div>
              <div className="flex items-center gap-2">
                <CheckCircle2 className="w-4 h-4 text-emerald-600 shrink-0" />
                <span>Organize Prescriptions & Lab Reports for Family</span>
              </div>
            </div>

            {/* Action Buttons */}
            <div className="pt-2 space-y-2">
              <button
                onClick={() => {
                  setIsAuthModalOpen(false);
                  navigate('/auth?mode=signup');
                }}
                className="w-full py-3.5 px-6 rounded-2xl bg-purple-700 hover:bg-purple-800 text-white font-extrabold text-xs flex items-center justify-center gap-2 shadow-md shadow-purple-700/20 transition-all cursor-pointer touch-target active:scale-95"
              >
                <span>Sign In / Sign Up with Mobile OTP</span>
                <ArrowRight className="w-4 h-4" />
              </button>

              <button
                onClick={() => setIsAuthModalOpen(false)}
                className="w-full py-2 text-xs font-bold text-slate-500 hover:text-slate-700 text-center cursor-pointer"
              >
                Cancel
              </button>
            </div>

          </div>
        </div>
      )}
    </section>
  );
}
