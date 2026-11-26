import React from 'react';

/**
 * Bespoke clinical vector icons for Health Express Health Library & Medical Guides
 * High-definition SVG vectors with medical color themes.
 */

// ==================== 1. TOPIC FINDER CONCERN ICONS ====================

// 🩸 Blood Test Basics (CBC / Hematology)
export function BloodTestConcernIcon({ className = "w-4 h-4" }) {
  return (
    <svg viewBox="0 0 24 24" fill="none" className={className}>
      <path 
        d="M12 3C8.5 7.5 5 11.5 5 15.5 5 19.1 7.9 22 11.5 22s6.5-2.9 6.5-6.5C18 11.5 14.5 7.5 12 3z" 
        fill="#EF4444" 
      />
      <path 
        d="M9 14.5c-.8 1.2-1 2.2-.8 3.5" 
        stroke="#FFFFFF" 
        strokeWidth="1.5" 
        strokeLinecap="round" 
        opacity="0.8" 
      />
      <circle cx="13.5" cy="16.5" r="1.5" fill="#FCA5A5" />
      <circle cx="15.5" cy="13.5" r="1" fill="#FFFFFF" opacity="0.9" />
    </svg>
  );
}

// 🍬 Diabetes & HbA1c (Glucose / Glycemic Control)
export function DiabetesConcernIcon({ className = "w-4 h-4" }) {
  return (
    <svg viewBox="0 0 24 24" fill="none" className={className}>
      {/* Glucometer device body */}
      <rect x="5" y="3" width="14" height="18" rx="5" fill="#0284C7" stroke="#0369A1" strokeWidth="1" />
      {/* LCD Screen */}
      <rect x="7.5" y="6" width="9" height="6" rx="1.5" fill="#F0F9FF" />
      <path d="M9 9h3M9 10.5h1.5" stroke="#0369A1" strokeWidth="1" strokeLinecap="round" />
      <circle cx="14.5" cy="9" r="1" fill="#EF4444" />
      {/* Test Strip with Blood Drop */}
      <rect x="10.5" y="1" width="3" height="3" rx="0.5" fill="#E2E8F0" stroke="#94A3B8" strokeWidth="0.8" />
      <circle cx="12" cy="2" r="0.8" fill="#DC2626" />
      {/* Center Button */}
      <circle cx="12" cy="16.5" r="2" fill="#38BDF8" />
    </svg>
  );
}

// ❤️ Heart & Cholesterol (Cardiovascular / Lipids)
export function HeartLipidConcernIcon({ className = "w-4 h-4" }) {
  return (
    <svg viewBox="0 0 24 24" fill="none" className={className}>
      <path 
        d="M12 21.35l-1.45-1.32C5.4 15.36 2 12.28 2 8.5 2 5.42 4.42 3 7.5 3c1.74 0 3.41.81 4.5 2.09C13.09 3.81 14.76 3 16.5 3 19.58 3 22 5.42 22 8.5c0 3.78-3.4 6.86-8.55 11.54L12 21.35z" 
        fill="#E11D48" 
      />
      {/* Dynamic ECG Wave */}
      <path 
        d="M6 10h3l1.5-3 2.5 6 1.5-4 1 1h2.5" 
        stroke="#FFFFFF" 
        strokeWidth="1.5" 
        strokeLinecap="round" 
        strokeLinejoin="round" 
      />
    </svg>
  );
}

// ⚡ Fatigue & Full Body Checkup (Energy & Comprehensive Panels)
export function FullBodyConcernIcon({ className = "w-4 h-4" }) {
  return (
    <svg viewBox="0 0 24 24" fill="none" className={className}>
      <circle cx="12" cy="12" r="10" fill="#FEF3C7" stroke="#FDE68A" strokeWidth="1" />
      {/* Lightning energy */}
      <path 
        d="M13 3L6 13h5l-2 8 8-10h-5l2-8z" 
        fill="#F59E0B" 
        stroke="#D97706" 
        strokeWidth="1" 
        strokeLinejoin="round" 
      />
    </svg>
  );
}

