import React from 'react';

// ==================== 7 PARTNER CATEGORY ICONS ====================

export function ProviderLabIcon({ className = "w-5 h-5", isSelected = false }) {
  return (
    <svg viewBox="0 0 36 36" fill="none" className={className}>
      <path d="M14 6h8M18 6v8l8 14a2 2 0 01-1.7 3H11.7a2 2 0 01-1.7-3l8-14V6" stroke={isSelected ? "#a7f3d0" : "#7e22ce"} strokeWidth="2" strokeLinecap="round" strokeLinejoin="round" />
      <path d="M12 25h12l-2-4H14l-2 4z" fill={isSelected ? "#34d399" : "#a855f7"} opacity="0.8" />
      <circle cx="16" cy="22" r="1.5" fill="#fde047" />
      <circle cx="20" cy="24" r="1.5" fill="#ffffff" />
    </svg>
  );
}

export function ProviderImagingIcon({ className = "w-5 h-5", isSelected = false }) {
  return (
    <svg viewBox="0 0 36 36" fill="none" className={className}>
      <ellipse cx="18" cy="18" rx="14" ry="7" stroke={isSelected ? "#67e8f9" : "#0284c7"} strokeWidth="2" />
      <ellipse cx="18" cy="18" rx="7" ry="3.5" fill={isSelected ? "#38bdf8" : "#0284c7"} />
      <circle cx="18" cy="18" r="10" stroke={isSelected ? "#ffffff" : "#38bdf8"} strokeWidth="1.5" strokeDasharray="3 3" />
      <path d="M18 8v4M18 24v4M8 18h4M24 18h4" stroke={isSelected ? "#fde047" : "#0284c7"} strokeWidth="2" strokeLinecap="round" />
    </svg>
  );
}

export function ProviderNursingIcon({ className = "w-5 h-5", isSelected = false }) {
  return (
    <svg viewBox="0 0 36 36" fill="none" className={className}>
      <path d="M7 16l11-9 11 9v13a2 2 0 01-2 2H9a2 2 0 01-2-2V16z" fill={isSelected ? "#065f46" : "#dcfce7"} stroke={isSelected ? "#34d399" : "#16a34a"} strokeWidth="2" />
      {/* Medical Cross */}
      <rect x="16" y="15" width="4" height="10" rx="1.5" fill={isSelected ? "#fde047" : "#16a34a"} />
      <rect x="13" y="18" width="10" height="4" rx="1.5" fill={isSelected ? "#fde047" : "#16a34a"} />
    </svg>
  );
}

export function ProviderPharmacyIcon({ className = "w-5 h-5", isSelected = false }) {
  return (
    <svg viewBox="0 0 36 36" fill="none" className={className}>
      {/* Capsule */}
      <rect x="8" y="14" width="20" height="9" rx="4.5" transform="rotate(-30 18 18.5)" stroke={isSelected ? "#fca5a5" : "#e11d48"} strokeWidth="2" fill={isSelected ? "#fda4af" : "#f43f5e"} />
      <path d="M12 18l5-9" stroke="#ffffff" strokeWidth="2" strokeLinecap="round" />
      {/* Plus */}
      <circle cx="26" cy="10" r="4" fill="#fde047" />
      <path d="M26 8v4M24 10h4" stroke="#854d0e" strokeWidth="1.2" strokeLinecap="round" />
    </svg>
  );
}

export function ProviderPreventiveIcon({ className = "w-5 h-5", isSelected = false }) {
  return (
    <svg viewBox="0 0 36 36" fill="none" className={className}>
      <path d="M18 5L7 10v9c0 8 4.7 13 11 15 6.3-2 11-7 11-15v-9L18 5z" fill={isSelected ? "#4c1d95" : "#ede9fe"} stroke={isSelected ? "#c084fc" : "#7c3aed"} strokeWidth="2" />
      {/* Heart with Pulse */}
      <path d="M18 13c-1.5-2.5-4.5-2.5-6 0-1.5 2.5 1 5.5 6 9 5-3.5 7.5-6.5 6-9-1.5-2.5-4.5-2.5-6 0z" fill={isSelected ? "#f43f5e" : "#ec4899"} />
    </svg>
  );
}

export function ProviderGenomicsIcon({ className = "w-5 h-5", isSelected = false }) {
  return (
    <svg viewBox="0 0 36 36" fill="none" className={className}>
      <path d="M10 7c6 4 10 10 16 14M10 21c6-4 10-10 16-14M10 14c6 0 10 0 16 0" stroke={isSelected ? "#f472b6" : "#db2777"} strokeWidth="2.5" strokeLinecap="round" />
      <circle cx="10" cy="7" r="2.5" fill={isSelected ? "#fde047" : "#7c3aed"} />
      <circle cx="26" cy="21" r="2.5" fill={isSelected ? "#fde047" : "#7c3aed"} />
      <circle cx="10" cy="21" r="2.5" fill={isSelected ? "#a7f3d0" : "#0284c7"} />
      <circle cx="26" cy="7" r="2.5" fill={isSelected ? "#a7f3d0" : "#0284c7"} />
    </svg>
  );
}

