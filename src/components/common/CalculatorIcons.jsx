import React from 'react';

/**
 * Bespoke clinical vector icons for Health Express Health Calculators
 * High-definition SVG vectors with medical color themes.
 */

// 1. BMI CALCULATOR (Body Scale with Multi-Color Reference Gauge)
export function BmiIcon({ className = "w-10 h-10" }) {
  return (
    <svg viewBox="0 0 48 48" fill="none" className={className}>
      {/* Scale Platform Base */}
      <rect x="6" y="8" width="36" height="34" rx="8" fill="#F1F5F9" stroke="#CBD5E1" strokeWidth="2" />
      <rect x="9" y="11" width="30" height="28" rx="6" fill="#FFFFFF" />
      
      {/* Dial Window */}
      <path d="M14 22a10 10 0 0120 0z" fill="#F8FAFC" stroke="#E2E8F0" strokeWidth="1.5" />
      {/* 4 Colored Reference Arcs: Blue (Underweight), Green (Normal), Amber (Overweight), Rose (Obese) */}
      <path d="M15 22a9 9 0 012.5-5.5" stroke="#38BDF8" strokeWidth="3" strokeLinecap="round" />
      <path d="M18.5 15.5a9 9 0 016.5-2.5" stroke="#22C55E" strokeWidth="3" />
      <path d="M26 13a9 9 0 015 2.5" stroke="#F59E0B" strokeWidth="3" />
      <path d="M31.5 16.5a9 9 0 012 5.5" stroke="#EF4444" strokeWidth="3" strokeLinecap="round" />
      
      {/* Gauge Pivot & Needle pointing to Healthy Green */}
      <circle cx="24" cy="22" r="2.5" fill="#475569" />
      <path d="M24 22l-1-7" stroke="#0F172A" strokeWidth="2" strokeLinecap="round" />
      <circle cx="24" cy="22" r="1" fill="#FFFFFF" />

      {/* Digital Readout Screen */}
      <rect x="16" y="27" width="16" height="8" rx="2" fill="#0F172A" />
      <text x="24" y="33" textAnchor="middle" fill="#38BDF8" fontSize="5.5" fontFamily="monospace" fontWeight="bold">22.4</text>
      
      {/* Foot Grips */}
      <rect x="10" y="27" width="3" height="8" rx="1.5" fill="#E2E8F0" />
      <rect x="35" y="27" width="3" height="8" rx="1.5" fill="#E2E8F0" />
    </svg>
  );
}

// 2. BMR CALCULATOR (Metabolic Flame & Cellular Energy Glow)
export function BmrIcon({ className = "w-10 h-10" }) {
  return (
    <svg viewBox="0 0 48 48" fill="none" className={className}>
      {/* Soft Glowing Background Circle */}
      <circle cx="24" cy="24" r="20" fill="#FFF7ED" stroke="#FED7AA" strokeWidth="1.5" />
      
      {/* Metabolic Energy Outer Ring */}
      <circle cx="24" cy="24" r="16" stroke="#FB923C" strokeWidth="1.5" strokeDasharray="3 3" opacity="0.6" />

      {/* Main Metabolic Flame */}
      <path 
        d="M24 8c2.5 5 8 8.5 8 16 0 6.6-4.5 12-10 12s-10-5.4-10-12c0-5 3.5-9 6-12 0 3.5 2 6 3 6 1 0 2-4 3-6z" 
        fill="url(#bmrFlameGrad)" 
      />
      {/* Inner Hot Core Flame */}
      <path 
        d="M24 20c1.5 2.5 4 4.5 4 8 0 3.3-2.2 6-5 6s-5-2.7-5-6c0-2.5 1.8-4.5 3-6 0 1.8 1 3 1.5 3 .5 0 1-2.5 1.5-3z" 
        fill="#FDE047" 
      />

      {/* Sparkles / ATP Energy Sparks */}
      <circle cx="34" cy="14" r="1.5" fill="#F97316" />
      <circle cx="13" cy="18" r="1.5" fill="#F59E0B" />
      <circle cx="35" cy="28" r="1" fill="#EAB308" />
      <circle cx="12" cy="28" r="1" fill="#F97316" />

      <defs>
        <linearGradient id="bmrFlameGrad" x1="12" y1="8" x2="32" y2="36" gradientUnits="userSpaceOnUse">
          <stop stopColor="#F97316" />
          <stop offset="0.6" stopColor="#EF4444" />
          <stop offset="1" stopColor="#9333EA" />
        </linearGradient>
      </defs>
    </svg>
  );
}

