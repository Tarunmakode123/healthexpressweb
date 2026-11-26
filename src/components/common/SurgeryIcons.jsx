import React from 'react';

/**
 * Bespoke clinical vector icons for Health Express Surgeries & Specialist Care
 * High-definition SVG vectors with medical color themes.
 */

// ==================== 1. 16 SURGICAL SPECIALITY ICONS ====================

// 1. Orthopaedic Surgery (Knee & Joint Replacement / Bone Trauma)
export function OrthopaedicsSurgeryIcon({ className = "w-6 h-6" }) {
  return (
    <svg viewBox="0 0 36 36" fill="none" className={className}>
      <rect width="36" height="36" rx="10" fill="#EDE9FE" />
      {/* Femur bone / Joint articulation */}
      <path d="M12 9c-1.5 0-3 1.2-3 2.5S10.5 14 12 14v8c-1.5 0-3 1.2-3 2.5S10.5 27 12 27h12c1.5 0 3-1.2 3-2.5s-1.5-2.5-3-2.5v-8c1.5 0 3-1.2 3-2.5S25.5 9 24 9H12z" fill="#7E22CE" opacity="0.85" />
      {/* Titanium Joint Implant Plate */}
      <rect x="15" y="14" width="6" height="8" rx="2" fill="#38BDF8" stroke="#0284C7" strokeWidth="1" />
      <circle cx="18" cy="16" r="0.8" fill="#FFFFFF" />
      <circle cx="18" cy="20" r="0.8" fill="#FFFFFF" />
    </svg>
  );
}

// 2. Spine Surgery (Vertebrae Alignment & Disc Decompression)
export function SpineSurgeryIcon({ className = "w-6 h-6" }) {
  return (
    <svg viewBox="0 0 36 36" fill="none" className={className}>
      <rect width="36" height="36" rx="10" fill="#E0F2FE" />
      {/* Stacked Vertebrae with intervertebral disc cushions */}
      <rect x="11" y="7" width="14" height="4" rx="2" fill="#0284C7" />
      <rect x="13" y="11" width="10" height="2" rx="1" fill="#38BDF8" />
      <rect x="10" y="13" width="16" height="4.5" rx="2" fill="#0284C7" />
      <rect x="13" y="17.5" width="10" height="2" rx="1" fill="#38BDF8" />
      <rect x="9.5" y="19.5" width="17" height="5" rx="2" fill="#0284C7" />
      <rect x="13" y="24.5" width="10" height="2" rx="1" fill="#38BDF8" />
      <rect x="11" y="26.5" width="14" height="4" rx="2" fill="#0284C7" />
      {/* Nerve root accents */}
      <path d="M9 15h2M25 15h2M8.5 22h2M25.5 22h2" stroke="#F59E0B" strokeWidth="1.5" strokeLinecap="round" />
    </svg>
  );
}

// 3. Cardiac & Cardiothoracic Surgery (CABG Bypass / Heart Valve)
export function CardiacSurgeryIcon({ className = "w-6 h-6" }) {
  return (
    <svg viewBox="0 0 36 36" fill="none" className={className}>
      <rect width="36" height="36" rx="10" fill="#FFE4E6" />
      {/* Heart Contour */}
      <path d="M18 29l-1.5-1.5C9.5 21 6 17.5 6 13c0-3.5 2.8-6 6.3-6 2 0 3.9 1 5.7 2.6C19.8 8 21.7 7 23.7 7 27.2 7 30 9.5 30 13c0 4.5-3.5 8-10.5 14.5L18 29z" fill="#E11D48" />
      {/* Aorta Arch Vessel at Top */}
      <path d="M15 7V4c0-1 1-2 3-2s3 1 3 2v3" stroke="#BE123C" strokeWidth="2" strokeLinecap="round" />
      {/* Coronary Bypass Graft Line */}
      <path d="M18 10c0 4 3 6 4 10" stroke="#FDE047" strokeWidth="1.8" strokeLinecap="round" strokeDasharray="1 1" />
      <circle cx="22" cy="20" r="1.5" fill="#FDE047" />
    </svg>
  );
}

