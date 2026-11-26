import React from 'react';

/**
 * Bespoke clinical vector icons for Health Express Home Nursing & Eldercare
 * High-definition SVG vectors with medical color themes.
 */

// ==================== 1. 10 ON-DEMAND HOME NURSING SERVICES ====================

// 1. Injection Administration (IM/IV/SC)
export function InjectionNursingIcon({ className = "w-6 h-6" }) {
  return (
    <svg viewBox="0 0 36 36" fill="none" className={className}>
      <rect width="36" height="36" rx="10" fill="#EDE9FE" />
      {/* Syringe barrel */}
      <rect x="14" y="11" width="8" height="15" rx="2" fill="#7E22CE" />
      <rect x="16" y="15" width="4" height="7" rx="1" fill="#DDD6FE" />
      {/* Plunger */}
      <path d="M18 26v4M15 30h6" stroke="#581C87" strokeWidth="2" strokeLinecap="round" />
      {/* Needle & Medication drop */}
      <path d="M18 11V6" stroke="#581C87" strokeWidth="1.8" strokeLinecap="round" />
      <circle cx="18" cy="4" r="1.5" fill="#38BDF8" />
    </svg>
  );
}

// 2. IV Drip / Infusion (Saline & Medications)
export function IvDripNursingIcon({ className = "w-6 h-6" }) {
  return (
    <svg viewBox="0 0 36 36" fill="none" className={className}>
      <rect width="36" height="36" rx="10" fill="#E0F2FE" />
      {/* Infusion bottle */}
      <rect x="12" y="7" width="12" height="16" rx="4" fill="#0284C7" />
      <path d="M14 11h8" stroke="#BAE6FD" strokeWidth="1.5" strokeLinecap="round" />
      <rect x="15" y="23" width="6" height="3" rx="1" fill="#0369A1" />
      {/* Drip chamber & tube */}
      <path d="M18 26v6" stroke="#0284C7" strokeWidth="1.8" strokeLinecap="round" />
      <circle cx="18" cy="28" r="1.2" fill="#38BDF8" />
      {/* Top hanger loop */}
      <path d="M18 7V4" stroke="#0369A1" strokeWidth="1.8" strokeLinecap="round" />
    </svg>
  );
}

// 3. Dressing Change (Sterile Wound Care & Ulcers)
export function WoundDressingNursingIcon({ className = "w-6 h-6" }) {
  return (
    <svg viewBox="0 0 36 36" fill="none" className={className}>
      <rect width="36" height="36" rx="10" fill="#ECFDF5" />
      {/* Adhesive bandage strip */}
      <rect x="8" y="14" width="20" height="8" rx="4" transform="rotate(-30 18 18)" fill="#10B981" />
      <rect x="15" y="14" width="6" height="8" transform="rotate(-30 18 18)" fill="#A7F3D0" />
      {/* Clinical Cross */}
      <path d="M18 15v6M15 18h6" stroke="#FFFFFF" strokeWidth="1.5" strokeLinecap="round" />
    </svg>
  );
}

// 4. Catheter-Related Care (Foley Insertion & Flushing)
export function CatheterCareNursingIcon({ className = "w-6 h-6" }) {
  return (
    <svg viewBox="0 0 36 36" fill="none" className={className}>
      <rect width="36" height="36" rx="10" fill="#EFF6FF" />
      {/* Flexible Medical Tubing Loop */}
      <path d="M10 24c0-8 8-16 16-8s0 14-8 10" stroke="#0284C7" strokeWidth="2.5" strokeLinecap="round" />
      {/* Balloon port connector */}
      <circle cx="10" cy="24" r="2.5" fill="#F59E0B" />
      <circle cx="18" cy="26" r="2" fill="#38BDF8" />
    </svg>
  );
}

// 5. Nebulization (Respiratory Inhalation Therapy)
export function NebulizationNursingIcon({ className = "w-6 h-6" }) {
  return (
    <svg viewBox="0 0 36 36" fill="none" className={className}>
      <rect width="36" height="36" rx="10" fill="#F0FDF4" />
      {/* Inhalation Mask / Chamber */}
      <path d="M12 12c0-3 3-5 6-5s6 2 6 5v8c0 4-3 7-6 7s-6-3-6-7v-8z" fill="#16A34A" />
      {/* Aerosol Vapor Plume */}
      <path d="M18 15c-1-2 0-4 1-5M21 16c-1-2 0-4 1-5" stroke="#FFFFFF" strokeWidth="1.5" strokeLinecap="round" />
      <circle cx="18" cy="27" r="1.5" fill="#86EFAC" />
    </svg>
  );
}