// 3. DAILY CALORIE / TDEE CALCULATOR (Dynamic Energy Bolt & Nutrition Vitality)
export function CalorieIcon({ className = "w-10 h-10" }) {
  return (
    <svg viewBox="0 0 48 48" fill="none" className={className}>
      {/* Background Squircle */}
      <rect x="5" y="5" width="38" height="38" rx="12" fill="#FEF3C7" stroke="#FDE68A" strokeWidth="1.5" />
      
      {/* Energy Sunburst Halo */}
      <circle cx="24" cy="24" r="14" fill="#FEF9C3" />
      <circle cx="24" cy="24" r="14" stroke="#F59E0B" strokeWidth="1.5" strokeDasharray="2 3" />

      {/* High Energy Lightning Bolt */}
      <path 
        d="M26 8L15 24h9l-3 16 14-18h-9l3-14z" 
        fill="url(#calGrad)" 
        stroke="#D97706" 
        strokeWidth="1.5" 
        strokeLinejoin="round" 
      />

      {/* Nutrition Vitality Leaf on side */}
      <path 
        d="M32 10c2 3 1 7-2 9-3 2-7 1-9-2 2-3 6-7 11-7z" 
        fill="#10B981" 
        opacity="0.9"
      />
      <path d="M26 15c2-1 4-2 6-5" stroke="#FFFFFF" strokeWidth="1" strokeLinecap="round" />

      <defs>
        <linearGradient id="calGrad" x1="15" y1="8" x2="31" y2="40" gradientUnits="userSpaceOnUse">
          <stop stopColor="#FDE047" />
          <stop offset="0.5" stopColor="#F59E0B" />
          <stop offset="1" stopColor="#EA580C" />
        </linearGradient>
      </defs>
    </svg>
  );
}

// 4. IDEAL WEIGHT CALCULATOR (Equilibrium Balance Scale & Target Bullseye)
export function IdealWeightIcon({ className = "w-10 h-10" }) {
  return (
    <svg viewBox="0 0 48 48" fill="none" className={className}>
      {/* Soft Base */}
      <rect x="5" y="5" width="38" height="38" rx="12" fill="#ECFDF5" stroke="#A7F3D0" strokeWidth="1.5" />

      {/* Scale Pillar & Base */}
      <path d="M16 38h16M24 14v24" stroke="#475569" strokeWidth="2.5" strokeLinecap="round" />
      <path d="M20 38l4-4 4 4" stroke="#475569" strokeWidth="2" strokeLinecap="round" strokeLinejoin="round" />
      
      {/* Top Crossbeam */}
      <path d="M10 16h28" stroke="#334155" strokeWidth="2.5" strokeLinecap="round" />
      
      {/* Center Pivot Jewel */}
      <circle cx="24" cy="16" r="3" fill="#10B981" stroke="#047857" strokeWidth="1.5" />

      {/* Left Pan */}
      <path d="M10 16l-3 9M16 16l-3 9" stroke="#94A3B8" strokeWidth="1.5" />
      <path d="M5 25c1 4 7 4 8 0H5z" fill="#0284C7" stroke="#0369A1" strokeWidth="1.5" />

      {/* Right Pan */}
      <path d="M32 16l3 9M38 16l-3 9" stroke="#94A3B8" strokeWidth="1.5" />
      <path d="M35 25c1 4 7 4 8 0h-8z" fill="#0284C7" stroke="#0369A1" strokeWidth="1.5" />

      {/* Target Verified Checkmark at Center Top */}
      <circle cx="24" cy="8" r="4.5" fill="#10B981" />
      <path d="M22 8l1.5 1.5 3-3" stroke="#FFFFFF" strokeWidth="1.5" strokeLinecap="round" strokeLinejoin="round" />
    </svg>
  );
}