// 4. Neurosurgery (Brain & Image-Guided Neuronavigation)
export function NeurosurgeryIcon({ className = "w-6 h-6" }) {
  return (
    <svg viewBox="0 0 36 36" fill="none" className={className}>
      <rect width="36" height="36" rx="10" fill="#F3E8FF" />
      {/* Brain Silhouette */}
      <path d="M18 7c-4.5 0-8 3-8 7.5 0 2 .8 3.8 2 5v4.5c0 1 1 2 2 2h8c1 0 2-1 2-2v-4.5c1.2-1.2 2-3 2-5C26 10 22.5 7 18 7z" fill="#7C3AED" />
      {/* Cortical Folds / Neural Pathways */}
      <path d="M18 7v19M13 12c1.5 1 1.5 3 0 4M23 12c-1.5 1-1.5 3 0 4M14 19h8" stroke="#DDD6FE" strokeWidth="1.5" strokeLinecap="round" />
      {/* Neuronavigation Target Spark */}
      <circle cx="22" cy="11" r="2.5" fill="#FDE047" stroke="#D97706" strokeWidth="1" />
    </svg>
  );
}

// 5. General & Laparoscopic Surgery (Keyhole Gallbladder & Hernia)
export function GeneralLaparoscopicSurgeryIcon({ className = "w-6 h-6" }) {
  return (
    <svg viewBox="0 0 36 36" fill="none" className={className}>
      <rect width="36" height="36" rx="10" fill="#ECFDF5" />
      {/* Trocar / Keyhole Cannula */}
      <rect x="16" y="6" width="4" height="15" rx="2" fill="#059669" />
      <path d="M15 6h6M16 21l2 8 2-8" stroke="#047857" strokeWidth="1.5" strokeLinecap="round" strokeLinejoin="round" />
      {/* Minimally Invasive Laser Optical Light */}
      <circle cx="18" cy="29" r="2.5" fill="#10B981" />
      <path d="M11 15h3M22 15h3" stroke="#10B981" strokeWidth="2" strokeLinecap="round" />
      <circle cx="8" cy="15" r="1.5" fill="#34D399" />
      <circle cx="28" cy="15" r="1.5" fill="#34D399" />
    </svg>
  );
}

// 6. Gastrointestinal Surgery (Liver, Pancreas, Stomach & Colon)
export function GastrointestinalSurgeryIcon({ className = "w-6 h-6" }) {
  return (
    <svg viewBox="0 0 36 36" fill="none" className={className}>
      <rect width="36" height="36" rx="10" fill="#FEF3C7" />
      {/* Stomach & Intestinal curvature */}
      <path d="M14 8c-3 1-6 4-6 9 0 6 5 10 12 10 5 0 8-3 8-7 0-4-3-6-7-7-2-.5-4-2-4-5h-3z" fill="#D97706" />
      <path d="M12 17c2 3 5 4 8 2" stroke="#FEF3C7" strokeWidth="1.8" strokeLinecap="round" />
      <circle cx="21" cy="13" r="2" fill="#10B981" />
    </svg>
  );
}

// 7. Urology (Laser Kidney Stones / Prostate BPH)
export function UrologySurgeryIcon({ className = "w-6 h-6" }) {
  return (
    <svg viewBox="0 0 36 36" fill="none" className={className}>
      <rect width="36" height="36" rx="10" fill="#EFF6FF" />
      {/* Kidney Bean Contour */}
      <path d="M15 8c-4.5 0-8 3.5-8 8s3.5 8 8 8c2.5 0 4-1 5-2.5 1 1.5 2.5 2.5 5 2.5 3 0 5-2 5-5 0-4-3-6-5-6-.5 0-1 .2-1.5.5C23 10.5 19.5 8 15 8z" fill="#0284C7" />
      {/* Laser Holmium Pulse Fragmenting Stone */}
      <circle cx="15" cy="16" r="2.5" fill="#FDE047" stroke="#D97706" strokeWidth="1" />
      <path d="M21 16l-3.5 0" stroke="#EF4444" strokeWidth="1.5" strokeDasharray="1 1" />
    </svg>
  );
}

