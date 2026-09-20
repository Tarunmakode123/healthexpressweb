# Health Express — Official Public Website

> **Your personal health manager, for you and your family.**  
> Official repository for the Health Express public website (Soft Launch Phase 1).

---

## 🏥 Overview

**Health Express** helps individuals and families find, coordinate, and manage healthcare — starting with diagnostics and home nursing in Bengaluru, and growing toward a connected healthcare experience.

This repository contains the public soft-launch website, engineered with Apple-level product restraint, sleek healthcare aesthetics, contextual WhatsApp conversion flows, persistent sticky/floating CTAs, and mobile-first responsiveness.

---

## ✨ Key Features & Conversions

- **Apple-Level Premium Aesthetic**: Generous whitespace, refined cards, subtle elevations, dark navy typography, and human-centered design.
- **Persistent Sticky & Floating CTA System**:
  - **Desktop**: Persistent floating assistance pill (`Need healthcare assistance? [ WhatsApp Us ] [ Call Now ]`).
  - **Mobile**: Fixed bottom CTA bar (`[ WhatsApp Us ] | [ Call Now ] | [ Upload ]`) for one-tap conversion.
- **Contextual WhatsApp Integration**: Every service and test CTA opens WhatsApp with a specific prefilled message (e.g. CBC test, Radiology, Telemedicine, Home Nursing).
- **Centralized Contact Configuration**: Phone & WhatsApp actions dynamically link to **+91 81234 14120**.
- **Bengaluru Pilot Focus**: Clear location positioning highlighting current service availability in Bengaluru with a *"Notify Me"* pipeline for future cities.
- **Provider Onboarding Form**: Partnership inquiry form routing to `hello@healthexpress.care`.
- **Founder's Story**: About Us page featuring Founder Neha Bhansali's letter and core principles (*People First, Trust, Simplicity, Care*).

---

## 🗺️ Website Structure

- **Home (`/`)**: 15-section story narrative (*Who Are You? → The Problem → What We Do → Services → For Your Family → Trust → Health Records → Bengaluru Launch → Library → FAQ → Final CTA*).
- **Services (`/services`)**: Comprehensive directory of launch services (Diagnostics, Imaging, Home Healthcare, Telemedicine, Preventive Packages, Pharmacy, Genetic Testing, Surgical Care).
- **Health Library (`/health-library`)**: Searchable index of patient guides and test preparation articles.
- **About Us (`/about`)**: Founder Neha Bhansali's letter, vision, 4 core principles, and approach.
- **For Providers (`/providers`)**: Partnership onboarding page with contact form submitting to `hello@healthexpress.care`.
- **Contact (`/contact`)**: Direct support lines and medical requirement contact form.
- **Legal (`/legal/:type`)**: Customer transparency policies for Privacy, Terms, Refund, Cancellation, and Shipping.

---

## 🌐 Official Contact & Social Media

- **Phone & WhatsApp**: [+91 81234 14120](https://wa.me/918123414120)
- **Provider Contact Email**: `hello@healthexpress.care`
- **Instagram**: [healthexpress_india](https://www.instagram.com/healthexpress_india)
- **Facebook**: [HealthExpressIndia](https://www.facebook.com/HealthExpressIndia/)
- **LinkedIn**: [healthexpressindia](https://www.linkedin.com/company/healthexpressindia)
- **X (Twitter)**: [HealthExpressIN](https://x.com/HealthExpressIN)

---

## 🛠️ Technology Stack

- **Frontend**: React (Vite)
- **Styling**: Tailwind CSS
- **Iconography**: Lucide Icons
- **Routing**: React Router

---

## 🚀 Getting Started

### Local Setup Instructions

1. **Clone the repository**:
   ```bash
   git clone https://github.com/Tarunmakode123/healthexpressweb.git
   cd healthexpressweb
   ```

2. **Install dependencies**:
   ```bash
   npm install
   ```

3. **Configure Environment Variables**:
   Create a `.env` file in the root directory:
   ```env
   VITE_HEALTH_EXPRESS_WHATSAPP_NUMBER=918123414120
   ```

4. **Run the development server**:
   ```bash
   npm run dev
   ```

5. **Build for production**:
   ```bash
   npm run build
   ```

---

## 🔒 Privacy & Compliance Notice

This public website serves as a discovery and customer engagement interface. No sensitive patient health records, uploaded prescriptions, or private medical data are exposed or stored within this repository.

---

© 2025–2026 Health Express. All rights reserved.  
*Your personal health manager, for you and your family.*