// 6. Vital Checks (Pulse, SpO2, Temp, Respiration)
export function VitalChecksNursingIcon({ className = "w-6 h-6" }) {
  return (
    <svg viewBox="0 0 36 36" fill="none" className={className}>
      <rect width="36" height="36" rx="10" fill="#FFE4E6" />
      {/* Heart with ECG waveform */}
      <path d="M18 28l-1.5-1.5C9.5 20.5 6 17 6 13c0-3.5 2.8-6 6.3-6 2 0 3.9 1 5.7 2.6C19.8 8 21.7 7 23.7 7 27.2 7 30 9.5 30 13c0 4-3.5 7.5-10.5 13.5L18 28z" fill="#E11D48" />
      <path d="M11 17h3l1.5-3 2.5 6 2-4 1 1h3" stroke="#FFFFFF" strokeWidth="1.8" strokeLinecap="round" strokeLinejoin="round" />
    </svg>
  );
}

// 7. Blood Sugar Check (Glucometer with Drop)
export function BloodSugarNursingIcon({ className = "w-6 h-6" }) {
  return (
    <svg viewBox="0 0 36 36" fill="none" className={className}>
      <rect width="36" height="36" rx="10" fill="#FEF3C7" />
      {/* Glucometer device body */}
      <rect x="11" y="9" width="14" height="20" rx="4" fill="#D97706" />
      <rect x="14" y="12" width="8" height="6" rx="1.5" fill="#FEF3C7" />
      <circle cx="18" cy="24" r="2" fill="#FDE047" />
      {/* Test strip with glucose drop */}
      <rect x="16" y="5" width="4" height="5" rx="1" fill="#FFFFFF" />
      <circle cx="18" cy="7" r="1.2" fill="#DC2626" />
    </svg>
  );
}

// 8. Blood Pressure Check (Sphygmomanometer Cuff & Gauge)
export function BloodPressureNursingIcon({ className = "w-6 h-6" }) {
  return (
    <svg viewBox="0 0 36 36" fill="none" className={className}>
      <rect width="36" height="36" rx="10" fill="#FAF5FF" />
      {/* Arm cuff */}
      <rect x="8" y="14" width="12" height="15" rx="3" fill="#7E22CE" />
      {/* Circular dial gauge */}
      <circle cx="25" cy="15" r="7" fill="#FFFFFF" stroke="#581C87" strokeWidth="2" />
      <path d="M25 15l-2-2.5" stroke="#EF4444" strokeWidth="1.5" strokeLinecap="round" />
      {/* Connecting tube */}
      <path d="M14 14c0-5 6-5 8-2" stroke="#475569" strokeWidth="1.5" strokeLinecap="round" />
    </svg>
  );
}

// 9. Sample Collection (Home Specimen & Blood Tubes)
export function SampleCollectionNursingIcon({ className = "w-6 h-6" }) {
  return (
    <svg viewBox="0 0 36 36" fill="none" className={className}>
      <rect width="36" height="36" rx="10" fill="#FDF4FF" />
      {/* Vacuum blood collection tube */}
      <rect x="15" y="11" width="6" height="18" rx="3" fill="#FFFFFF" stroke="#9333EA" strokeWidth="1.5" />
      <rect x="14" y="6" width="8" height="6" rx="1.5" fill="#A855F7" />
      {/* Blood sample level */}
      <path d="M16 20h4v6a2 2 0 01-2 2 2 2 0 01-2-2v-6z" fill="#DC2626" />
    </svg>
  );
}

// 10. Medication Administration (Prescription Scheduling)
export function MedicationNursingIcon({ className = "w-6 h-6" }) {
  return (
    <svg viewBox="0 0 36 36" fill="none" className={className}>
      <rect width="36" height="36" rx="10" fill="#ECFDF5" />
      {/* Medical Capsule */}
      <rect x="8" y="14" width="20" height="8" rx="4" transform="rotate(-35 18 18)" fill="#059669" />
      <path d="M14 20l5-7" stroke="#FFFFFF" strokeWidth="2" strokeLinecap="round" />
      {/* Plus indicator */}
      <circle cx="26" cy="10" r="3.5" fill="#FDE047" />
      <path d="M26 8.5v3M24.5 10h3" stroke="#854D0E" strokeWidth="1.2" strokeLinecap="round" />
    </svg>
  );
}