// 8. Oncology & Cancer Surgery (Tumor Board & Resection)
export function OncologySurgeryIcon({ className = "w-6 h-6" }) {
  return (
    <svg viewBox="0 0 36 36" fill="none" className={className}>
      <rect width="36" height="36" rx="10" fill="#FFF1F2" />
      {/* Protective Shield */}
      <path d="M18 6L8 10v9c0 7 4.2 12 10 13 5.8-1 10-6 10-13v-9L18 6z" fill="#E11D48" />
      {/* Precision Surgical Scalpel / Crosshair */}
      <circle cx="18" cy="18" r="5" stroke="#FFFFFF" strokeWidth="1.5" strokeDasharray="2 2" />
      <circle cx="18" cy="18" r="2" fill="#FFFFFF" />
      <path d="M18 11v3M18 22v3M11 18h3M22 18h3" stroke="#FFFFFF" strokeWidth="1.5" strokeLinecap="round" />
    </svg>
  );
}

// 9. Gynaecological Surgery (Fibroids, Laparoscopic Hysterectomy)
export function GynaecologySurgeryIcon({ className = "w-6 h-6" }) {
  return (
    <svg viewBox="0 0 36 36" fill="none" className={className}>
      <rect width="36" height="36" rx="10" fill="#FDF2F8" />
      {/* Female Health Symbol with Gentle Bloom */}
      <circle cx="18" cy="14" r="6" stroke="#DB2777" strokeWidth="2.5" />
      <path d="M18 20v9M14 24.5h8" stroke="#DB2777" strokeWidth="2.5" strokeLinecap="round" />
      {/* Central Care Heart */}
      <path d="M18 16l-.8-.8c-1.5-1.5-2.2-2.3-2.2-3.2 0-.8.7-1.5 1.5-1.5.5 0 1 .3 1.5.8.5-.5 1-.8 1.5-.8.8 0 1.5.7 1.5 1.5 0 .9-.7 1.7-2.2 3.2L18 16z" fill="#F43F5E" />
    </svg>
  );
}

// 10. ENT Surgery (Ear, Nose, Throat & Sinus)
export function EntSurgeryIcon({ className = "w-6 h-6" }) {
  return (
    <svg viewBox="0 0 36 36" fill="none" className={className}>
      <rect width="36" height="36" rx="10" fill="#FAF5FF" />
      {/* Ear contour & otoscope focus */}
      <path d="M14 9c4.5 0 8 3.5 8 8 0 3-1.5 5-3 6.5-1.5 1.5-2 2.5-2 4.5h-3c0-2.5.5-4 2-5.5 1.2-1.2 2-2.5 2-4.5 0-2.8-2.2-5-5-5s-5 2.2-5 5h-2c0-4.5 3.5-8 8-8z" fill="#9333EA" />
      <circle cx="14" cy="17" r="2.5" fill="#38BDF8" />
      <circle cx="24" cy="12" r="1.5" fill="#F59E0B" />
    </svg>
  );
}

// 11. Ophthalmic Surgery (Cataract, LASIK & Retinal Care)
export function OphthalmologySurgeryIcon({ className = "w-6 h-6" }) {
  return (
    <svg viewBox="0 0 36 36" fill="none" className={className}>
      <rect width="36" height="36" rx="10" fill="#F0F9FF" />
      {/* Eye shape */}
      <path d="M6 18s4.5-8 12-8 12 8 12 8-4.5 8-12 8-12-8-12-8z" stroke="#0284C7" strokeWidth="2" strokeLinecap="round" strokeLinejoin="round" />
      {/* Iris & Pupil */}
      <circle cx="18" cy="18" r="5" fill="#38BDF8" />
      <circle cx="18" cy="18" r="2.5" fill="#0F172A" />
      <circle cx="19.5" cy="16.5" r="1" fill="#FFFFFF" />
      {/* Laser beam precision point */}
      <path d="M18 7v3" stroke="#EF4444" strokeWidth="2" strokeLinecap="round" />
    </svg>
  );
}