// 5. BODY FAT CALCULATOR (Medical Caliper & Physique Ratio Contour)
export function BodyFatIcon({ className = "w-10 h-10" }) {
  return (
    <svg viewBox="0 0 48 48" fill="none" className={className}>
      {/* Soft Base */}
      <rect x="5" y="5" width="38" height="38" rx="12" fill="#F0F9FF" stroke="#BAE6FD" strokeWidth="1.5" />

      {/* Caliper Measurement Arc Scale */}
      <path d="M16 14a12 12 0 0116 0" stroke="#0284C7" strokeWidth="2" strokeLinecap="round" />
      <path d="M20 12v3M24 10v4M28 12v3" stroke="#0284C7" strokeWidth="1.5" strokeLinecap="round" />

      {/* Caliper Pincer Arm Left */}
      <path d="M14 18c0 10 5 18 10 20" stroke="#0369A1" strokeWidth="3" strokeLinecap="round" />
      {/* Caliper Pincer Arm Right */}
      <path d="M34 18c0 10-5 18-10 20" stroke="#0369A1" strokeWidth="3" strokeLinecap="round" />
      
      {/* Measurement Tips Pinch Point */}
      <circle cx="24" cy="38" r="2.5" fill="#38BDF8" stroke="#0284C7" strokeWidth="1.5" />

      {/* Percentage Badge */}
      <circle cx="24" cy="24" r="7" fill="#7E22CE" />
      <text x="24" y="27" textAnchor="middle" fill="#FFFFFF" fontSize="8" fontWeight="bold">%</text>
    </svg>
  );
}

// 6. WATER INTAKE CALCULATOR (Crystal Hydration Droplet & Wave Level)
export function WaterIntakeIcon({ className = "w-10 h-10" }) {
  return (
    <svg viewBox="0 0 48 48" fill="none" className={className}>
      {/* Soft Base */}
      <rect x="5" y="5" width="38" height="38" rx="12" fill="#EFF6FF" stroke="#BFDBFE" strokeWidth="1.5" />

      {/* Hydration Ripple Waves Background */}
      <ellipse cx="24" cy="38" rx="14" ry="4" fill="#DBEAFE" />
      
      {/* Water Droplet Main Body */}
      <path 
        d="M24 9c4.5 6 12 15 12 21a12 12 0 01-24 0c0-6 7.5-15 12-21z" 
        fill="url(#waterDropGrad)" 
      />

      {/* Glass Light Reflection / Shimmer */}
      <path 
        d="M20 17c-2 3-4 7-4 11 0 1.5.3 3 .8 4.2" 
        stroke="#FFFFFF" 
        strokeWidth="2.5" 
        strokeLinecap="round" 
        opacity="0.8" 
      />

      {/* Internal Water Level Line with Ripple */}
      <path 
        d="M15 28c3 1.5 6-1.5 9 0s6 1.5 9 0" 
        stroke="#93C5FD" 
        strokeWidth="1.5" 
        strokeLinecap="round" 
        opacity="0.9" 
      />

      {/* Fresh Little Splash Droplet */}
      <circle cx="34" cy="16" r="2" fill="#38BDF8" />
      <circle cx="12" cy="22" r="1.5" fill="#60A5FA" />

      <defs>
        <linearGradient id="waterDropGrad" x1="12" y1="9" x2="34" y2="39" gradientUnits="userSpaceOnUse">
          <stop stopColor="#60A5FA" />
          <stop offset="0.6" stopColor="#0284C7" />
          <stop offset="1" stopColor="#1E40AF" />
        </linearGradient>
      </defs>
    </svg>
  );
}

