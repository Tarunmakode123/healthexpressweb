import React from 'react';

/**
 * Bespoke clinical vector icons for Health Express Genomics & Precision Genetic Medicine
 * High-definition SVG vectors with medical color themes.
 */

// ==================== 1. CORE GENOMICS DNA & SERVICE ICONS ====================

// Double Helix DNA Icon (Category & Brand)
export function GenomicsDnaHelixIcon({ className = "w-6 h-6" }) {
  return (
    <svg viewBox="0 0 36 36" fill="none" className={className}>
      <rect width="36" height="36" rx="10" fill="#FDF2F8" />
      {/* Dynamic Curved Strands */}
      <path d="M10 8c4 3 6 7 8 10s4 7 8 10" stroke="#DB2777" strokeWidth="2.5" strokeLinecap="round" />
      <path d="M26 8c-4 3-6 7-8 10s-4 7-8 10" stroke="#9333EA" strokeWidth="2.5" strokeLinecap="round" />
      {/* Base Pair Rungs */}
      <line x1="12" y1="11" x2="24" y2="11" stroke="#38BDF8" strokeWidth="2" strokeLinecap="round" />
      <line x1="14" y1="15" x2="22" y2="15" stroke="#F59E0B" strokeWidth="2" strokeLinecap="round" />
      <line x1="14" y1="21" x2="22" y2="21" stroke="#10B981" strokeWidth="2" strokeLinecap="round" />
      <line x1="12" y1="25" x2="24" y2="25" stroke="#EF4444" strokeWidth="2" strokeLinecap="round" />
      {/* Nucleotide Nodes */}
      <circle cx="10" cy="8" r="2" fill="#DB2777" />
      <circle cx="26" cy="8" r="2" fill="#9333EA" />
      <circle cx="26" cy="28" r="2" fill="#DB2777" />
      <circle cx="10" cy="28" r="2" fill="#9333EA" />
    </svg>
  );
}

// Whole Genome Sequencing (WGS)
export function WholeGenomeSequencingIcon({ className = "w-6 h-6" }) {
  return (
    <svg viewBox="0 0 36 36" fill="none" className={className}>
      <rect width="36" height="36" rx="10" fill="#EDE9FE" />
      {/* Concentric Genetic Map / Circos plot */}
      <circle cx="18" cy="18" r="11" stroke="#C084FC" strokeWidth="1.5" strokeDasharray="3 2" />
      <circle cx="18" cy="18" r="8" stroke="#7E22CE" strokeWidth="2" />
      <circle cx="18" cy="18" r="4" fill="#A855F7" />
      {/* Chromosome Band Radii */}
      <path d="M18 7v4M18 25v4M7 18h4M25 18h4" stroke="#7E22CE" strokeWidth="2" strokeLinecap="round" />
      <circle cx="24" cy="12" r="1.5" fill="#F59E0B" />
      <circle cx="12" cy="24" r="1.5" fill="#38BDF8" />
    </svg>
  );
}

// Whole Exome Sequencing (WES)
export function WholeExomeSequencingIcon({ className = "w-6 h-6" }) {
  return (
    <svg viewBox="0 0 36 36" fill="none" className={className}>
      <rect width="36" height="36" rx="10" fill="#E0F2FE" />
      {/* Exon Target Crosshair Grid */}
      <circle cx="18" cy="18" r="10" stroke="#0284C7" strokeWidth="2" />
      <rect x="14" y="14" width="8" height="8" rx="2" fill="#0284C7" />
      <path d="M18 8v4M18 24v4M8 18h4M24 18h4" stroke="#38BDF8" strokeWidth="2" strokeLinecap="round" />
      <circle cx="18" cy="18" r="2" fill="#FFFFFF" />
    </svg>
  );
}

// Ultimate Bio-Hacking & Longevity
export function BioHackingLongevityIcon({ className = "w-6 h-6" }) {
  return (
    <svg viewBox="0 0 36 36" fill="none" className={className}>
      <rect width="36" height="36" rx="10" fill="#FEF3C7" />
      {/* Cellular Telomere / Longevity Spark */}
      <circle cx="18" cy="18" r="11" stroke="#F59E0B" strokeWidth="2" strokeDasharray="4 2" />
      {/* Energy lightning bolt inside atom */}
      <path d="M19 7L12 19h6l-2 10 9-13h-6l3-9z" fill="#F59E0B" stroke="#D97706" strokeWidth="1" strokeLinejoin="round" />
      <circle cx="27" cy="11" r="2" fill="#10B981" />
    </svg>
  );
}

// Mapmyspark (Mitochondrial Wellness)
export function MitochondrialWellnessIcon({ className = "w-6 h-6" }) {
  return (
    <svg viewBox="0 0 36 36" fill="none" className={className}>
      <rect width="36" height="36" rx="10" fill="#FFF1F2" />
      {/* Mitochondrion organelle bean */}
      <path d="M10 18c0-5 3.5-9 8-9s8 4 8 9-3.5 9-8 9-8-4-8-9z" fill="#F43F5E" />
      {/* Inner Cristae folds */}
      <path d="M13 14c2 0 4 2 4 4s2 4 4 4" stroke="#FFFFFF" strokeWidth="1.8" strokeLinecap="round" />
      <circle cx="18" cy="14" r="1.5" fill="#FDE047" />
      <circle cx="21" cy="18" r="1.5" fill="#FDE047" />
    </svg>
  );
}