// 12. Plastic & Reconstructive Surgery (Precision Contours)
export function PlasticSurgeryIcon({ className = "w-6 h-6" }) {
  return (
    <svg viewBox="0 0 36 36" fill="none" className={className}>
      <rect width="36" height="36" rx="10" fill="#FFF7ED" />
      {/* Reconstructive calipers & golden proportion sparkles */}
      <path d="M10 26C10 16 16 10 26 10" stroke="#EA580C" strokeWidth="2.5" strokeLinecap="round" strokeDasharray="3 3" />
      <path d="M26 10l-4 1 1-4 3 3z" fill="#EA580C" />
      <circle cx="13" cy="23" r="2.5" fill="#F59E0B" />
      <circle cx="18" cy="18" r="3" fill="#10B981" />
      <circle cx="23" cy="13" r="2.5" fill="#F59E0B" />
    </svg>
  );
}

// 13. Transplant Surgery (Liver / Kidney Organ Transplant)
export function TransplantSurgeryIcon({ className = "w-6 h-6" }) {
  return (
    <svg viewBox="0 0 36 36" fill="none" className={className}>
      <rect width="36" height="36" rx="10" fill="#ECFDF5" />
      {/* Nurturing Hands holding organ / new life */}
      <path d="M8 24c3 3 7 4 10 4s7-1 10-4" stroke="#059669" strokeWidth="2.5" strokeLinecap="round" />
      {/* Healthy Vibrant Organ / Vitality Bean */}
      <path d="M18 10c-3 0-5.5 2.2-5.5 5s2.2 5 5.5 5 5.5-2.2 5.5-5-2.2-5-5-5z" fill="#10B981" />
      {/* Reconnection pulse cross */}
      <path d="M18 13v4M16 15h4" stroke="#FFFFFF" strokeWidth="1.5" strokeLinecap="round" />
    </svg>
  );
}

// 14. IVF & Fertility Surgery (Reproductive Medicine & Embryology)
export function IvfFertilitySurgeryIcon({ className = "w-6 h-6" }) {
  return (
    <svg viewBox="0 0 36 36" fill="none" className={className}>
      <rect width="36" height="36" rx="10" fill="#FDF4FF" />
      {/* Blastocyst cellular embryo */}
      <circle cx="18" cy="18" r="9" stroke="#A855F7" strokeWidth="2" strokeDasharray="3 2" />
      <circle cx="18" cy="18" r="5" fill="#C084FC" />
      <circle cx="16" cy="16" r="2" fill="#FFFFFF" />
      <circle cx="20" cy="19" r="1.5" fill="#E879F9" />
      {/* Life Sparkle */}
      <path d="M26 8l1 2 2 1-2 1-1 2-1-2-2-1 2-1 1-2z" fill="#F59E0B" />
    </svg>
  );
}

// 15. Aesthetic & Cosmetic Surgery (Beauty Silhouette & Golden Ratio)
export function AestheticCosmeticSurgeryIcon({ className = "w-6 h-6" }) {
  return (
    <svg viewBox="0 0 36 36" fill="none" className={className}>
      <rect width="36" height="36" rx="10" fill="#FFF1F2" />
      {/* Elegant Facial Profile Curve */}
      <path d="M12 9c2 0 5 1 6 4s0 6 3 7 5 1 5 4-3 5-7 5" stroke="#E11D48" strokeWidth="2.5" strokeLinecap="round" />
      {/* Diamond / Sparkle of Perfection */}
      <circle cx="25" cy="12" r="3" fill="#FDE047" stroke="#F59E0B" strokeWidth="1" />
      <circle cx="13" cy="22" r="2" fill="#FB7185" />
    </svg>
  );
}