// ==================== 2. COMPREHENSIVE CARE CATEGORY ICONS ====================

// Home Nursing Care
export function ClinicalNursingCareIcon({ className = "w-6 h-6" }) {
  return (
    <svg viewBox="0 0 36 36" fill="none" className={className}>
      <rect width="36" height="36" rx="10" fill="#EDE9FE" />
      {/* Nurse Cap with Cross */}
      <path d="M10 20c0-6 3.5-11 8-11s8 5 8 11H10z" fill="#7E22CE" />
      <rect x="8" y="20" width="20" height="4" rx="2" fill="#581C87" />
      <path d="M18 13v4M16 15h4" stroke="#FFFFFF" strokeWidth="1.8" strokeLinecap="round" />
    </svg>
  );
}

// Post-Hospital & Recovery Care
export function PostHospitalRecoveryIcon({ className = "w-6 h-6" }) {
  return (
    <svg viewBox="0 0 36 36" fill="none" className={className}>
      <rect width="36" height="36" rx="10" fill="#E0F2FE" />
      {/* Home House with Clinical Cross and Recovery Arrow */}
      <path d="M7 16l11-9 11 9v12a2 2 0 01-2 2H9a2 2 0 01-2-2V16z" fill="#0284C7" />
      <path d="M18 16v6M15 19h6" stroke="#FFFFFF" strokeWidth="2" strokeLinecap="round" />
      <circle cx="26" cy="10" r="3" fill="#F59E0B" />
    </svg>
  );
}

// Post-Operative Care at Home
export function PostOperativeCareIcon({ className = "w-6 h-6" }) {
  return (
    <svg viewBox="0 0 36 36" fill="none" className={className}>
      <rect width="36" height="36" rx="10" fill="#ECFDF5" />
      {/* Surgical Shield with Healing Suture */}
      <path d="M18 6L8 10v9c0 7 4.2 12 10 13 5.8-1 10-6 10-13v-9L18 6z" fill="#059669" />
      <path d="M13 18l3.5 3.5 6.5-6.5" stroke="#FFFFFF" strokeWidth="2" strokeLinecap="round" strokeLinejoin="round" />
    </svg>
  );
}

// Elderly Care
export function ElderlyCareIcon({ className = "w-6 h-6" }) {
  return (
    <svg viewBox="0 0 36 36" fill="none" className={className}>
      <rect width="36" height="36" rx="10" fill="#FEF3C7" />
      {/* Elderly Profile Silhouette with Walking Cane / Support Heart */}
      <circle cx="16" cy="12" r="4.5" fill="#D97706" />
      <path d="M9 26c0-4 3.5-7 7-7s6 2 7 6" stroke="#D97706" strokeWidth="2" strokeLinecap="round" />
      <path d="M23 16v11" stroke="#B45309" strokeWidth="2" strokeLinecap="round" />
      <circle cx="24" cy="12" r="3" fill="#E11D48" />
    </svg>
  );
}

// Patient Caregivers (Bedside Assistance)
export function BedsideCaregiverIcon({ className = "w-6 h-6" }) {
  return (
    <svg viewBox="0 0 36 36" fill="none" className={className}>
      <rect width="36" height="36" rx="10" fill="#EFF6FF" />
      {/* Attendant Caregiver Helping Patient Hand */}
      <path d="M8 20c4-4 8-4 12 0l8-8" stroke="#0284C7" strokeWidth="2.5" strokeLinecap="round" />
      <circle cx="12" cy="12" r="3.5" fill="#38BDF8" />
      <circle cx="24" cy="12" r="3.5" fill="#0284C7" />
    </svg>
  );
}

// Respite Care (Care for Family Caregivers)
export function RespiteCareIcon({ className = "w-6 h-6" }) {
  return (
    <svg viewBox="0 0 36 36" fill="none" className={className}>
      <rect width="36" height="36" rx="10" fill="#FFE4E6" />
      {/* Loving Hands Supporting Nurture Heart */}
      <path d="M10 24c3 3 7 4 10 4s7-1 10-4" stroke="#E11D48" strokeWidth="2.5" strokeLinecap="round" />
      <path d="M18 10c-2.5-2.5-6.5-1-6.5 2 0 3 4 6 6.5 8 2.5-2 6.5-5 6.5-8 0-3-4-4.5-6.5-2z" fill="#F43F5E" />
    </svg>
  );
}

