import React, { useState } from 'react';
import { Droplet, Activity, Sun, MessageSquare, ArrowRight, CheckCircle2, Sparkles } from 'lucide-react';
import { openWhatsApp } from '../../utils/whatsapp';
import { Link } from 'react-router-dom';
import HealthCheckDisclaimer from './HealthCheckDisclaimer';

export default function HydrationTool() {
  const [weight, setWeight] = useState('');
  const [weightUnit, setWeightUnit] = useState('kg'); // 'kg' or 'lbs'
  const [activity, setActivity] = useState('moderate'); // 'sedentary', 'moderate', 'high'
  const [climate, setClimate] = useState('moderate'); // 'moderate', 'hot'
  const [result, setResult] = useState(null);

  const handleCalculate = (e) => {
    e.preventDefault();
    const w = parseFloat(weight);
    if (isNaN(w) || w <= 0) return;

    // Convert weight to kg for calculation
    const weightKg = weightUnit === 'lbs' ? w * 0.453592 : w;

    // Base fluid calculation: ~35 mL per kg
    let fluidMl = weightKg * 35;

    // Activity adjustment
    if (activity === 'moderate') fluidMl += 350;
    if (activity === 'high') fluidMl += 700;

    // Climate adjustment
    if (climate === 'hot') fluidMl += 400;

    // Convert to Liters
    const targetLiters = (fluidMl / 1000).toFixed(1);
    const glasses = Math.round(fluidMl / 250); // 250ml glass

    // Distribution breakdown
    const morningL = (targetLiters * 0.35).toFixed(1);
    const afternoonL = (targetLiters * 0.45).toFixed(1);
    const eveningL = (targetLiters * 0.20).toFixed(1);

    setResult({
      targetLiters,
      glasses,
      morningL,
      afternoonL,
      eveningL
    });
  };

  return (
    <div className="space-y-6">
      
      {/* Header Info */}
      <div className="flex items-start gap-3 bg-sky-50/70 border border-sky-100 p-4 rounded-2xl">
        <div className="w-10 h-10 rounded-xl bg-sky-600 text-white flex items-center justify-center shrink-0 shadow-xs">
          <Droplet className="w-5 h-5 fill-current" />
        </div>
        <div>
          <h4 className="text-sm font-extrabold text-slate-900">Hydration Target Check</h4>
          <p className="text-xs text-slate-600 mt-0.5 leading-relaxed">
            Estimate your daily fluid target based on weight, activity, and climate.
          </p>
        </div>
      </div>

      {/* Form Inputs */}
      <form onSubmit={handleCalculate} className="space-y-4">
        
        {/* Weight & Unit Row */}
        <div className="grid grid-cols-1 sm:grid-cols-3 gap-3">
          <div className="sm:col-span-2">
            <label className="block text-xs font-bold text-slate-700 mb-1">
              Body Weight <span className="text-sky-600">*</span>
            </label>
            <input
              type="number"
              step="0.5"
              required
              min="20"
              max="250"
              value={weight}
              onChange={(e) => setWeight(e.target.value)}
              placeholder={weightUnit === 'kg' ? 'e.g. 70' : 'e.g. 154'}
              className="w-full px-3.5 py-2.5 rounded-xl border border-slate-200 text-sm font-extrabold text-slate-900 focus:ring-2 focus:ring-sky-500 outline-none"
            />
          </div>

          <div>
            <label className="block text-xs font-bold text-slate-700 mb-1">
              Unit
            </label>
            <div className="flex rounded-xl border border-slate-200 overflow-hidden p-1 bg-slate-50">
              <button
                type="button"
                onClick={() => setWeightUnit('kg')}
                className={`flex-1 py-1.5 text-xs font-extrabold rounded-lg transition-colors ${
                  weightUnit === 'kg' ? 'bg-sky-600 text-white shadow-2xs' : 'text-slate-600 hover:text-slate-900'
                }`}
              >
                kg
              </button>
              <button
                type="button"
                onClick={() => setWeightUnit('lbs')}
                className={`flex-1 py-1.5 text-xs font-extrabold rounded-lg transition-colors ${
                  weightUnit === 'lbs' ? 'bg-sky-600 text-white shadow-2xs' : 'text-slate-600 hover:text-slate-900'
                }`}
              >
                lbs
              </button>
            </div>
          </div>
        </div>

        {/* Activity & Climate */}
        <div className="grid grid-cols-1 sm:grid-cols-2 gap-3">
          <div>
            <label className="block text-xs font-bold text-slate-700 mb-1">
              Daily Activity Level
            </label>
            <select
              value={activity}
              onChange={(e) => setActivity(e.target.value)}
              className="w-full px-3 py-2.5 rounded-xl border border-slate-200 text-xs font-bold text-slate-900 bg-white focus:ring-2 focus:ring-sky-500 outline-none cursor-pointer"
            >
              <option value="sedentary">Sedentary / Desk Work</option>
              <option value="moderate">Moderate Activity (30–60m)</option>
              <option value="high">High Activity / Heavy Exercise</option>
            </select>
          </div>

          <div>
            <label className="block text-xs font-bold text-slate-700 mb-1">
              Climate / Environment
            </label>
            <select
              value={climate}
              onChange={(e) => setClimate(e.target.value)}
              className="w-full px-3 py-2.5 rounded-xl border border-slate-200 text-xs font-bold text-slate-900 bg-white focus:ring-2 focus:ring-sky-500 outline-none cursor-pointer"
            >
              <option value="moderate">Moderate Climate</option>
              <option value="hot">Hot / Humid Climate</option>
            </select>
          </div>
        </div>

        <button
          type="submit"
          className="w-full py-3 px-5 rounded-xl bg-sky-600 hover:bg-sky-700 text-white font-extrabold text-xs sm:text-sm flex items-center justify-center gap-2 shadow-md shadow-sky-600/20 transition-all touch-target"
        >
          <Droplet className="w-4 h-4 fill-current" />
          <span>Calculate Daily Target</span>
        </button>

      </form>

      {/* Result Card */}
      {result && (
        <div className="space-y-4 pt-2 border-t border-slate-100 animate-in fade-in">
          
          <div className="bg-sky-950 text-white rounded-2xl p-5 space-y-4 shadow-lg relative overflow-hidden">
            
            <div className="flex items-center justify-between border-b border-sky-800/80 pb-3">
              <div>
                <span className="text-[10px] font-extrabold uppercase tracking-wider text-sky-300">
                  ESTIMATED DAILY FLUID TARGET
                </span>
                <div className="flex items-baseline gap-2 pt-1">
                  <span className="text-3xl font-black text-white font-mono">{result.targetLiters} L</span>
                  <span className="text-xs text-sky-200 font-semibold">/ day</span>
                </div>
              </div>

              <div className="bg-sky-900/90 border border-sky-700 px-3 py-1.5 rounded-xl text-center">
                <span className="text-sm font-extrabold text-sky-200 font-mono">~{result.glasses}</span>
                <span className="text-[10px] text-sky-300 block font-medium">glasses (250ml)</span>
              </div>
            </div>

            {/* Daily Schedule Distribution */}
            <div className="space-y-2">
              <span className="text-[11px] font-extrabold uppercase tracking-wider text-sky-300 block">
                Suggested Daily Distribution:
              </span>
              <div className="grid grid-cols-3 gap-2">
                
                <div className="bg-sky-900/60 p-2.5 rounded-xl border border-sky-800 text-center">
                  <span className="text-[10px] text-sky-300 block font-bold">💧 Morning</span>
                  <span className="text-xs font-black text-white font-mono mt-0.5 block">{result.morningL} L</span>
                </div>

                <div className="bg-sky-900/60 p-2.5 rounded-xl border border-sky-800 text-center">
                  <span className="text-[10px] text-sky-300 block font-bold">💧 Afternoon</span>
                  <span className="text-xs font-black text-white font-mono mt-0.5 block">{result.afternoonL} L</span>
                </div>

                <div className="bg-sky-900/60 p-2.5 rounded-xl border border-sky-800 text-center">
                  <span className="text-[10px] text-sky-300 block font-bold">💧 Evening</span>
                  <span className="text-xs font-black text-white font-mono mt-0.5 block">{result.eveningL} L</span>
                </div>

              </div>
            </div>

            <p className="text-[11px] text-sky-300/90 italic pt-1 border-t border-sky-900">
              * Fluid targets include water, soups, and beverages. Adjust for intense activity or outdoor heat exposure.
            </p>
          </div>

          {/* Ecosystem Integration */}
          <div className="bg-slate-50 border border-slate-200/80 rounded-2xl p-4 space-y-3">
            <h5 className="text-xs font-extrabold text-slate-900">Questions about your health or fluid needs?</h5>
            <div className="flex flex-col sm:flex-row gap-2">
              <button
                type="button"
                onClick={() => openWhatsApp(`Namaste Health Express! I checked my hydration target (${result.targetLiters}L/day) and would like to ask a Health Manager a question.`)}
                className="flex-1 py-2.5 px-4 rounded-xl bg-emerald-600 hover:bg-emerald-700 text-white text-xs font-bold flex items-center justify-center gap-2 shadow-xs"
              >
                <MessageSquare className="w-4 h-4 fill-current" />
                <span>Talk to Health Manager on WhatsApp</span>
              </button>

              <Link
                to="/services"
                className="py-2.5 px-4 rounded-xl bg-white hover:bg-slate-100 text-slate-900 border border-slate-200 text-xs font-bold flex items-center justify-center gap-1.5"
              >
                <span>Explore Health Services</span>
                <ArrowRight className="w-3.5 h-3.5" />
              </Link>
            </div>
          </div>

        </div>
      )}

      {/* Safety Disclaimer */}
      <HealthCheckDisclaimer />

    </div>
  );
}