// 16. Hair & Aesthetic Treatments (Micro Follicle Graft Restoration)
export function HairAestheticSurgeryIcon({ className = "w-6 h-6" }) {
  return (
    <svg viewBox="0 0 36 36" fill="none" className={className}>
      <rect width="36" height="36" rx="10" fill="#F5F3FF" />
      {/* Hair Follicle strands with roots */}
      <path d="M13 26c0-6 2-12 5-18M18 26c0-5 1.5-10 4-15M23 26c0-4 1-8 3-12" stroke="#7C3AED" strokeWidth="2" strokeLinecap="round" />
      {/* Nutrient follicle bulb roots */}
      <circle cx="13" cy="26" r="2" fill="#A855F7" />
      <circle cx="18" cy="26" r="2" fill="#A855F7" />
      <circle cx="23" cy="26" r="2" fill="#A855F7" />
    </svg>
  );
}

// ==================== 2. PROCESS PILLAR ICONS ====================

// Pillar 1: Find the Right Specialist
export function SpecialistMatchIcon({ className = "w-6 h-6" }) {
  return (
    <svg viewBox="0 0 36 36" fill="none" className={className}>
      <circle cx="18" cy="18" r="16" fill="#EDE9FE" />
      {/* Doctor Silhouette with Stethoscope */}
      <circle cx="18" cy="13" r="4.5" fill="#7E22CE" />
      <path d="M10 26c0-4.4 3.6-8 8-8s8 3.6 8 8" fill="#7E22CE" opacity="0.8" />
      {/* Verified check badge */}
      <circle cx="25" cy="12" r="4" fill="#10B981" />
      <path d="M23.5 12l1 1 2-2" stroke="#FFFFFF" strokeWidth="1.2" strokeLinecap="round" strokeLinejoin="round" />
    </svg>
  );
}

// Pillar 2: Explore Hospital Options
export function HospitalCompareIcon({ className = "w-6 h-6" }) {
  return (
    <svg viewBox="0 0 36 36" fill="none" className={className}>
      <circle cx="18" cy="18" r="16" fill="#E0F2FE" />
      {/* Hospital Building with Medical Cross */}
      <rect x="10" y="11" width="16" height="17" rx="2" fill="#0284C7" />
      <rect x="15" y="6" width="6" height="5" rx="1" fill="#0369A1" />
      <path d="M18 14v4M16 16h4" stroke="#FFFFFF" strokeWidth="1.5" strokeLinecap="round" />
      <rect x="13" y="21" width="3" height="3" fill="#BAE6FD" />
      <rect x="20" y="21" width="3" height="3" fill="#BAE6FD" />
    </svg>
  );
}

// Pillar 3: Understand Treatment Costs
export function CostTransparencyIcon({ className = "w-6 h-6" }) {
  return (
    <svg viewBox="0 0 36 36" fill="none" className={className}>
      <circle cx="18" cy="18" r="16" fill="#FEF3C7" />
      {/* Rupee Shield / Financial Clarity */}
      <path d="M18 6l9 4v7c0 6-4 11-9 13-5-2-9-7-9-13v-7l9-4z" fill="#D97706" />
      {/* Rupee Symbol */}
      <path d="M15 13h6M15 16h6M15 16c1.5 0 3 .5 3 2s-1.5 2-3 2h-.5l3.5 4" stroke="#FFFFFF" strokeWidth="1.5" strokeLinecap="round" />
    </svg>
  );
}