// 📋 Preparing for Test (Fasting, Hydration & Checklist)
export function PrepareTestConcernIcon({ className = "w-4 h-4" }) {
  return (
    <svg viewBox="0 0 24 24" fill="none" className={className}>
      <rect x="4" y="3" width="16" height="18" rx="3" fill="#FAF5FF" stroke="#C084FC" strokeWidth="1.2" />
      {/* Top Clip */}
      <rect x="9" y="1.5" width="6" height="3" rx="1" fill="#7E22CE" />
      {/* Checklist items with green checkmarks */}
      <path d="M7 8l1.5 1.5 3-3" stroke="#16A34A" strokeWidth="1.2" strokeLinecap="round" strokeLinejoin="round" />
      <line x1="13" y1="8" x2="17" y2="8" stroke="#64748B" strokeWidth="1.2" strokeLinecap="round" />
      <path d="M7 13l1.5 1.5 3-3" stroke="#16A34A" strokeWidth="1.2" strokeLinecap="round" strokeLinejoin="round" />
      <line x1="13" y1="13" x2="17" y2="13" stroke="#64748B" strokeWidth="1.2" strokeLinecap="round" />
      <path d="M7 18l1.5 1.5 3-3" stroke="#16A34A" strokeWidth="1.2" strokeLinecap="round" strokeLinejoin="round" />
      <line x1="13" y1="18" x2="17" y2="18" stroke="#64748B" strokeWidth="1.2" strokeLinecap="round" />
    </svg>
  );
}

// ==================== 2. CATEGORY FILTER ICONS ====================

// All Categories (Library Book & Medical Caduceus)
export function LibraryAllIcon({ className = "w-4 h-4" }) {
  return (
    <svg viewBox="0 0 24 24" fill="none" stroke="currentColor" strokeWidth="2" strokeLinecap="round" strokeLinejoin="round" className={className}>
      <path d="M4 19.5A2.5 2.5 0 0 1 6.5 17H20" />
      <path d="M6.5 2H20v20H6.5A2.5 2.5 0 0 1 4 19.5v-15A2.5 2.5 0 0 1 6.5 2z" />
      <path d="M9 7h6M9 11h4" strokeWidth="1.5" />
    </svg>
  );
}

// Diagnostics (Microscope / Test Tube Lab)
export function LibraryDiagnosticsIcon({ className = "w-4 h-4" }) {
  return (
    <svg viewBox="0 0 24 24" fill="none" stroke="currentColor" strokeWidth="2" strokeLinecap="round" strokeLinejoin="round" className={className}>
      <path d="M9 3h6M10 3v5l-4 8a2 2 0 001.7 3h8.6a2 2 0 001.7-3l-4-8V3" />
      <path d="M7.5 14h9" strokeWidth="1.5" />
    </svg>
  );
}

// Preventive Health (Shield with Cross & Pulse)
export function LibraryPreventiveIcon({ className = "w-4 h-4" }) {
  return (
    <svg viewBox="0 0 24 24" fill="none" stroke="currentColor" strokeWidth="2" strokeLinecap="round" strokeLinejoin="round" className={className}>
      <path d="M12 22s8-4 8-10V5l-8-3-8 3v7c0 6 8 10 8 10z" />
      <path d="M12 8v8M8 12h8" strokeWidth="2" strokeLinecap="round" />
    </svg>
  );
}

// Wellness & Screening (Vibrant Wellness Flower / Sunburst)
export function LibraryWellnessIcon({ className = "w-4 h-4" }) {
  return (
    <svg viewBox="0 0 24 24" fill="none" stroke="currentColor" strokeWidth="2" strokeLinecap="round" strokeLinejoin="round" className={className}>
      <circle cx="12" cy="12" r="4" />
      <path d="M12 2v2M12 20v2M4.93 4.93l1.41 1.41M17.66 17.66l1.41 1.41M2 12h2M20 12h2M6.34 17.66l-1.41 1.41M19.07 4.93l-1.41 1.41" />
    </svg>
  );
}