// Japa Caregivers for New Mothers & Newborns
export function JapaCaregiverIcon({ className = "w-8 h-8" }) {
  return (
    <svg viewBox="0 0 48 48" fill="none" className={className}>
      <rect width="48" height="48" rx="14" fill="#FDF2F8" />
      {/* Mother Silhouette embracing baby bundle */}
      <circle cx="21" cy="16" r="5" fill="#DB2777" />
      <path d="M14 36c0-7 4-11 9-11 3 0 6 2 8 5" stroke="#DB2777" strokeWidth="3" strokeLinecap="round" />
      {/* Newborn Baby in soft swaddle */}
      <ellipse cx="29" cy="27" rx="5" ry="6" fill="#F472B6" />
      <circle cx="29" cy="23" r="2.5" fill="#FDF2F8" />
      {/* Love sparkles */}
      <circle cx="36" cy="14" r="2" fill="#F59E0B" />
    </svg>
  );
}

// ==================== 3. SPECIALIZED CARE PROGRAM ICONS ====================

// Dementia Care
export function DementiaCareProgramIcon({ className = "w-6 h-6" }) {
  return (
    <svg viewBox="0 0 24 24" fill="none" className={className}>
      <path d="M12 4c-3.5 0-6 2.5-6 6 0 2 .8 3.5 2 4.5v3.5c0 1 1 2 2 2h4c1 0 2-1 2-2V14.5c1.2-1 2-2.5 2-4.5 0-3.5-2.5-6-6-6z" stroke="#C084FC" strokeWidth="1.8" strokeLinecap="round" />
      <path d="M10 10c1-1 3-1 4 0" stroke="#FDE047" strokeWidth="1.5" strokeLinecap="round" />
    </svg>
  );
}

// Companion Care
export function CompanionCareProgramIcon({ className = "w-6 h-6" }) {
  return (
    <svg viewBox="0 0 24 24" fill="none" className={className}>
      <circle cx="8" cy="9" r="3" stroke="#A7F3D0" strokeWidth="1.8" />
      <circle cx="16" cy="9" r="3" stroke="#A7F3D0" strokeWidth="1.8" />
      <path d="M4 19c0-3 2.5-5 5-5s3 1 4 2M15 14c2.5 0 5 2 5 5" stroke="#A7F3D0" strokeWidth="1.8" strokeLinecap="round" />
    </svg>
  );
}

// Disability Care
export function DisabilityCareProgramIcon({ className = "w-6 h-6" }) {
  return (
    <svg viewBox="0 0 24 24" fill="none" className={className}>
      <circle cx="12" cy="6" r="2.5" fill="#93C5FD" />
      <path d="M10 11h4l2 5-3 2-1-3" stroke="#93C5FD" strokeWidth="1.8" strokeLinecap="round" strokeLinejoin="round" />
      <circle cx="10" cy="18" r="3" stroke="#93C5FD" strokeWidth="1.8" />
    </svg>
  );
}

// Live-In Care
export function LiveInCareProgramIcon({ className = "w-6 h-6" }) {
  return (
    <svg viewBox="0 0 24 24" fill="none" className={className}>
      <path d="M4 11l8-6 8 6v9a2 2 0 01-2 2H6a2 2 0 01-2-2V11z" stroke="#FBCFE8" strokeWidth="1.8" />
      <circle cx="12" cy="14" r="2" fill="#F472B6" />
      <path d="M10 18c0-1.5 1-2 2-2s2 .5 2 2" stroke="#F472B6" strokeWidth="1.2" />
    </svg>
  );
}

// Helper resolver for the on-demand services
export const ON_DEMAND_ICON_MAP = {
  'injection': InjectionNursingIcon,
  'iv-drip': IvDripNursingIcon,
  'dressing': WoundDressingNursingIcon,
  'catheter': CatheterCareNursingIcon,
  'nebulization': NebulizationNursingIcon,
  'vitals': VitalChecksNursingIcon,
  'blood-sugar': BloodSugarNursingIcon,
  'bp-check': BloodPressureNursingIcon,
  'sample-col': SampleCollectionNursingIcon,
  'medication': MedicationNursingIcon,
};