// Pillar 4: Coordinate Your Care
export function CareDeskCoordinationIcon({ className = "w-6 h-6" }) {
  return (
    <svg viewBox="0 0 36 36" fill="none" className={className}>
      <circle cx="18" cy="18" r="16" fill="#ECFDF5" />
      {/* Clock Face with Care Coordination Tick */}
      <circle cx="18" cy="18" r="10" stroke="#059669" strokeWidth="2.5" />
      <path d="M18 12v6l4 2" stroke="#059669" strokeWidth="2" strokeLinecap="round" />
      <circle cx="26" cy="10" r="3.5" fill="#10B981" />
      <path d="M26 8v4M24 10h4" stroke="#FFFFFF" strokeWidth="1.2" strokeLinecap="round" />
    </svg>
  );
}

// ==================== 3. MASTER RESOLVER MAP ====================

export const SURGERY_ICON_MAP = {
  'orthopaedics': OrthopaedicsSurgeryIcon,
  'spine': SpineSurgeryIcon,
  'cardiac': CardiacSurgeryIcon,
  'neurosurgery': NeurosurgeryIcon,
  'general-surgery': GeneralLaparoscopicSurgeryIcon,
  'gastrointestinal': GastrointestinalSurgeryIcon,
  'urology': UrologySurgeryIcon,
  'oncology': OncologySurgeryIcon,
  'gynaecology': GynaecologySurgeryIcon,
  'ent': EntSurgeryIcon,
  'ophthalmology': OphthalmologySurgeryIcon,
  'plastic-reconstructive': PlasticSurgeryIcon,
  'transplant': TransplantSurgeryIcon,
  'ivf-fertility': IvfFertilitySurgeryIcon,
  'aesthetic-cosmetic': AestheticCosmeticSurgeryIcon,
  'hair-aesthetic': HairAestheticSurgeryIcon,
};

// Category text resolver for Popular Surgeries grid
export function SurgeryCategoryIcon({ category = '', className = "w-5 h-5" }) {
  const c = category.toLowerCase();
  if (c.includes('ortho') || c.includes('bone') || c.includes('joint')) return <OrthopaedicsSurgeryIcon className={className} />;
  if (c.includes('spine')) return <SpineSurgeryIcon className={className} />;
  if (c.includes('cardiac') || c.includes('heart')) return <CardiacSurgeryIcon className={className} />;
  if (c.includes('neuro') || c.includes('brain')) return <NeurosurgeryIcon className={className} />;
  if (c.includes('general')) return <GeneralLaparoscopicSurgeryIcon className={className} />;
  if (c.includes('gastro') || c.includes('digest')) return <GastrointestinalSurgeryIcon className={className} />;
  if (c.includes('urol') || c.includes('kidney') || c.includes('prostate')) return <UrologySurgeryIcon className={className} />;
  if (c.includes('oncol') || c.includes('cancer')) return <OncologySurgeryIcon className={className} />;
  if (c.includes('gyn') || c.includes('women')) return <GynaecologySurgeryIcon className={className} />;
  if (c.includes('ent') || c.includes('ear') || c.includes('throat')) return <EntSurgeryIcon className={className} />;
  if (c.includes('ophthal') || c.includes('eye')) return <OphthalmologySurgeryIcon className={className} />;
  if (c.includes('plastic') || c.includes('reconstruct')) return <PlasticSurgeryIcon className={className} />;
  if (c.includes('transplant')) return <TransplantSurgeryIcon className={className} />;
  if (c.includes('ivf') || c.includes('fertil')) return <IvfFertilitySurgeryIcon className={className} />;
  if (c.includes('aesthetic') || c.includes('cosmetic')) return <AestheticCosmeticSurgeryIcon className={className} />;
  if (c.includes('hair')) return <HairAestheticSurgeryIcon className={className} />;
  
  return <GeneralLaparoscopicSurgeryIcon className={className} />;
}

// Main Speciality Component
export default function SurgerySpecialityIcon({ id, name, className = "w-6 h-6" }) {
  if (id && SURGERY_ICON_MAP[id]) {
    const Component = SURGERY_ICON_MAP[id];
    return <Component className={className} />;
  }
  return <SurgeryCategoryIcon category={name || ''} className={className} />;
}
