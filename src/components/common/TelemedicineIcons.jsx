import React from 'react';

/**
 * Bespoke clinical vector icons for Health Express Telemedicine & Doctor Consultations
 * High-definition SVG vectors with medical color themes.
 */

// ==================== 1. TELEMEDICINE HERO PLATFORM FEATURES ====================

// 1-on-1 HD Video & Audio Consultations
export function HdVideoConsultIcon({ className = "w-5 h-5" }) {
  return (
    <svg viewBox="0 0 24 24" fill="none" className={className}>
      {/* Video Camera Body */}
      <rect x="2" y="5" width="13" height="14" rx="3" fill="#FDE047" stroke="#CA8A04" strokeWidth="1.2" />
      {/* Lens Cone */}
      <path d="M15 10l5-3.5v11L15 14v-4z" fill="#FDE047" stroke="#CA8A04" strokeWidth="1.2" strokeLinejoin="round" />
      {/* Medical Cross on Camera */}
      <path d="M8.5 9v6M5.5 12h6" stroke="#581C87" strokeWidth="1.8" strokeLinecap="round" />
      {/* Live Broadcast Waves */}
      <circle cx="18" cy="6" r="1.5" fill="#EF4444" />
    </svg>
  );
}

// NABL Lab Test Order Direct Integration
export function LabIntegrationIcon({ className = "w-5 h-5" }) {
  return (
    <svg viewBox="0 0 24 24" fill="none" className={className}>
      {/* Beaker / Test Tube */}
      <path d="M9 3h6M10 3v5l-4 8a2 2 0 001.7 3h8.6a2 2 0 001.7-3l-4-8V3" stroke="#FDE047" strokeWidth="1.5" strokeLinecap="round" strokeLinejoin="round" />
      {/* Liquid in Beaker */}
      <path d="M7.7 15h8.6l1.2 2.5a1 1 0 01-.9 1.5H7.4a1 1 0 01-.9-1.5L7.7 15z" fill="#A855F7" />
      {/* Sync Arrows */}
      <circle cx="18" cy="8" r="4" fill="#581C87" stroke="#FDE047" strokeWidth="1" />
      <path d="M16.5 7.5l1.5-1.5 1.5 1.5M19.5 8.5l-1.5 1.5-1.5-1.5" stroke="#FDE047" strokeWidth="1" strokeLinecap="round" strokeLinejoin="round" />
    </svg>
  );
}

// Verified E-Prescriptions Saved to Health Vault
export function DigitalPrescriptionVaultIcon({ className = "w-5 h-5" }) {
  return (
    <svg viewBox="0 0 24 24" fill="none" className={className}>
      {/* Prescription Document Sheet */}
      <rect x="4" y="3" width="13" height="18" rx="2.5" fill="#FFFFFF" stroke="#FDE047" strokeWidth="1.2" />
      {/* Rx Header */}
      <text x="6.5" y="8" fill="#7E22CE" fontSize="5" fontWeight="900" fontFamily="sans-serif">Rx</text>
      <line x1="6.5" y1="11" x2="14" y2="11" stroke="#CBD5E1" strokeWidth="1" strokeLinecap="round" />
      <line x1="6.5" y1="14" x2="12" y2="14" stroke="#CBD5E1" strokeWidth="1" strokeLinecap="round" />
      {/* Shield / Vault Seal */}
      <path d="M16 11l4-1.5v4c0 3-2 5-4 6-2-1-4-3-4-6v-4l4 1.5z" fill="#10B981" stroke="#047857" strokeWidth="1" />
      <path d="M14.5 14l1 1 2.5-2.5" stroke="#FFFFFF" strokeWidth="1" strokeLinecap="round" strokeLinejoin="round" />
    </svg>
  );
}

// ==================== 2. SPECIALTIES HANDLED ICONS (LEFT CARD) ====================

// General Medicine
export function GeneralMedicineSpecialtyIcon({ className = "w-4 h-4" }) {
  return (
    <svg viewBox="0 0 24 24" fill="none" className={className}>
      <circle cx="12" cy="12" r="10" fill="#EDE9FE" />
      {/* Stethoscope */}
      <path d="M7 6v5a5 5 0 0010 0V6" stroke="#7E22CE" strokeWidth="1.8" strokeLinecap="round" />
      <path d="M12 16v3a2 2 0 002 2h1" stroke="#7E22CE" strokeWidth="1.8" strokeLinecap="round" />
      <circle cx="16" cy="21" r="2" fill="#9333EA" />
      <circle cx="7" cy="6" r="1.5" fill="#7E22CE" />
      <circle cx="17" cy="6" r="1.5" fill="#7E22CE" />
    </svg>
  );
}

