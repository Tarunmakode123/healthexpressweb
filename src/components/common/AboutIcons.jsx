import React from 'react';

// ==================== CORE PHILOSOPHY ICONS ====================

export function PeopleFirstIcon({ className = "w-6 h-6" }) {
  return (
    <svg viewBox="0 0 48 48" fill="none" className={className}>
      <circle cx="24" cy="14" r="7" fill="#c084fc" />
      <path d="M12 36c0-6.627 5.373-12 12-12s12 5.373 12 12v2H12v-2z" fill="#a855f7" />
      {/* Pink Empathy Heart Aura */}
      <path d="M24 23c-1.5-2.5-4.5-2.5-6 0-1.5 2.5 1 5.5 6 9 5-3.5 7.5-6.5 6-9-1.5-2.5-4.5-2.5-6 0z" fill="#f43f5e" />
      <circle cx="34" cy="19" r="4" fill="#f472b6" />
      <path d="M28 36c0-4 3-7.5 7-7.5s7 3.5 7 7.5v2h-14v-2z" fill="#fbcfe8" />
    </svg>
  );
}

export function TrustShieldIcon({ className = "w-6 h-6" }) {
  return (
    <svg viewBox="0 0 48 48" fill="none" className={className}>
      <path d="M24 4l13 5v12c0 10-6.5 17-13 21-6.5-4-13-11-13-21V9l13-5z" fill="#38bdf8" />
      <path d="M24 7l10 4v9c0 8-5 13.5-10 16.8-5-3.3-10-8.8-10-16.8v-9l10-4z" fill="#0284c7" />
      {/* Microscope Stem */}
      <rect x="22" y="14" width="4" height="12" rx="2" fill="#ffffff" />
      <circle cx="24" cy="14" r="3.5" fill="#fde047" />
      <path d="M19 24l3.5 3.5 7-7" stroke="#ffffff" stroke-width="2.5" stroke-linecap="round" stroke-linejoin="round" />
    </svg>
  );
}

export function ZeroFrictionIcon({ className = "w-6 h-6" }) {
  return (
    <svg viewBox="0 0 48 48" fill="none" className={className}>
      <rect x="10" y="8" width="28" height="34" rx="6" fill="#fef08a" stroke="#ca8a04" stroke-width="2" />
      <rect x="16" y="16" width="16" height="3" rx="1.5" fill="#eab308" />
      <rect x="16" y="22" width="11" height="3" rx="1.5" fill="#eab308" />
      {/* Lightning Swoosh */}
      <path d="M28 10L18 26h8l-4 14 14-18h-8l4-12z" fill="#f59e0b" stroke="#ffffff" stroke-width="1.5" />
    </svg>
  );
}

export function TransparentPricingIcon({ className = "w-6 h-6" }) {
  return (
    <svg viewBox="0 0 48 48" fill="none" className={className}>
      <circle cx="24" cy="24" r="18" fill="#eab308" />
      <circle cx="24" cy="24" r="15" fill="#fde047" />
      <circle cx="24" cy="24" r="13" stroke="#ca8a04" stroke-width="1.5" stroke-dasharray="2 2" />
      {/* ₹ Symbol */}
      <path d="M18 16h12M18 20h12M18 20c3.5 0 6 1 6 4.5S21.5 29 18 29h-1l9 8" stroke="#854d0e" stroke-width="3" stroke-linecap="round" stroke-linejoin="round" />
      <circle cx="34" cy="34" r="7" fill="#16a34a" stroke="#ffffff" stroke-width="1.5" />
      <path d="M31 34l2 2 4-4" stroke="#ffffff" stroke-width="1.5" stroke-linecap="round" stroke-linejoin="round" />
    </svg>
  );
}

export function FamilyCareIcon({ className = "w-6 h-6" }) {
  return (
    <svg viewBox="0 0 48 48" fill="none" className={className}>
      <circle cx="24" cy="24" r="18" fill="#f43f5e" opacity="0.15" />
      <path d="M24 8C14 8 6 16 6 26c0 11 18 16 18 16s18-5 18-16c0-10-8-18-18-18z" fill="#f43f5e" />
      <circle cx="19" cy="18" r="3.5" fill="#ffffff" />
      <circle cx="29" cy="18" r="3.5" fill="#ffffff" />
      <circle cx="24" cy="23" r="2.5" fill="#fde047" />
      <path d="M14 30c0-3 2.5-5 5-5s5 2 5 5v1h-10v-1z" fill="#ffffff" />
      <path d="M24 30c0-3 2.5-5 5-5s5 2 5 5v1h-10v-1z" fill="#ffffff" />
    </svg>
  );
}

// ==================== EXPERIENCE COMPARISON ICONS ====================

// Traditional
export function WaitingRoomIcon({ className = "w-6 h-6" }) {
  return (
    <svg viewBox="0 0 36 36" fill="none" className={className}>
      <circle cx="18" cy="18" r="14" fill="#fee2e2" />
      <circle cx="18" cy="18" r="11" stroke="#dc2626" stroke-width="2" />
      <path d="M18 11v7l4 3" stroke="#dc2626" stroke-width="2" stroke-linecap="round" />
      <circle cx="27" cy="11" r="3" fill="#ef4444" />
    </svg>
  );
}