// Patient Guide (Clinical Handbook / Stethoscope on Clipboard)
export function LibraryPatientGuideIcon({ className = "w-4 h-4" }) {
  return (
    <svg viewBox="0 0 24 24" fill="none" stroke="currentColor" strokeWidth="2" strokeLinecap="round" strokeLinejoin="round" className={className}>
      <path d="M16 4h2a2 2 0 0 1 2 2v14a2 2 0 0 1-2 2H6a2 2 0 0 1-2-2V6a2 2 0 0 1 2-2h2" />
      <rect x="8" y="2" width="8" height="4" rx="1" />
      <path d="M9 12l2 2 4-4" strokeWidth="2" />
    </svg>
  );
}

// ==================== 3. ARTICLE BADGE ICONS ====================

// Specific Vector Icons for Each Article Guide Card
export function CbcArticleIcon({ className = "w-7 h-7" }) {
  return (
    <svg viewBox="0 0 36 36" fill="none" className={className}>
      <rect width="36" height="36" rx="10" fill="#FEE2E2" />
      <path d="M18 7c-4 5-8 9-8 14a8 8 0 0016 0c0-5-4-9-8-14z" fill="#DC2626" />
      <circle cx="18" cy="22" r="2.5" fill="#FFFFFF" />
      <circle cx="14" cy="19" r="1.5" fill="#FCA5A5" />
      <circle cx="21" cy="18" r="1" fill="#FCA5A5" />
    </svg>
  );
}

export function Hba1cArticleIcon({ className = "w-7 h-7" }) {
  return (
    <svg viewBox="0 0 36 36" fill="none" className={className}>
      <rect width="36" height="36" rx="10" fill="#E0F2FE" />
      <rect x="10" y="8" width="16" height="20" rx="4" fill="#0284C7" />
      <rect x="13" y="11" width="10" height="7" rx="2" fill="#F0F9FF" />
      <path d="M15 14h4" stroke="#0369A1" strokeWidth="1.5" strokeLinecap="round" />
      <circle cx="18" cy="23" r="2" fill="#38BDF8" />
    </svg>
  );
}

export function FullBodyArticleIcon({ className = "w-7 h-7" }) {
  return (
    <svg viewBox="0 0 36 36" fill="none" className={className}>
      <rect width="36" height="36" rx="10" fill="#FEF3C7" />
      <path d="M18 8L9 22h7l-2 10 11-14h-7l3-8z" fill="#F59E0B" stroke="#D97706" strokeWidth="1.2" strokeLinejoin="round" />
    </svg>
  );
}

export function PrepareTestArticleIcon({ className = "w-7 h-7" }) {
  return (
    <svg viewBox="0 0 36 36" fill="none" className={className}>
      <rect width="36" height="36" rx="10" fill="#F3E8FF" />
      <rect x="10" y="8" width="16" height="20" rx="3" fill="#FFFFFF" stroke="#9333EA" strokeWidth="1.5" />
      <rect x="13" y="6" width="10" height="3" rx="1" fill="#7E22CE" />
      <path d="M13 14l2 2 4-4" stroke="#16A34A" strokeWidth="1.5" strokeLinecap="round" strokeLinejoin="round" />
      <path d="M13 20l2 2 4-4" stroke="#16A34A" strokeWidth="1.5" strokeLinecap="round" strokeLinejoin="round" />
    </svg>
  );
}