// Diabetology & Lipid
export function DiabetologySpecialtyIcon({ className = "w-4 h-4" }) {
  return (
    <svg viewBox="0 0 24 24" fill="none" className={className}>
      <circle cx="12" cy="12" r="10" fill="#E0F2FE" />
      {/* Blood glucose drop */}
      <path d="M12 5c-2.5 3.5-5 6.5-5 9.5 0 2.8 2.2 5 5 5s5-2.2 5-5c0-3-2.5-6-5-9.5z" fill="#0284C7" />
      <circle cx="12" cy="15" r="1.5" fill="#FFFFFF" />
      <path d="M10 11.5l1.5-1.5 2 2" stroke="#FFFFFF" strokeWidth="1" strokeLinecap="round" strokeLinejoin="round" />
    </svg>
  );
}

// Cardiology Second Opinion
export function CardiologySpecialtyIcon({ className = "w-4 h-4" }) {
  return (
    <svg viewBox="0 0 24 24" fill="none" className={className}>
      <circle cx="12" cy="12" r="10" fill="#FFE4E6" />
      {/* Heart */}
      <path d="M12 18.5l-1-1C6.5 13.5 4 11.2 4 8.5 4 6.2 5.8 4.5 8 4.5c1.4 0 2.8.7 3.5 1.8.7-1.1 2.1-1.8 3.5-1.8 2.2 0 4 1.7 4 4 0 2.7-2.5 5-7 9l-1 1z" fill="#E11D48" />
      {/* Pulse Line */}
      <path d="M7 9h2l1-2 1.5 4 1-2.5.8.5h2" stroke="#FFFFFF" strokeWidth="1" strokeLinecap="round" strokeLinejoin="round" />
    </svg>
  );
}

// Dermatology & Skin
export function DermatologySpecialtyIcon({ className = "w-4 h-4" }) {
  return (
    <svg viewBox="0 0 24 24" fill="none" className={className}>
      <circle cx="12" cy="12" r="10" fill="#FEF3C7" />
      {/* Magnifier / Sunburst skin aura */}
      <circle cx="11" cy="11" r="5" stroke="#D97706" strokeWidth="1.8" />
      <path d="M15 15l4 4" stroke="#D97706" strokeWidth="2" strokeLinecap="round" />
      {/* Glow Sparkle */}
      <path d="M11 8v1M11 13v1M8 11h1M13 11h1" stroke="#F59E0B" strokeWidth="1.2" strokeLinecap="round" />
    </svg>
  );
}

// ==================== 3. 8 DOCTOR SPECIALIST BADGES ====================

// 1. General Physician (Dr. Ananya Sharma)
export function PhysicianSpecialistBadge({ className = "w-4 h-4" }) {
  return (
    <svg viewBox="0 0 20 20" fill="none" className={className}>
      <rect width="20" height="20" rx="6" fill="#EDE9FE" />
      <path d="M6 5v4a4 4 0 008 0V5" stroke="#7E22CE" strokeWidth="1.5" strokeLinecap="round" />
      <path d="M10 13v3a1 1 0 001 1h1" stroke="#7E22CE" strokeWidth="1.5" strokeLinecap="round" />
      <circle cx="13" cy="17" r="1.5" fill="#9333EA" />
    </svg>
  );
}

// 2. Gynecologist (Dr. Priya Deshmukh)
export function GynecologySpecialistBadge({ className = "w-4 h-4" }) {
  return (
    <svg viewBox="0 0 20 20" fill="none" className={className}>
      <rect width="20" height="20" rx="6" fill="#FDF2F8" />
      <circle cx="10" cy="8" r="4" stroke="#DB2777" strokeWidth="1.5" />
      <path d="M10 12v5M7.5 14.5h5" stroke="#DB2777" strokeWidth="1.5" strokeLinecap="round" />
    </svg>
  );
}

// 3. Pediatrician (Dr. Neha Verma)
export function PediatricianSpecialistBadge({ className = "w-4 h-4" }) {
  return (
    <svg viewBox="0 0 20 20" fill="none" className={className}>
      <rect width="20" height="20" rx="6" fill="#FEF3C7" />
      {/* Baby Face / Rattle */}
      <circle cx="10" cy="9" r="4.5" fill="#FBBF24" />
      <circle cx="8.5" cy="8" r="0.8" fill="#78350F" />
      <circle cx="11.5" cy="8" r="0.8" fill="#78350F" />
      <path d="M8.5 10.5c.5.8 2.5.8 3 0" stroke="#78350F" strokeWidth="1" strokeLinecap="round" />
      {/* Baby Curl */}
      <path d="M10 4.5c0-.8-.8-1-1-1" stroke="#D97706" strokeWidth="1" strokeLinecap="round" />
    </svg>
  );
}