// 7. BLOOD PRESSURE CHECKER (Clinical Cuff, Gauge & Systolic/Diastolic Pulse)
export function BloodPressureIcon({ className = "w-10 h-10" }) {
  return (
    <svg viewBox="0 0 48 48" fill="none" className={className}>
      {/* Soft Base */}
      <rect x="5" y="5" width="38" height="38" rx="12" fill="#FAF5FF" stroke="#E9D5FF" strokeWidth="1.5" />

      {/* BP Arm Cuff Rectangle */}
      <rect x="8" y="24" width="16" height="15" rx="3" fill="#6B21A8" stroke="#581C87" strokeWidth="1.5" />
      <line x1="12" y1="24" x2="12" y2="39" stroke="#A855F7" strokeWidth="1.5" strokeDasharray="2 2" />
      <line x1="16" y1="24" x2="16" y2="39" stroke="#A855F7" strokeWidth="1.5" strokeDasharray="2 2" />

      {/* Rubber Tube connecting Cuff to Gauge */}
      <path d="M16 24c0-8 8-8 12-4" stroke="#475569" strokeWidth="2" strokeLinecap="round" />

      {/* Manometer Circular Gauge */}
      <circle cx="32" cy="18" r="11" fill="#FFFFFF" stroke="#0F172A" strokeWidth="2" />
      
      {/* 3 Zone Colored Sectors (Green Normal, Amber Elevated, Red Hypertension) */}
      <path d="M25 18a7 7 0 013.5-6" stroke="#22C55E" strokeWidth="2.5" strokeLinecap="round" />
      <path d="M30 11.5a7 7 0 016 1.5" stroke="#F59E0B" strokeWidth="2.5" />
      <path d="M37 14.5a7 7 0 012 3.5" stroke="#EF4444" strokeWidth="2.5" strokeLinecap="round" />

      {/* Needle Pointing to Normal Zone */}
      <circle cx="32" cy="18" r="1.5" fill="#0F172A" />
      <path d="M32 18l-3.5-4" stroke="#DC2626" strokeWidth="1.5" strokeLinecap="round" />

      {/* Small Heart with EKG wave at bottom right */}
      <circle cx="35" cy="34" r="6" fill="#FEE2E2" stroke="#FCA5A5" strokeWidth="1" />
      <path d="M31 34h2l1.5-3 2 6 1.5-3h2" stroke="#DC2626" strokeWidth="1.2" strokeLinecap="round" strokeLinejoin="round" />
    </svg>
  );
}

// 8. TARGET HEART RATE CALCULATOR (Cardiovascular Pulse & Training Heart Rate Zones)
export function TargetHeartRateIcon({ className = "w-10 h-10" }) {
  return (
    <svg viewBox="0 0 48 48" fill="none" className={className}>
      {/* Soft Base */}
      <rect x="5" y="5" width="38" height="38" rx="12" fill="#FFF1F2" stroke="#FECDD3" strokeWidth="1.5" />

      {/* Target Zone Concentric Rings */}
      <circle cx="24" cy="24" r="16" stroke="#FDA4AF" strokeWidth="1.5" strokeDasharray="3 3" />
      <circle cx="24" cy="24" r="12" stroke="#FB7185" strokeWidth="1.5" strokeDasharray="2 2" opacity="0.7" />

      {/* Anatomical Clinical Heart Shape */}
      <path 
        d="M24 13.5C21 9 14 9 11.5 14c-3 6 2 13 12.5 19 10.5-6 15.5-13 12.5-19-2.5-5-9.5-5-12.5-.5z" 
        fill="url(#hrGrad)" 
      />

      {/* White Crisp EKG Pulse Wave across Heart */}
      <path 
        d="M13 23h5l2-5 3.5 10 3-7 1.5 2h7" 
        stroke="#FFFFFF" 
        strokeWidth="2" 
        strokeLinecap="round" 
        strokeLinejoin="round" 
      />

      {/* Target Crosshairs */}
      <circle cx="24" cy="24" r="3" stroke="#FDE047" strokeWidth="1.5" />

      <defs>
        <linearGradient id="hrGrad" x1="11" y1="9" x2="37" y2="33" gradientUnits="userSpaceOnUse">
          <stop stopColor="#F43F5E" />
          <stop offset="0.7" stopColor="#E11D48" />
          <stop offset="1" stopColor="#BE123C" />
        </linearGradient>
      </defs>
    </svg>
  );
}

