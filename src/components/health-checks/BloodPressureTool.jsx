import React, { useState } from 'react';
import { Activity, AlertTriangle, ShieldCheck, MessageSquare, ArrowRight, CheckCircle2, HeartPulse } from 'lucide-react';
import { openWhatsApp } from '../../utils/whatsapp';
import { Link } from 'react-router-dom';
import HealthCheckDisclaimer from './HealthCheckDisclaimer';

export default function BloodPressureTool() {
  const [systolic, setSystolic] = useState('');
  const [diastolic, setDiastolic] = useState('');
  const [ageGroup, setAgeGroup] = useState('adult');
  const [result, setResult] = useState(null);

  const handleEvaluate = (e) => {
    e.preventDefault();
    const sys = parseInt(systolic, 10);
    const dia = parseInt(diastolic, 10);

    if (isNaN(sys) || isNaN(dia) || sys <= 0 || dia <= 0) {
      return;
    }

    let category = '';
    let categoryColor = '';
    let badgeBg = '';
    let description = '';
    let isRedFlag = false;

    if (sys > 180 || dia > 120) {
      category = 'Significantly Elevated Reading (Red Flag Warning)';
      categoryColor = 'text-rose-700 border-rose-300 bg-rose-50';
      badgeBg = 'bg-rose-600 text-white';
      description = 'This reading is significantly above standard levels. If accompanied by chest pain, shortness of breath, blurred vision, or severe headache, seek emergency medical care immediately.';
      isRedFlag = true;
    } else if (sys >= 140 || dia >= 90) {
      category = 'Above Usual Adult Range (Stage 2)';
      categoryColor = 'text-amber-800 border-amber-300 bg-amber-50';
      badgeBg = 'bg-amber-600 text-white';
      description = 'Your reading is above the usual adult range. Consider re-checking after 5 minutes of rest and discussing with your healthcare provider.';
    } else if ((sys >= 130 && sys <= 139) || (dia >= 80 && dia <= 89)) {
      category = 'Slightly Above Usual Range (Stage 1)';
      categoryColor = 'text-amber-700 border-amber-200 bg-amber-50/60';
      badgeBg = 'bg-amber-500 text-white';
      description = 'Your reading is slightly above the ideal adult range. Lifestyle factors such as stress, caffeine, or recent exercise can temporarily influence blood pressure.';
    } else if (sys >= 120 && sys <= 129 && dia < 80) {
      category = 'Elevated Adult Range';
      categoryColor = 'text-yellow-800 border-yellow-200 bg-yellow-50';
      badgeBg = 'bg-yellow-500 text-white';
      description = 'Your systolic reading is slightly elevated while diastolic remains normal. Maintaining a healthy lifestyle supports optimal cardiovascular health.';
    } else {
      category = 'Normal Adult Blood Pressure Range';
      categoryColor = 'text-emerald-800 border-emerald-200 bg-emerald-50';
      badgeBg = 'bg-emerald-600 text-white';
      description = 'Your reading falls within the standard normal adult range. Keep up balanced nutrition and regular physical activity.';
    }

    setResult({
      sys,
      dia,
      category,
      categoryColor,
      badgeBg,
      description,
      isRedFlag
    });
  };

  return (
    <div className="space-y-6">
      
      {/* Header Info */}
      <div className="flex items-start gap-3 bg-rose-50/60 border border-rose-100 p-4 rounded-2xl">
        <div className="w-10 h-10 rounded-xl bg-rose-600 text-white flex items-center justify-center shrink-0 shadow-xs">
          <HeartPulse className="w-5 h-5" />
        </div>
        <div>
          <h4 className="text-sm font-extrabold text-slate-900">Blood Pressure Check</h4>
          <p className="text-xs text-slate-600 mt-0.5 leading-relaxed">
            Understand your blood pressure reading in seconds based on clinical reference ranges.
          </p>
        </div>
      </div>

      {/* Form Inputs */}
      <form onSubmit={handleEvaluate} className="space-y-4">
        
        <div className="grid grid-cols-2 gap-3">
          <div>
            <label className="block text-xs font-bold text-slate-700 mb-1">
              Systolic (Top / High) <span className="text-rose-500">*</span>
            </label>
            <input
              type="number"
              required
              min="50"
              max="260"
              value={systolic}
              onChange={(e) => setSystolic(e.target.value)}
              placeholder="e.g. 120"
              className="w-full px-3.5 py-2.5 rounded-xl border border-slate-200 text-sm font-extrabold text-slate-900 focus:ring-2 focus:ring-rose-500 outline-none"
            />
            <span className="text-[10px] text-slate-400 mt-0.5 block">mmHg</span>
          </div>

          <div>
            <label className="block text-xs font-bold text-slate-700 mb-1">
              Diastolic (Bottom / Low) <span className="text-rose-500">*</span>
            </label>
            <input
              type="number"
              required
              min="30"
              max="160"
              value={diastolic}
              onChange={(e) => setDiastolic(e.target.value)}
              placeholder="e.g. 80"
              className="w-full px-3.5 py-2.5 rounded-xl border border-slate-200 text-sm font-extrabold text-slate-900 focus:ring-2 focus:ring-rose-500 outline-none"
            />
            <span className="text-[10px] text-slate-400 mt-0.5 block">mmHg</span>
          </div>
        </div>

        <div>
          <label className="block text-xs font-bold text-slate-700 mb-1">
            Age Category
          </label>
          <select
            value={ageGroup}
            onChange={(e) => setAgeGroup(e.target.value)}
            className="w-full px-3 py-2.5 rounded-xl border border-slate-200 text-xs font-bold text-slate-900 bg-white focus:ring-2 focus:ring-rose-500 outline-none cursor-pointer"
          >
            <option value="adult">Adult (18–64 years)</option>
            <option value="older_adult">Older Adult (65+ years)</option>
          </select>
        </div>

        <button
          type="submit"
          className="w-full py-3 px-5 rounded-xl bg-rose-600 hover:bg-rose-700 text-white font-extrabold text-xs sm:text-sm flex items-center justify-center gap-2 shadow-md shadow-rose-600/20 transition-all touch-target"
        >
          <Activity className="w-4 h-4" />
          <span>Interpret Reading</span>
        </button>

      </form>

      {/* Result Card */}
      {result && (
        <div className="space-y-4 pt-2 border-t border-slate-100 animate-in fade-in">
          
          <div className={`p-5 rounded-2xl border ${result.categoryColor} space-y-3 shadow-xs`}>
            <div className="flex items-center justify-between">
              <span className={`text-[10px] font-extrabold uppercase tracking-wider px-2.5 py-1 rounded-full ${result.badgeBg}`}>
                {result.sys} / {result.dia} mmHg
              </span>
              <span className="text-xs font-extrabold text-slate-900">
                {result.category}
              </span>
            </div>

            <p className="text-xs font-medium text-slate-800 leading-relaxed">
              {result.description}
            </p>

            {result.isRedFlag && (
              <div className="p-3 bg-rose-100/80 border border-rose-300 rounded-xl text-rose-900 text-xs font-bold flex items-start gap-2">
                <AlertTriangle className="w-4 h-4 text-rose-600 shrink-0 mt-0.5" />
                <span>If you feel dizzy, breathless, or have chest tightness, seek immediate emergency medical care.</span>
              </div>
            )}
          </div>

          {/* Ecosystem Integration */}
          <div className="bg-slate-50 border border-slate-200/80 rounded-2xl p-4 space-y-3">
            <h5 className="text-xs font-extrabold text-slate-900">Want to discuss your reading with Health Express?</h5>
            <div className="flex flex-col sm:flex-row gap-2">
              <button
                type="button"
                onClick={() => openWhatsApp(`Namaste Health Express! I checked my BP reading (${result.sys}/${result.dia} mmHg) on your site and would like to speak with a Health Manager.`)}
                className="flex-1 py-2.5 px-4 rounded-xl bg-emerald-600 hover:bg-emerald-700 text-white text-xs font-bold flex items-center justify-center gap-2 shadow-xs"
              >
                <MessageSquare className="w-4 h-4 fill-current" />
                <span>Talk to Health Manager on WhatsApp</span>
              </button>

              <Link
                to="/services"
                className="py-2.5 px-4 rounded-xl bg-white hover:bg-slate-100 text-slate-900 border border-slate-200 text-xs font-bold flex items-center justify-center gap-1.5"
              >
                <span>Explore Cardiac Tests</span>
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