export function ProviderClinicIcon({ className = "w-5 h-5", isSelected = false }) {
  return (
    <svg viewBox="0 0 36 36" fill="none" className={className}>
      {/* Stethoscope */}
      <path d="M10 8v8a8 8 0 0016 0V8" stroke={isSelected ? "#fde047" : "#eab308"} strokeWidth="2.5" strokeLinecap="round" />
      <path d="M18 24v4a4 4 0 004 4h2" stroke={isSelected ? "#fde047" : "#eab308"} strokeWidth="2.5" strokeLinecap="round" />
      <circle cx="25" cy="32" r="3.5" fill={isSelected ? "#22c55e" : "#15803d"} />
      <circle cx="10" cy="8" r="2" fill="#ffffff" />
      <circle cx="26" cy="8" r="2" fill="#ffffff" />
    </svg>
  );
}

// ==================== 3 VALUE PROPOSITION BENEFITS ICONS ====================

export function ZeroCacIcon({ className = "w-8 h-8" }) {
  return (
    <svg viewBox="0 0 48 48" fill="none" className={className}>
      <circle cx="24" cy="24" r="20" fill="#dcfce7" />
      {/* Uptrending Growth Chart Bar */}
      <path d="M12 34l8-9 7 4 10-13" stroke="#16a34a" strokeWidth="3.5" strokeLinecap="round" strokeLinejoin="round" />
      <path d="M29 16h8v8" stroke="#16a34a" strokeWidth="3.5" strokeLinecap="round" strokeLinejoin="round" />
      {/* Rupee Coin on Top */}
      <circle cx="15" cy="18" r="6" fill="#eab308" />
      <circle cx="15" cy="18" r="4.5" fill="#fde047" />
      <path d="M13 16h4M13 18h4M13 18c1 0 2 .5 2 1.5S14 21 13 21h-.5l3 2.5" stroke="#854d0e" strokeWidth="1.2" strokeLinecap="round" />
    </svg>
  );
}

export function CareManagerPartnerIcon({ className = "w-8 h-8" }) {
  return (
    <svg viewBox="0 0 48 48" fill="none" className={className}>
      <circle cx="24" cy="24" r="20" fill="#ede9fe" />
      {/* Care Manager Silhouette */}
      <circle cx="24" cy="17" r="7" fill="#8b5cf6" />
      <path d="M12 37c0-6.6 5.4-12 12-12s12 5.4 12 12v1H12v-1z" fill="#6d28d9" />
      {/* Headset */}
      <path d="M16 17c0-4.4 3.6-8 8-8s8 3.6 8 8v3" stroke="#fde047" strokeWidth="2" strokeLinecap="round" />
      <rect x="14" y="16" width="3" height="5" rx="1.5" fill="#fde047" />
      {/* WhatsApp Active Dot */}
      <circle cx="34" cy="34" r="5.5" fill="#22c55e" stroke="#ffffff" strokeWidth="1.5" />
    </svg>
  );
}

export function PartnerTrustBadgeIcon({ className = "w-8 h-8" }) {
  return (
    <svg viewBox="0 0 48 48" fill="none" className={className}>
      <circle cx="24" cy="24" r="20" fill="#e0f2fe" />
      {/* Gold Rimmed Shield */}
      <path d="M24 9l12 5v10c0 8-5.5 14-12 17-6.5-3-12-9-12-17V14l12-5z" fill="#0284c7" stroke="#eab308" strokeWidth="2.5" />
      {/* Checkmark */}
      <path d="M18 24l4 4 8-8" stroke="#ffffff" strokeWidth="3" strokeLinecap="round" strokeLinejoin="round" />
    </svg>
  );
}

// ==================== METRICS ICONS ====================

export function DispatchClockIcon({ className = "w-5 h-5" }) {
  return (
    <svg viewBox="0 0 24 24" fill="none" className={className}>
      <circle cx="12" cy="12" r="9" fill="#f3e8ff" stroke="#7e22ce" strokeWidth="2" />
      <path d="M12 7v5l3 2" stroke="#7e22ce" strokeWidth="2" strokeLinecap="round" />
      <circle cx="12" cy="12" r="1.5" fill="#a855f7" />
    </svg>
  );
}

export function ColdChainTempIcon({ className = "w-5 h-5" }) {
  return (
    <svg viewBox="0 0 24 24" fill="none" className={className}>
      <circle cx="12" cy="12" r="9" fill="#dcfce7" stroke="#16a34a" strokeWidth="2" />
      <path d="M12 6v8M10 14a2.5 2.5 0 104 0" stroke="#16a34a" strokeWidth="2" strokeLinecap="round" />
      <circle cx="12" cy="15" r="1.5" fill="#22c55e" />
    </svg>
  );
}

export function ZeroFeeIcon({ className = "w-5 h-5" }) {
  return (
    <svg viewBox="0 0 24 24" fill="none" className={className}>
      <circle cx="12" cy="12" r="9" fill="#fef3c7" stroke="#ca8a04" strokeWidth="2" />
      <path d="M8 8l8 8M10 8a2 2 0 100 4 2 2 0 000-4zM14 12a2 2 0 100 4 2 2 0 000-4z" stroke="#ca8a04" strokeWidth="1.5" />
    </svg>
  );
}

export function Desk247Icon({ className = "w-5 h-5" }) {
  return (
    <svg viewBox="0 0 24 24" fill="none" className={className}>
      <circle cx="12" cy="12" r="9" fill="#e0f2fe" stroke="#0284c7" strokeWidth="2" />
      <path d="M7 12a5 5 0 019-3M17 12a5 5 0 01-9 3" stroke="#0284c7" strokeWidth="2" strokeLinecap="round" />
      <circle cx="12" cy="12" r="2" fill="#38bdf8" />
    </svg>
  );
}