export function LipidArticleIcon({ className = "w-7 h-7" }) {
  return (
    <svg viewBox="0 0 36 36" fill="none" className={className}>
      <rect width="36" height="36" rx="10" fill="#FFE4E6" />
      <path d="M18 9c-2-3-7-3-9 0-3 3 0 7 9 15 9-8 12-12 9-15-2-3-7-3-9 0z" fill="#E11D48" />
      <path d="M12 16h3l2-3 2 6 2-3h3" stroke="#FFFFFF" strokeWidth="1.5" strokeLinecap="round" strokeLinejoin="round" />
    </svg>
  );
}

// Master Article Icon Resolver
export function ArticleTopicIcon({ slug, id, category, className = "w-7 h-7" }) {
  const key = slug || id || '';
  if (key.includes('cbc') || key.includes('blood')) return <CbcArticleIcon className={className} />;
  if (key.includes('hba1c') || key.includes('diabetes')) return <Hba1cArticleIcon className={className} />;
  if (key.includes('full-body') || key.includes('checkup')) return <FullBodyArticleIcon className={className} />;
  if (key.includes('prepare') || key.includes('patient')) return <PrepareTestArticleIcon className={className} />;
  if (key.includes('lipid') || key.includes('cholesterol')) return <LipidArticleIcon className={className} />;
  
  if (category === 'Diagnostics') return <CbcArticleIcon className={className} />;
  if (category === 'Preventive Health') return <LipidArticleIcon className={className} />;
  if (category === 'Wellness & Screening') return <FullBodyArticleIcon className={className} />;
  if (category === 'Patient Guide') return <PrepareTestArticleIcon className={className} />;
  
  return <CbcArticleIcon className={className} />;
}

// ==================== 4. TRUST & ACCREDITATION ICONS ====================

// Doctor Approved Seal Badge
export function DoctorApprovedSealIcon({ className = "w-4 h-4" }) {
  return (
    <svg viewBox="0 0 24 24" fill="none" className={className}>
      <circle cx="12" cy="12" r="10" fill="#DCFCE7" stroke="#16A34A" strokeWidth="1.5" />
      <path d="M8 12l2.5 2.5 5.5-5.5" stroke="#15803D" strokeWidth="2" strokeLinecap="round" strokeLinejoin="round" />
    </svg>
  );
}

// Featured Guide Gold Medal
export function FeaturedGuideStarIcon({ className = "w-3.5 h-3.5" }) {
  return (
    <svg viewBox="0 0 24 24" fill="none" className={className}>
      <path d="M12 2l3.09 6.26L22 9.27l-5 4.87 1.18 6.88L12 17.77l-6.18 3.25L7 14.14 2 9.27l6.91-1.01L12 2z" fill="#FDE047" stroke="#CA8A04" strokeWidth="1.5" strokeLinejoin="round" />
    </svg>
  );
}

// Medical Report Consultation Icon (for Bottom Banner)
export function MedicalReportConsultIcon({ className = "w-14 h-14" }) {
  return (
    <svg viewBox="0 0 56 56" fill="none" className={className}>
      <rect x="6" y="6" width="44" height="44" rx="14" fill="#312E81" stroke="#4338CA" strokeWidth="1.5" />
      {/* Paper Sheet */}
      <rect x="14" y="12" width="28" height="32" rx="4" fill="#FFFFFF" />
      <rect x="18" y="16" width="8" height="3" rx="1" fill="#7E22CE" />
      <line x1="18" y1="23" x2="38" y2="23" stroke="#E2E8F0" strokeWidth="2" strokeLinecap="round" />
      <line x1="18" y1="28" x2="34" y2="28" stroke="#E2E8F0" strokeWidth="2" strokeLinecap="round" />
      <line x1="18" y1="33" x2="30" y2="33" stroke="#E2E8F0" strokeWidth="2" strokeLinecap="round" />
      {/* Stethoscope wrapping across */}
      <circle cx="36" cy="38" r="5" fill="#10B981" />
      <path d="M34 38l1.5 1.5 3-3" stroke="#FFFFFF" strokeWidth="1.5" strokeLinecap="round" strokeLinejoin="round" />
    </svg>
  );
}
