import React, { useState } from 'react';
import { Thermometer, AlertTriangle, MessageSquare, ArrowRight, CheckCircle2 } from 'lucide-react';
import { openWhatsApp } from '../../utils/whatsapp';
import { Link } from 'react-router-dom';
import HealthCheckDisclaimer from './HealthCheckDisclaimer';

export default function TemperatureTool() {
  const [tempInput, setTempInput] = useState('');
  const [unit, setUnit] = useState('F'); // 'F' or 'C'
  const [ageGroup, setAgeGroup] = useState('adult'); // 'child', 'teen', 'adult', 'older'
  const [result, setResult] = useState(null);

  const handleEvaluate = (e) => {
    e.preventDefault();
    const val = parseFloat(tempInput);
    if (isNaN(val) || val <= 0) return;

    let tempF = 0;
    let tempC = 0;

    if (unit === 'F') {
      tempF = val;
      tempC = ((val - 32) * 5) / 9;
    } else {
      tempC = val;
      tempF = (val * 9) / 5 + 32;
    }

    let category = '';
    let categoryColor = '';
    let isRedFlag = false;
    let guidance = '';

    if (tempF < 97.0) {
      category = 'Below Usual Temperature Range';
      categoryColor = 'text-sky-800 border-sky-200 bg-sky-50';
      guidance = 'Body temperature can fluctuate with ambient temperature, physical activity, and measurement site. Ensure the individual is warm and re-check after 15 minutes.';
    } else if (tempF <= 99.0) {
      category = 'Normal Temperature Range';
      categoryColor = 'text-emerald-800 border-emerald-200 bg-emerald-50';
      guidance = 'Your reading is within the standard normal body temperature range.';
    } else if (tempF <= 100.4) {
      category = 'Low-Grade / Slightly Elevated Temperature';
      categoryColor = 'text-amber-800 border-amber-200 bg-amber-50';
      guidance = 'Slightly elevated temperature can be an early response to fatigue, mild heat, or minor immune activation. Stay hydrated and rest.';
    } else if (tempF <= 102.9) {
      category = 'Moderate Fever';
      categoryColor = 'text-amber-900 border-amber-300 bg-amber-100/60';
      guidance = 'Moderate fever indicates active immune response. Ensure adequate fluid intake and rest. Consult a healthcare provider if fever persists beyond 48 hours.';
    } else {
      category = 'High Fever — Red Flag Warning';
      categoryColor = 'text-rose-900 border-rose-300 bg-rose-50';
      isRedFlag = true;
      guidance = 'High fever requires close monitoring and prompt medical consultation. If accompanied by severe headache, stiff neck, confusion, or breathing difficulty, seek immediate emergency medical care.';
    }

    if (ageGroup === 'child' && tempF >= 100.4) {
      guidance += ' Note: For infants under 3 months, any fever ≥100.4°F (38.0°C) requires immediate medical evaluation.';
    }

    setResult({
      tempF: tempF.toFixed(1),
      tempC: tempC.toFixed(1),
      category,
      categoryColor,
      isRedFlag,
      guidance
    });
  };

  return (
    <div className="space-y-6">
      
      {/* Header Info */}
      <div className="flex items-start gap-3 bg-amber-50/70 border border-amber-100 p-4 rounded-2xl">
        <div className="w-10 h-10 rounded-xl bg-amber-600 text-white flex items-center justify-center shrink-0 shadow-xs">
          <Thermometer className="w-5 h-5" />
        </div>
        <div>
          <h4 className="text-sm font-extrabold text-slate-900">Temperature / Fever Check</h4>
          <p className="text-xs text-slate-600 mt-0.5 leading-relaxed">
            Convert temperatures between °F and °C and understand body temperature readings.
          </p>
        </div>
      </div>

      {/* Form Inputs */}
      <form onSubmit={handleEvaluate} className="space-y-4">
        
        {/* Temperature & Unit Row */}
        <div className="grid grid-cols-1 sm:grid-cols-3 gap-3">
          <div className="sm:col-span-2">
            <label className="block text-xs font-bold text-slate-700 mb-1">
              Body Temperature <span className="text-amber-600">*</span>
            </label>
            <input
              type="number"
              step="0.1"
              required
              min="85"
              max="115"
              value={tempInput}
              onChange={(e) => setTempInput(e.target.value)}
              placeholder={unit === 'F' ? 'e.g. 98.6' : 'e.g. 37.0'}
              className="w-full px-3.5 py-2.5 rounded-xl border border-slate-200 text-sm font-extrabold text-slate-900 focus:ring-2 focus:ring-amber-500 outline-none"
            />
          </div>

          <div>
            <label className="block text-xs font-bold text-slate-700 mb-1">
              Unit
            </label>
            <div className="flex rounded-xl border border-slate-200 overflow-hidden p-1 bg-slate-50">
              <button
                type="button"
                onClick={() => setUnit('F')}
                className={`flex-1 py-1.5 text-xs font-extrabold rounded-lg transition-colors ${
                  unit === 'F' ? 'bg-amber-600 text-white shadow-2xs' : 'text-slate-600 hover:text-slate-900'
                }`}
              >
                °F
              </button>
              <button
                type="button"
                onClick={() => setUnit('C')}
                className={`flex-1 py-1.5 text-xs font-extrabold rounded-lg transition-colors ${
                  unit === 'C' ? 'bg-amber-600 text-white shadow-2xs' : 'text-slate-600 hover:text-slate-900'
                }`}
              >
                °C
              </button>
            </div>
          </div>
        </div>

        {/* Age Group */}
        <div>
          <label className="block text-xs font-bold text-slate-700 mb-1">
            Age Group
          </label>
          <select
            value={ageGroup}
            onChange={(e) => setAgeGroup(e.target.value)}
            className="w-full px-3 py-2.5 rounded-xl border border-slate-200 text-xs font-bold text-slate-900 bg-white focus:ring-2 focus:ring-amber-500 outline-none cursor-pointer"
          >
            <option value="child">Child (0–12 years)</option>
            <option value="teen">Teen (13–17 years)</option>
            <option value="adult">Adult (18–64 years)</option>
            <option value="older">Older Adult (65+ years)</option>
          </select>
        </div>

        <button
          type="submit"
          className="w-full py-3 px-5 rounded-xl bg-amber-600 hover:bg-amber-700 text-white font-extrabold text-xs sm:text-sm flex items-center justify-center gap-2 shadow-md shadow-amber-600/20 transition-all touch-target"
        >
          <Thermometer className="w-4 h-4" />
          <span>Check Temperature</span>
        </button>

      </form>

      {/* Result Card */}
      {result && (
        <div className="space-y-4 pt-2 border-t border-slate-100 animate-in fade-in">
          
          <div className={`p-5 rounded-2xl border ${result.categoryColor} space-y-3 shadow-xs`}>
            
            <div className="flex items-center justify-between">
              <div className="flex items-center gap-2">
                <span className="text-sm font-black text-slate-900 font-mono bg-white px-2.5 py-1 rounded-lg border border-slate-200">
                  {result.tempF} °F
                </span>
                <span className="text-slate-400 font-bold">=</span>
                <span className="text-sm font-black text-slate-900 font-mono bg-white px-2.5 py-1 rounded-lg border border-slate-200">
                  {result.tempC} °C
                </span>
              </div>
            </div>

            <h5 className="text-xs font-extrabold uppercase tracking-wider">{result.category}</h5>

            <p className="text-xs font-medium text-slate-800 leading-relaxed">
              {result.guidance}
            </p>

            {result.isRedFlag && (
              <div className="p-3 bg-rose-100 border border-rose-300 rounded-xl text-rose-900 text-xs font-bold flex items-start gap-2">
                <AlertTriangle className="w-4 h-4 text-rose-600 shrink-0 mt-0.5" />
                <span>Seek immediate medical care if fever remains high or is accompanied by severe weakness or breathing distress.</span>
              </div>
            )}
          </div>

          {/* Ecosystem Integration */}
          <div className="bg-slate-50 border border-slate-200/80 rounded-2xl p-4 space-y-3">
            <h5 className="text-xs font-extrabold text-slate-900">Need medical help or nursing care?</h5>
            <div className="flex flex-col sm:flex-row gap-2">
              <button
                type="button"
                onClick={() => openWhatsApp(`Namaste Health Express! I checked a temperature reading (${result.tempF}°F / ${result.tempC}°C) and would like to speak with a Health Manager.`)}
                className="flex-1 py-2.5 px-4 rounded-xl bg-emerald-600 hover:bg-emerald-700 text-white text-xs font-bold flex items-center justify-center gap-2 shadow-xs"
              >
                <MessageSquare className="w-4 h-4 fill-current" />
                <span>Talk to Health Manager on WhatsApp</span>
              </button>

              <Link
                to="/services"
                className="py-2.5 px-4 rounded-xl bg-white hover:bg-slate-100 text-slate-900 border border-slate-200 text-xs font-bold flex items-center justify-center gap-1.5"
              >
                <span>Explore Home Care & Tests</span>
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
