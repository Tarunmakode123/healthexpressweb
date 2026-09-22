import React, { useState } from 'react';
import { Pill, Clock, Utensils, Upload, MessageSquare, AlertCircle, CalendarCheck, Check, Sparkles } from 'lucide-react';
import { openWhatsApp } from '../../utils/whatsapp';
import HealthCheckDisclaimer from './HealthCheckDisclaimer';

export default function MedicineTimingTool({ onOpenUploadModal }) {
  const [medicineName, setMedicineName] = useState('');
  const [frequency, setFrequency] = useState('2x'); // 1x, 2x, 3x, 4x
  const [foodTiming, setFoodTiming] = useState('after'); // before, with, after, as_directed
  const [wakeTime, setWakeTime] = useState('07:00');
  const [sleepTime, setSleepTime] = useState('22:00');
  const [generatedSchedule, setGeneratedSchedule] = useState(null);

  const handleGenerateSchedule = (e) => {
    e.preventDefault();
    const name = medicineName.trim() || 'Your Medicine';

    // Parse wake and sleep times in minutes from midnight
    const [wakeH, wakeM] = wakeTime.split(':').map(Number);
    const [sleepH, sleepM] = sleepTime.split(':').map(Number);
    
    let wakeMin = wakeH * 60 + wakeM;
    let sleepMin = sleepH * 60 + sleepM;
    if (sleepMin <= wakeMin) sleepMin += 24 * 60; // Crosses midnight

    const totalAwakeMin = sleepMin - wakeMin;

    const foodLabels = {
      before: 'Before food / Empty stomach',
      with: 'With meal / During food',
      after: 'After meal / Post food',
      as_directed: 'As directed by your doctor'
    };

    const slots = [];

    if (frequency === '1x') {
      // Single dose - usually morning or evening
      const slotMin = wakeMin + 60; // 1 hour after waking
      slots.push({
        time: formatMinutesToTime(slotMin),
        label: foodTiming === 'before' ? 'Before breakfast' : 'After breakfast',
        period: 'Morning'
      });
    } else if (frequency === '2x') {
      // 2 doses - Morning & Evening (~12 hr gap)
      const morningSlot = wakeMin + 60; // Breakfast
      const eveningSlot = Math.min(sleepMin - 120, wakeMin + 13 * 60); // Dinner
      slots.push({
        time: formatMinutesToTime(morningSlot),
        label: foodLabels[foodTiming] + ' (Breakfast)',
        period: 'Morning'
      });
      slots.push({
        time: formatMinutesToTime(eveningSlot),
        label: foodLabels[foodTiming] + ' (Dinner)',
        period: 'Evening'
      });
    } else if (frequency === '3x') {
      // 3 doses - Morning, Mid-day, Night
      const morningSlot = wakeMin + 60;
      const midSlot = wakeMin + Math.floor(totalAwakeMin * 0.45);
      const nightSlot = sleepMin - 90;
      slots.push({
        time: formatMinutesToTime(morningSlot),
        label: foodLabels[foodTiming] + ' (Breakfast)',
        period: 'Morning'
      });
      slots.push({
        time: formatMinutesToTime(midSlot),
        label: foodLabels[foodTiming] + ' (Lunch)',
        period: 'Afternoon'
      });
      slots.push({
        time: formatMinutesToTime(nightSlot),
        label: foodLabels[foodTiming] + ' (Dinner)',
        period: 'Night'
      });
    } else if (frequency === '4x') {
      // 4 doses - evenly distributed
      const step = Math.floor(totalAwakeMin / 4);
      for (let i = 0; i < 4; i++) {
        const slotMin = wakeMin + 30 + i * step;
        const periods = ['Morning', 'Mid-day', 'Evening', 'Night'];
        slots.push({
          time: formatMinutesToTime(slotMin),
          label: foodLabels[foodTiming],
          period: periods[i]
        });
      }
    }

    setGeneratedSchedule({
      name,
      frequencyLabel: getFrequencyLabel(frequency),
      foodLabel: foodLabels[foodTiming],
      slots
    });
  };

  const formatMinutesToTime = (totalMinutes) => {
    let mins = totalMinutes % (24 * 60);
    const hours = Math.floor(mins / 60);
    const m = mins % 60;
    const period = hours >= 12 ? 'PM' : 'AM';
    const displayH = hours % 12 === 0 ? 12 : hours % 12;
    const displayM = m < 10 ? `0${m}` : m;
    return `${displayH}:${displayM} ${period}`;
  };

  const getFrequencyLabel = (freqKey) => {
    switch (freqKey) {
      case '1x': return 'Once daily (1x)';
      case '2x': return 'Twice daily (2x)';
      case '3x': return 'Three times daily (3x)';
      case '4x': return 'Four times daily (4x)';
      default: return freqKey;
    }
  };

  return (
    <div className="space-y-6">
      
      {/* Header Info */}
      <div className="flex items-start gap-3 bg-purple-50/70 border border-purple-100 p-4 rounded-2xl">
        <div className="w-10 h-10 rounded-xl bg-purple-700 text-white flex items-center justify-center shrink-0 shadow-xs">
          <Pill className="w-5 h-5" />
        </div>
        <div>
          <h4 className="text-sm font-extrabold text-slate-900">Medicine Timing Planner</h4>
          <p className="text-xs text-slate-600 mt-0.5 leading-relaxed">
            Organize your daily medication doses around your sleep and meal routine for consistent adherence.
          </p>
        </div>
      </div>

      {/* Form Inputs */}
      <form onSubmit={handleGenerateSchedule} className="space-y-4">
        
        {/* Medicine Name */}
        <div>
          <label className="block text-xs font-bold text-slate-700 mb-1">
            Medicine Name <span className="text-slate-400 font-normal">(Optional)</span>
          </label>
          <input
            type="text"
            value={medicineName}
            onChange={(e) => setMedicineName(e.target.value)}
            placeholder="e.g. Paracetamol, Multivitamin, Thyroid med"
            className="w-full px-3.5 py-2.5 rounded-xl border border-slate-200 text-xs font-medium text-slate-900 focus:ring-2 focus:ring-purple-600 outline-none"
          />
        </div>

        {/* Frequency & Food Relation Row */}
        <div className="grid grid-cols-1 sm:grid-cols-2 gap-4">
          <div>
            <label className="block text-xs font-bold text-slate-700 mb-1">
              Prescribed Frequency
            </label>
            <select
              value={frequency}
              onChange={(e) => setFrequency(e.target.value)}
              className="w-full px-3 py-2.5 rounded-xl border border-slate-200 text-xs font-bold text-slate-900 bg-white focus:ring-2 focus:ring-purple-600 outline-none cursor-pointer"
            >
              <option value="1x">Once a day (1x)</option>
              <option value="2x">Twice a day (2x)</option>
              <option value="3x">Three times a day (3x)</option>
              <option value="4x">Four times a day (4x)</option>
            </select>
          </div>

          <div>
            <label className="block text-xs font-bold text-slate-700 mb-1">
              Food Relationship
            </label>
            <select
              value={foodTiming}
              onChange={(e) => setFoodTiming(e.target.value)}
              className="w-full px-3 py-2.5 rounded-xl border border-slate-200 text-xs font-bold text-slate-900 bg-white focus:ring-2 focus:ring-purple-600 outline-none cursor-pointer"
            >
              <option value="after">After food</option>
              <option value="before">Before food</option>
              <option value="with">With food / During meal</option>
              <option value="as_directed">As directed by doctor</option>
            </select>
          </div>
        </div>

        {/* Routine Times Row */}
        <div className="grid grid-cols-1 sm:grid-cols-2 gap-4">
          <div>
            <label className="block text-xs font-bold text-slate-700 mb-1 flex items-center gap-1">
              <Clock className="w-3.5 h-3.5 text-purple-600" />
              <span>Usual Wake-up Time</span>
            </label>
            <input
              type="time"
              value={wakeTime}
              onChange={(e) => setWakeTime(e.target.value)}
              className="w-full px-3 py-2 rounded-xl border border-slate-200 text-xs font-bold text-slate-900 focus:ring-2 focus:ring-purple-600 outline-none"
            />
          </div>

          <div>
            <label className="block text-xs font-bold text-slate-700 mb-1 flex items-center gap-1">
              <Clock className="w-3.5 h-3.5 text-purple-600" />
              <span>Usual Sleep Time</span>
            </label>
            <input
              type="time"
              value={sleepTime}
              onChange={(e) => setSleepTime(e.target.value)}
              className="w-full px-3 py-2 rounded-xl border border-slate-200 text-xs font-bold text-slate-900 focus:ring-2 focus:ring-purple-600 outline-none"
            />
          </div>
        </div>

        {/* Generate Button */}
        <button
          type="submit"
          className="w-full py-3 px-5 rounded-xl bg-purple-700 hover:bg-purple-800 text-white font-extrabold text-xs sm:text-sm flex items-center justify-center gap-2 shadow-md shadow-purple-700/20 transition-all touch-target"
        >
          <CalendarCheck className="w-4 h-4" />
          <span>Generate Visual Schedule</span>
        </button>

      </form>

      {/* Generated Result Schedule */}
      {generatedSchedule && (
        <div className="space-y-4 pt-2 border-t border-slate-100 animate-in fade-in">
          
          <div className="bg-slate-900 text-white rounded-2xl p-5 space-y-3 shadow-lg">
            <div className="flex items-center justify-between border-b border-slate-800 pb-3">
              <div>
                <div className="text-[10px] font-extrabold uppercase tracking-wider text-purple-300">
                  DAILY MEDICINE SCHEDULE
                </div>
                <h5 className="text-base font-extrabold text-white">{generatedSchedule.name}</h5>
              </div>
              <span className="text-[11px] font-bold px-2.5 py-1 rounded-full bg-purple-900/80 text-purple-200 border border-purple-700">
                {generatedSchedule.frequencyLabel}
              </span>
            </div>

            {/* Time Slot Timeline */}
            <div className="space-y-2.5 pt-1">
              {generatedSchedule.slots.map((slot, idx) => (
                <div key={idx} className="flex items-center justify-between bg-slate-800/80 p-3 rounded-xl border border-slate-700/60">
                  <div className="flex items-center gap-3">
                    <div className="w-8 h-8 rounded-lg bg-purple-700/80 text-white flex items-center justify-center font-bold text-xs font-mono">
                      #{idx + 1}
                    </div>
                    <div>
                      <div className="text-xs font-extrabold text-white font-mono tracking-wide">
                        {slot.time}
                      </div>
                      <div className="text-[11px] text-slate-300 flex items-center gap-1">
                        <Utensils className="w-3 h-3 text-purple-300" />
                        <span>{slot.label}</span>
                      </div>
                    </div>
                  </div>

                  <span className="text-[10px] font-bold text-purple-300 uppercase tracking-wider bg-slate-900/80 px-2 py-1 rounded-md">
                    {slot.period}
                  </span>
                </div>
              ))}
            </div>

            <p className="text-[11px] text-slate-400 italic pt-1 border-t border-slate-800">
              * Use the exact schedule prescribed by your doctor or pharmacist. This utility organizes timing based on your routine.
            </p>
          </div>

          {/* Ecosystem CTAs */}
          <div className="bg-purple-50/80 border border-purple-200/80 rounded-2xl p-4 space-y-3 text-center sm:text-left">
            <div className="flex flex-col sm:flex-row items-center justify-between gap-3">
              <div>
                <h5 className="text-xs font-extrabold text-purple-950">Need help coordinating your prescription?</h5>
                <p className="text-[11px] text-purple-800 font-medium">Upload your prescription file or speak with our Health Manager team.</p>
              </div>

              <div className="flex items-center gap-2 shrink-0 w-full sm:w-auto">
                <button
                  type="button"
                  onClick={onOpenUploadModal}
                  className="flex-1 sm:flex-initial px-3.5 py-2 rounded-xl bg-purple-700 hover:bg-purple-800 text-white text-xs font-bold flex items-center justify-center gap-1.5 shadow-xs"
                >
                  <Upload className="w-3.5 h-3.5" />
                  <span>Upload Prescription</span>
                </button>

                <button
                  type="button"
                  onClick={() => openWhatsApp("Hello Health Express! I would like help clarifying my medicine schedule.")}
                  className="px-3 py-2 rounded-xl bg-emerald-600 hover:bg-emerald-700 text-white text-xs font-bold flex items-center justify-center gap-1 shadow-xs"
                  title="Talk on WhatsApp"
                >
                  <MessageSquare className="w-3.5 h-3.5 fill-current" />
                  <span className="hidden sm:inline">WhatsApp</span>
                </button>
              </div>
            </div>
          </div>

        </div>
      )}

      {/* Safety Disclaimer */}
      <HealthCheckDisclaimer />

    </div>
  );
}