// 9. PREGNANCY DUE DATE CALCULATOR (Maternity Calendar, Baby Footprint & Star Date)
export function DueDateIcon({ className = "w-10 h-10" }) {
  return (
    <svg viewBox="0 0 48 48" fill="none" className={className}>
      {/* Soft Base */}
      <rect x="5" y="5" width="38" height="38" rx="12" fill="#FDF2F8" stroke="#FBCFE8" strokeWidth="1.5" />

      {/* Calendar Base */}
      <rect x="9" y="11" width="30" height="27" rx="5" fill="#FFFFFF" stroke="#E2E8F0" strokeWidth="1.5" />
      
      {/* Calendar Top Header Strip (Berry Pink) */}
      <path d="M9 16c0-2.8 2.2-5 5-5h20c2.8 0 5 2.2 5 5v4H9v-4z" fill="#EC4899" />
      {/* Calendar Binding Rings */}
      <rect x="15" y="8" width="2.5" height="5" rx="1" fill="#475569" />
      <rect x="23" y="8" width="2.5" height="5" rx="1" fill="#475569" />
      <rect x="31" y="8" width="2.5" height="5" rx="1" fill="#475569" />

      {/* Cute Baby Footprints Inside Calendar */}
      {/* Heel */}
      <ellipse cx="18" cy="30" rx="2.5" ry="3.5" fill="#F472B6" />
      {/* Toes */}
      <circle cx="16" cy="24.5" r="1" fill="#F472B6" />
      <circle cx="17.5" cy="23.5" r="1.1" fill="#F472B6" />
      <circle cx="19.5" cy="24" r="1" fill="#F472B6" />
      <circle cx="21" cy="25.5" r="0.8" fill="#F472B6" />

      {/* Glowing Expected Due Date Gold Star / Heart Badge */}
      <circle cx="29" cy="28" r="6" fill="#FDE047" stroke="#F59E0B" strokeWidth="1.5" />
      <path d="M29 25.5l.8 1.8 1.9.3-1.4 1.3.3 1.9-1.6-.9-1.6.9.3-1.9-1.4-1.3 1.9-.3.8-1.8z" fill="#D97706" />
    </svg>
  );
}

// 10. PREGNANCY WEIGHT GAIN CALCULATOR (Maternal Contour & Healthy Trajectory Curve)
export function PregnancyWeightIcon({ className = "w-10 h-10" }) {
  return (
    <svg viewBox="0 0 48 48" fill="none" className={className}>
      {/* Soft Base */}
      <rect x="5" y="5" width="38" height="38" rx="12" fill="#FFF1F2" stroke="#FFE4E6" strokeWidth="1.5" />

      {/* Expectant Mother Silhouette Outline */}
      <circle cx="21" cy="13" r="3.5" fill="#FB7185" />
      <path 
        d="M20 18c-3 1-5 4-5 8v6h4v-5c0-1 1-3 3-3s5 3 5 7c0 4-2 7-6 7" 
        stroke="#E11D48" 
        strokeWidth="2" 
        strokeLinecap="round" 
      />
      {/* Baby Bump Curve */}
      <path 
        d="M21 21c4 0 8 3 8 7s-3 6-7 7" 
        stroke="#FB7185" 
        strokeWidth="3.5" 
        strokeLinecap="round" 
        fill="#FFE4E6" 
      />

      {/* Healthy Weight Progress Chart Line */}
      <path 
        d="M12 36c6-1 14-4 22-14" 
        stroke="#10B981" 
        strokeWidth="2.5" 
        strokeLinecap="round" 
      />
      {/* Growth Check Dot */}
      <circle cx="34" cy="22" r="3" fill="#10B981" stroke="#FFFFFF" strokeWidth="1.5" />
      <circle cx="24" cy="31" r="2" fill="#34D399" />
    </svg>
  );
}