// Genetics Nutritional Profile
export function NutritionalGenomicsIcon({ className = "w-6 h-6" }) {
  return (
    <svg viewBox="0 0 36 36" fill="none" className={className}>
      <rect width="36" height="36" rx="10" fill="#ECFDF5" />
      {/* Apple / Nutrition Contour with DNA Strand */}
      <path d="M18 11c-2-2-6-1-7 2s0 7 4 10c2 1.5 3 4 3 4s1-2.5 3-4c4-3 5-7 4-10s-5-4-7-2z" fill="#10B981" />
      <path d="M18 11V7c2 0 3-1 3-1" stroke="#047857" strokeWidth="1.5" strokeLinecap="round" />
      {/* DNA Helix Rungs inside apple */}
      <line x1="15" y1="16" x2="21" y2="16" stroke="#FFFFFF" strokeWidth="1.5" strokeLinecap="round" />
      <line x1="16" y1="19" x2="20" y2="19" stroke="#FFFFFF" strokeWidth="1.5" strokeLinecap="round" />
    </svg>
  );
}

// Genetics Weight Management & Metabolism Profile
export function WeightMetabolismGenomicsIcon({ className = "w-6 h-6" }) {
  return (
    <svg viewBox="0 0 36 36" fill="none" className={className}>
      <rect width="36" height="36" rx="10" fill="#EFF6FF" />
      {/* Precision Metabolism Gauge / Dial */}
      <path d="M11 23a9 9 0 0114 0" stroke="#0284C7" strokeWidth="3" strokeLinecap="round" />
      <path d="M13 17a9 9 0 0110 0" stroke="#38BDF8" strokeWidth="1.5" strokeLinecap="round" strokeDasharray="2 2" />
      <circle cx="18" cy="23" r="2.5" fill="#0F172A" />
      <path d="M18 23l-3-6" stroke="#EF4444" strokeWidth="1.8" strokeLinecap="round" />
      {/* DNA Helix Base */}
      <path d="M14 27h8" stroke="#0284C7" strokeWidth="2" strokeLinecap="round" />
    </svg>
  );
}

// Genetics Detoxification Profile
export function DetoxGenomicsIcon({ className = "w-6 h-6" }) {
  return (
    <svg viewBox="0 0 36 36" fill="none" className={className}>
      <rect width="36" height="36" rx="10" fill="#FAF5FF" />
      {/* Hepatic Detox Shield */}
      <path d="M18 7L9 11v8c0 6 3.8 11 9 12 5.2-1 9-6 9-12v-8l-9-4z" fill="#9333EA" />
      {/* Sparkling Pure Drop inside */}
      <path d="M18 12c-2 3-3.5 5.5-3.5 7.5 0 2 1.5 3.5 3.5 3.5s3.5-1.5 3.5-3.5c0-2-1.5-4.5-3.5-7.5z" fill="#38BDF8" />
      <circle cx="19" cy="18" r="1" fill="#FFFFFF" />
    </svg>
  );
}

// Genetics Injury & Recovery Risk Profile
export function InjuryRecoveryGenomicsIcon({ className = "w-6 h-6" }) {
  return (
    <svg viewBox="0 0 36 36" fill="none" className={className}>
      <rect width="36" height="36" rx="10" fill="#FFF7ED" />
      {/* Musculoskeletal Elasticity & Recovery Pulse */}
      <path d="M10 24c4-8 12-8 16-16" stroke="#EA580C" strokeWidth="2.5" strokeLinecap="round" />
      <circle cx="10" cy="24" r="3" fill="#F59E0B" />
      <circle cx="26" cy="8" r="3" fill="#10B981" />
      {/* Joint recovery cross */}
      <path d="M18 16v4M16 18h4" stroke="#EA580C" strokeWidth="1.8" strokeLinecap="round" />
    </svg>
  );
}

// Genetics Micronutrients Profile
export function MicronutrientsGenomicsIcon({ className = "w-6 h-6" }) {
  return (
    <svg viewBox="0 0 36 36" fill="none" className={className}>
      <rect width="36" height="36" rx="10" fill="#ECFDF5" />
      {/* Vitamin & Mineral Molecular cluster */}
      <circle cx="18" cy="18" r="5" fill="#10B981" />
      <circle cx="12" cy="12" r="3" fill="#34D399" />
      <circle cx="24" cy="12" r="3" fill="#38BDF8" />
      <circle cx="13" cy="24" r="2.5" fill="#F59E0B" />
      <circle cx="23" cy="24" r="2.5" fill="#A855F7" />
      <path d="M16 16l-3-3M20 16l3-3M16 20l-2 2M20 20l2 2" stroke="#CBD5E1" strokeWidth="1.2" />
    </svg>
  );
}