export function FragmentedRecordsIcon({ className = "w-6 h-6" }) {
  return (
    <svg viewBox="0 0 36 36" fill="none" className={className}>
      <rect x="7" y="6" width="16" height="22" rx="3" fill="#fef3c7" stroke="#d97706" stroke-width="1.5" />
      <rect x="13" y="10" width="16" height="22" rx="3" fill="#fed7aa" stroke="#ea580c" stroke-width="1.5" />
      <path d="M18 17l6 6M24 17l-6 6" stroke="#b91c1c" stroke-width="2" stroke-linecap="round" />
    </svg>
  );
}

export function UncertainFollowupIcon({ className = "w-6 h-6" }) {
  return (
    <svg viewBox="0 0 36 36" fill="none" className={className}>
      <circle cx="18" cy="18" r="13" fill="#ffedd5" stroke="#f97316" stroke-width="1.5" />
      <path d="M14 13a2 2 0 012-2h1a2 2 0 012 2v2a2 2 0 01-2 2h-1a10 10 0 005 5v-1a2 2 0 012-2h2a2 2 0 012 2v1a2 2 0 01-2 2c-7 0-11-4-11-11v-1z" fill="#ea580c" />
      <path d="M23 11l4 4M27 11l-4 4" stroke="#dc2626" stroke-width="2" stroke-linecap="round" />
    </svg>
  );
}

// Health Express Connected Care
export function ColdChainPickupIcon({ className = "w-6 h-6" }) {
  return (
    <svg viewBox="0 0 36 36" fill="none" className={className}>
      <rect x="6" y="10" width="24" height="20" rx="5" fill="#22c55e" />
      <rect x="13" y="6" width="10" height="5" rx="2" fill="#15803d" />
      <circle cx="18" cy="20" r="6" fill="#ffffff" />
      <path d="M18 16v4l2.5 1.5" stroke="#15803d" stroke-width="1.5" stroke-linecap="round" />
      <circle cx="28" cy="8" r="3" fill="#fde047" />
    </svg>
  );
}

export function AutoSyncedEHRIcon({ className = "w-6 h-6" }) {
  return (
    <svg viewBox="0 0 36 36" fill="none" className={className}>
      <rect x="9" y="8" width="18" height="24" rx="4" fill="#a855f7" stroke="#ffffff" stroke-width="1.5" />
      <circle cx="18" cy="18" r="5" fill="#fde047" />
      <path d="M16 18l1.5 1.5 3-3" stroke="#581c87" stroke-width="1.5" stroke-linecap="round" />
      <circle cx="18" cy="27" r="1.5" fill="#ffffff" />
    </svg>
  );
}

export function CareManagerDeskIcon({ className = "w-6 h-6" }) {
  return (
    <svg viewBox="0 0 36 36" fill="none" className={className}>
      <circle cx="18" cy="14" r="6" fill="#2dd4bf" />
      <path d="M8 30c0-5.5 4.5-10 10-10s10 4.5 10 10v2H8v-2z" fill="#0d9488" />
      <path d="M11 15c0-4 3-7 7-7s7 3 7 7v2" stroke="#ffffff" stroke-width="2" stroke-linecap="round" />
      <rect x="9" y="14" width="3" height="4" rx="1.5" fill="#fde047" />
      <circle cx="28" cy="28" r="4.5" fill="#22c55e" stroke="#ffffff" stroke-width="1.5" />
    </svg>
  );
}

// ==================== COMMUNITY CAMPS ICONS ====================

export function BpScreeningIcon({ className = "w-6 h-6" }) {
  return (
    <svg viewBox="0 0 40 40" fill="none" className={className}>
      <rect x="6" y="8" width="28" height="24" rx="6" fill="#8b5cf6" />
      <rect x="10" y="12" width="20" height="11" rx="3" fill="#1e1b4b" />
      <path d="M12 18h3l2-4 3 8 2-6 2 2h3" stroke="#4ade80" stroke-width="1.8" stroke-linecap="round" stroke-linejoin="round" />
      <circle cx="20" cy="27" r="2" fill="#fde047" />
    </svg>
  );
}

export function DoctorConsultIcon({ className = "w-6 h-6" }) {
  return (
    <svg viewBox="0 0 40 40" fill="none" className={className}>
      <rect x="9" y="7" width="22" height="26" rx="4" fill="#22c55e" />
      <rect x="14" y="5" width="12" height="4" rx="2" fill="#15803d" />
      <rect x="18" y="14" width="4" height="12" rx="1.5" fill="#ffffff" />
      <rect x="14" y="18" width="12" height="4" rx="1.5" fill="#ffffff" />
    </svg>
  );
}

export function OnsiteTestTubeIcon({ className = "w-6 h-6" }) {
  return (
    <svg viewBox="0 0 40 40" fill="none" className={className}>
      <rect x="8" y="10" width="10" height="22" rx="5" fill="#38bdf8" />
      <rect x="7" y="8" width="12" height="4" rx="2" fill="#0284c7" />
      <path d="M8 20c2 0 4 1 6 1s4-1 4-1v6a5 5 0 01-10 0v-6z" fill="#ef4444" />
      <rect x="22" y="6" width="13" height="26" rx="3" fill="#0284c7" stroke="#ffffff" stroke-width="1.5" />
      <rect x="25" y="11" width="7" height="2" rx="1" fill="#fde047" />
      <rect x="25" y="15" width="7" height="2" rx="1" fill="#ffffff" />
      <circle cx="28.5" cy="28" r="1.5" fill="#ffffff" />
    </svg>
  );
}