// 11. OVULATION CALCULATOR (Fertile Cycle Flower & Estrogen Sparkle Spark)
export function OvulationIcon({ className = "w-10 h-10" }) {
  return (
    <svg viewBox="0 0 48 48" fill="none" className={className}>
      {/* Soft Base */}
      <rect x="5" y="5" width="38" height="38" rx="12" fill="#FAF5FF" stroke="#F3E8FF" strokeWidth="1.5" />

      {/* Circular Menstrual Cycle Dial */}
      <circle cx="24" cy="24" r="15" stroke="#E9D5FF" strokeWidth="2.5" />
      
      {/* High-Fertility Golden Window Sector (Days 12-16) */}
      <path 
        d="M24 9a15 15 0 0113 7.5" 
        stroke="#F59E0B" 
        strokeWidth="4" 
        strokeLinecap="round" 
      />
      <path 
        d="M37 16.5a15 15 0 011 5" 
        stroke="#10B981" 
        strokeWidth="4" 
        strokeLinecap="round" 
      />

      {/* Center Blooming Ovum / Flower Icon */}
      <circle cx="24" cy="24" r="5" fill="#F472B6" />
      <circle cx="24" cy="24" r="2.5" fill="#FFFFFF" />
      <circle cx="24" cy="17" r="2" fill="#F472B6" opacity="0.6" />
      <circle cx="24" cy="31" r="2" fill="#F472B6" opacity="0.6" />
      <circle cx="17" cy="24" r="2" fill="#F472B6" opacity="0.6" />
      <circle cx="31" cy="24" r="2" fill="#F472B6" opacity="0.6" />

      {/* Golden Fertile Star Sparkles */}
      <path d="M34 9l1 2 2 1-2 1-1 2-1-2-2-1 2-1 1-2z" fill="#F59E0B" />
      <path d="M12 14l.7 1.4 1.4.7-1.4.7-.7 1.4-.7-1.4-1.4-.7 1.4-.7.7-1.4z" fill="#EC4899" />
    </svg>
  );
}

// ==================== CATEGORY FILTER ICONS ====================

export function CategoryAllToolsIcon({ className = "w-4 h-4" }) {
  return (
    <svg viewBox="0 0 24 24" fill="none" stroke="currentColor" strokeWidth="2" strokeLinecap="round" strokeLinejoin="round" className={className}>
      <rect x="3" y="3" width="7" height="7" rx="1.5" />
      <rect x="14" y="3" width="7" height="7" rx="1.5" />
      <rect x="14" y="14" width="7" height="7" rx="1.5" />
      <rect x="3" y="14" width="7" height="7" rx="1.5" />
    </svg>
  );
}

export function CategoryBodyFitnessIcon({ className = "w-4 h-4" }) {
  return (
    <svg viewBox="0 0 24 24" fill="none" stroke="currentColor" strokeWidth="2" strokeLinecap="round" strokeLinejoin="round" className={className}>
      <path d="M6 5v14M18 5v14M3 9h3M3 15h3M18 9h3M18 15h3M6 12h12" />
    </svg>
  );
}

export function CategoryHeartHealthIcon({ className = "w-4 h-4" }) {
  return (
    <svg viewBox="0 0 24 24" fill="none" stroke="currentColor" strokeWidth="2" strokeLinecap="round" strokeLinejoin="round" className={className}>
      <path d="M19.5 12.572l-7.5 7.428l-7.5 -7.428a5 5 0 1 1 7.5 -6.566a5 5 0 1 1 7.5 6.572" />
      <path d="M9 12h2l1 -2l2 4l1 -2h2" />
    </svg>
  );
}

export function CategoryWomensHealthIcon({ className = "w-4 h-4" }) {
  return (
    <svg viewBox="0 0 24 24" fill="none" stroke="currentColor" strokeWidth="2" strokeLinecap="round" strokeLinejoin="round" className={className}>
      <circle cx="12" cy="9" r="5" />
      <path d="M12 14v7M9 18h6" />
      <path d="M12 6a2 2 0 0 0-2 2" strokeWidth="1.5" opacity="0.6" />
    </svg>
  );
}

// Master map matching calculator slug or id to bespoke component
export const CALCULATOR_ICON_MAP = {
  'bmi-calculator': BmiIcon,
  'bmr-calculator': BmrIcon,
  'calorie-calculator': CalorieIcon,
  'ideal-weight-calculator': IdealWeightIcon,
  'body-fat-calculator': BodyFatIcon,
  'water-intake-calculator': WaterIntakeIcon,
  'blood-pressure-checker': BloodPressureIcon,
  'target-heart-rate-calculator': TargetHeartRateIcon,
  'due-date-calculator': DueDateIcon,
  'pregnancy-weight-gain-calculator': PregnancyWeightIcon,
  'ovulation-calculator': OvulationIcon,
};

// Convenient fallback component
export default function CalculatorIcon({ slug, id, className = "w-10 h-10" }) {
  const key = slug || id;
  const Component = CALCULATOR_ICON_MAP[key] || BmiIcon;
  return <Component className={className} />;
}