// ==================== 2. 4 GENOMICS VALUE PILLAR ICONS ====================

// 1. Painless Buccal Swab / Home Blood Collection
export function DnaSampleCollectionIcon({ className = "w-8 h-8" }) {
  return (
    <svg viewBox="0 0 36 36" fill="none" className={className}>
      <circle cx="18" cy="18" r="16" fill="#FDF2F8" />
      {/* Sample Swab Applicator */}
      <line x1="11" y1="25" x2="23" y2="13" stroke="#DB2777" strokeWidth="2.5" strokeLinecap="round" />
      <ellipse cx="24" cy="12" rx="3.5" ry="2" transform="rotate(-45 24 12)" fill="#F472B6" />
      <circle cx="12" cy="24" r="2" fill="#9333EA" />
    </svg>
  );
}

// 2. Next-Gen NGS Sequencing in NABL Lab
export function NgsSequencingIcon({ className = "w-8 h-8" }) {
  return (
    <svg viewBox="0 0 36 36" fill="none" className={className}>
      <circle cx="18" cy="18" r="16" fill="#EDE9FE" />
      {/* High-Tech Sequencing Chip */}
      <rect x="11" y="11" width="14" height="14" rx="3" fill="#7E22CE" />
      <rect x="14" y="14" width="8" height="8" rx="1.5" fill="#A855F7" />
      <circle cx="18" cy="18" r="2" fill="#FDE047" />
      <line x1="18" y1="8" x2="18" y2="11" stroke="#7E22CE" strokeWidth="1.5" />
      <line x1="18" y1="25" x2="18" y2="28" stroke="#7E22CE" strokeWidth="1.5" />
      <line x1="8" y1="18" x2="11" y2="18" stroke="#7E22CE" strokeWidth="1.5" />
      <line x1="25" y1="18" x2="28" y2="18" stroke="#7E22CE" strokeWidth="1.5" />
    </svg>
  );
}

// 3. Genetic Counselor Session
export function GeneticCounselorSessionIcon({ className = "w-8 h-8" }) {
  return (
    <svg viewBox="0 0 36 36" fill="none" className={className}>
      <circle cx="18" cy="18" r="16" fill="#E0F2FE" />
      {/* Counselor Headset & Doctor Badge */}
      <circle cx="18" cy="15" r="4.5" fill="#0284C7" />
      <path d="M11 26c0-3.9 3.1-7 7-7s7 3.1 7 7" fill="#0284C7" opacity="0.8" />
      {/* Headset Arc */}
      <path d="M12 15a6 6 0 0112 0v3" stroke="#38BDF8" strokeWidth="1.5" strokeLinecap="round" />
      <circle cx="24" cy="18" r="1.5" fill="#0284C7" />
    </svg>
  );
}

// 4. Encrypted Lifetime Genetic Vault
export function HealthVaultDnaIcon({ className = "w-8 h-8" }) {
  return (
    <svg viewBox="0 0 36 36" fill="none" className={className}>
      <circle cx="18" cy="18" r="16" fill="#ECFDF5" />
      {/* Shield with Padlock & DNA */}
      <path d="M18 7l8 3.5v7c0 5-3.5 9-8 10.5-4.5-1.5-8-5.5-8-10.5v-7L18 7z" fill="#059669" />
      <rect x="15" y="15" width="6" height="5" rx="1" fill="#FFFFFF" />
      <path d="M16 15v-1.5a2 2 0 114 0V15" stroke="#FFFFFF" strokeWidth="1.2" />
    </svg>
  );
}

// ==================== 3. DYNAMIC GENOMICS CARD ICON RESOLVER ====================

export function GenomicsServiceIcon({ service, className = "w-6 h-6" }) {
  const name = ((service && (service.name || service.service_name || service.slug || service.id)) || '').toLowerCase();
  
  if (name.includes('exome') || name.includes('wes')) return <WholeExomeSequencingIcon className={className} />;
  if (name.includes('genome') || name.includes('wgs')) return <WholeGenomeSequencingIcon className={className} />;
  if (name.includes('bio-hacking') || name.includes('bio hacking') || name.includes('longevity')) return <BioHackingLongevityIcon className={className} />;
  if (name.includes('spark') || name.includes('mitochondri')) return <MitochondrialWellnessIcon className={className} />;
  if (name.includes('nutrition') || name.includes('eating')) return <NutritionalGenomicsIcon className={className} />;
  if (name.includes('weight') || name.includes('metabol')) return <WeightMetabolismGenomicsIcon className={className} />;
  if (name.includes('detox')) return <DetoxGenomicsIcon className={className} />;
  if (name.includes('injury') || name.includes('recovery')) return <InjuryRecoveryGenomicsIcon className={className} />;
  if (name.includes('micronutrient') || name.includes('mineral')) return <MicronutrientsGenomicsIcon className={className} />;
  
  return <GenomicsDnaHelixIcon className={className} />;
}