// 4. Dermatologist (Dr. Pooja Iyer)
export function DermatologistSpecialistBadge({ className = "w-4 h-4" }) {
  return (
    <svg viewBox="0 0 20 20" fill="none" className={className}>
      <rect width="20" height="20" rx="6" fill="#ECFDF5" />
      {/* Sparkle flower / Skin hydration */}
      <path d="M10 4c1 2 3 3 5 3-2 1-3 3-3 5-1-2-3-3-5-3 2-1 3-3 3-5z" fill="#059669" />
      <circle cx="14" cy="14" r="1.5" fill="#34D399" />
    </svg>
  );
}

// 5. Cardiologist (Dr. Ritu Saxena)
export function CardiologistSpecialistBadge({ className = "w-4 h-4" }) {
  return (
    <svg viewBox="0 0 20 20" fill="none" className={className}>
      <rect width="20" height="20" rx="6" fill="#FFE4E6" />
      <path d="M10 16l-.8-.8C5.5 12 3.5 10 3.5 7.5 3.5 5.6 5 4 6.9 4c1.1 0 2.2.5 3.1 1.4C10.9 4.5 12 4 13.1 4c1.9 0 3.4 1.6 3.4 3.5 0 2.5-2 4.5-5.7 7.7l-.8.8z" fill="#E11D48" />
    </svg>
  );
}

// 6. Endocrinologist (Dr. Sneha Pillai)
export function EndocrinologistSpecialistBadge({ className = "w-4 h-4" }) {
  return (
    <svg viewBox="0 0 20 20" fill="none" className={className}>
      <rect width="20" height="20" rx="6" fill="#E0F2FE" />
      {/* Butterfly Thyroid Silhouette */}
      <path d="M10 10c-1-3-4-4-5-2s0 5 3 6c2 .5 2-4 2-4zm0 0c1-3 4-4 5-2s0 5-3 6c-2 .5-2-4-2-4z" fill="#0284C7" />
      <circle cx="10" cy="10" r="1.5" fill="#38BDF8" />
    </svg>
  );
}

// 7. Neurologist (Dr. Kavita Menon)
export function NeurologistSpecialistBadge({ className = "w-4 h-4" }) {
  return (
    <svg viewBox="0 0 20 20" fill="none" className={className}>
      <rect width="20" height="20" rx="6" fill="#F5F3FF" />
      {/* Brain Hemispheres / Synapse */}
      <path d="M10 6c-2.5 0-4 1.5-4 4 0 2 1 3 2 3.5v2.5h4v-2.5c1-.5 2-1.5 2-3.5 0-2.5-1.5-4-4-4z" fill="#7C3AED" />
      <path d="M10 6v10M8 9h4M8 12h4" stroke="#EDE9FE" strokeWidth="1" strokeLinecap="round" />
    </svg>
  );
}

// 8. Ophthalmologist (Dr. Meenakshi Roy)
export function OphthalmologistSpecialistBadge({ className = "w-4 h-4" }) {
  return (
    <svg viewBox="0 0 20 20" fill="none" className={className}>
      <rect width="20" height="20" rx="6" fill="#EFF6FF" />
      {/* Eye */}
      <path d="M3 10s3-5 7-5 7 5 7 5-3 5-7 5-7-5-7-5z" stroke="#2563EB" strokeWidth="1.5" strokeLinecap="round" strokeLinejoin="round" />
      <circle cx="10" cy="10" r="3" fill="#3B82F6" />
      <circle cx="10" cy="10" r="1.2" fill="#FFFFFF" />
    </svg>
  );
}

// Dynamic Resolver for Doctor Card Specialty
export function DoctorSpecialtyIcon({ designation = '', className = "w-4 h-4" }) {
  const d = designation.toLowerCase();
  if (d.includes('general') || d.includes('physician')) return <PhysicianSpecialistBadge className={className} />;
  if (d.includes('gynec') || d.includes('gynaec')) return <GynecologySpecialistBadge className={className} />;
  if (d.includes('pediatric') || d.includes('child')) return <PediatricianSpecialistBadge className={className} />;
  if (d.includes('dermat') || d.includes('skin')) return <DermatologistSpecialistBadge className={className} />;
  if (d.includes('cardio') || d.includes('heart')) return <CardiologistSpecialistBadge className={className} />;
  if (d.includes('endocrin') || d.includes('thyroid') || d.includes('diabet')) return <EndocrinologistSpecialistBadge className={className} />;
  if (d.includes('neuro') || d.includes('brain')) return <NeurologistSpecialistBadge className={className} />;
  if (d.includes('ophthalm') || d.includes('eye')) return <OphthalmologistSpecialistBadge className={className} />;
  
  return <PhysicianSpecialistBadge className={className} />;
}
