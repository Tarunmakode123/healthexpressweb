# Health Express — Official Public Website

> **Your personal health manager, for you and your family.**  
> Official repository for the Health Express public website.

---

## 🏥 Overview

**Health Express** helps you find, coordinate, and manage healthcare for yourself and your family — starting with diagnostics and home nursing, and growing toward a more connected healthcare experience.

This repository contains the public website, built with a focus on clear positioning, family health management, high-end commercial healthcare photography, dynamic interactive widgets, patient authentication, and a zero-friction WhatsApp prescription coordination workflow.

---

## ✨ Key Features & Premium Visual Enhancements

- **High-End Commercial Photography Assets**:
  - `hero_home_care.jpg`: Warm, professional editorial photography depicting home nursing care coordination in an Indian home.
  - `family_care.jpg`: Multi-generational Indian family portrait representing family health management with trust and care.
- **Primary Conversion CTA**: *"Send Prescription on WhatsApp"* visually prioritized across Hero, Services, and sticky mobile views.
- **Sticky Mobile WhatsApp CTA Bar (`StickyMobileCTA.jsx`)**: Floating non-intrusive mobile conversion bar for 1-tap WhatsApp prescription uploads on smartphones.
- **Official Brand Identity & Favicon**: Includes the official Health Express logo (*Everything Health - Fast Tracked*) and brand favicon (`public/favicon.png`).
- **Core Positioning**: *"Your personal health manager, for you and your family."*
- **Launch Scope**: Focused on **Diagnostics & Preventive Health Packages** and **Home Nursing** in **Bengaluru**.
- **Patient Authentication Page (`/auth`, `/login`, `/signup`)**:
  - Dual modes for **Sign In** and **Sign Up**.
  - **Indian Mobile OTP** login with 10-digit number validation, 4-digit code verification, countdown timer, and resend OTP support.
  - **Email & Password** alternative authentication with show/hide password toggle.
  - **AuthContext & Local Storage State**: Persisted patient session with user profile menu in Navbar.
- **Interactive Bengaluru Locality Checker**: Live search and quick selector tags for Koramangala, Indiranagar, HSR Layout, Whitefield, Bellandur, Jayanagar, Electronic City, Sarjapur Road, Hebbal, and JP Nagar with instant coverage status & direct locality booking.
- **Interactive Test Package Estimator**: Multi-test selector (CBC, Thyroid Profile, Vitamin D, HbA1c, Lipid Profile, Full Body Checkup) with real-time package estimation and 1-click WhatsApp order generation.
- **Dynamic Category Filter Tabs**: Filter services dynamically across Diagnostics, Care at Home, and Specialized Care with custom feature badges.
- **Glassmorphism & Micro-Animations**: Floating glassmorphism badges (*"Prescription Verified ✓"*, *"Care Manager Assigned 👩‍⚕️"*), smooth float animations, hover glow cards, and 60fps micro-interactions.
- **Family Health Hub**: Dedicated section for coordinating healthcare across multiple family members.
- **WhatsApp Care Coordination**: Direct line to Health Express care managers via **+91 81234 14120**.
- **Provider Partnership Network**: Dedicated provider onboarding form routing directly to `hello@healthexpress.care`.
- **Evidence-Informed Health Library**: Practical guides covering blood tests, preventive health, family health, and home care.
- **Mobile-Optimized Experience**: Fast, responsive layout tailored with 44px min touch targets for mobile, tablet, and desktop screens.

---

## 🗺️ Website Structure

- **Home (`/`)**: 15-section narrative flow (*Hero → Problem → What We Do → Services → Interactive Test Estimator → For Your Family → Trust → Health Records → Bengaluru Locality Checker → Library → FAQ → Final CTA*).
- **Authentication (`/auth`, `/login`, `/signup`)**: Patient authentication with Indian Mobile OTP verification or Email/Password login.
- **Services (`/services`)**: Full directory of launch verticals with dynamic tab filtering (Diagnostics, Preventive Health Packages, Imaging, Home Nursing, Genetic Testing, Surgical Care).
- **Health Library (`/health-library`)**: Searchable index of patient guides and test preparation articles.
- **About Us (`/about`)**: Founder Neha Bhansali's letter, company vision, 4 core principles (People First, Trust, Simplicity, Care), and approach.
- **For Providers (`/providers`)**: Partnership onboarding page with contact form sending inquiries to `hello@healthexpress.care`.
- **Contact (`/contact`)**: Direct support lines and medical requirement contact form.
- **Legal (`/legal/:type`)**: Customer transparency policies for Privacy, Terms, Refund, Cancellation, and Shipping.

---

## 🌐 Official Social Links & Contact

- **Phone / WhatsApp**: [+91 81234 14120](https://wa.me/918123414120)
- **Provider Contact Email**: `hello@healthexpress.care`
- **Instagram**: [https://www.instagram.com/healthexpress_india](https://www.instagram.com/healthexpress_india)
- **Facebook**: [https://www.facebook.com/HealthExpressIndia/](https://www.facebook.com/HealthExpressIndia/)
- **LinkedIn**: [https://www.linkedin.com/company/healthexpressindia](https://www.linkedin.com/company/healthexpressindia)
- **X (Twitter)**: [https://x.com/HealthExpressIN](https://x.com/HealthExpressIN)

---

## 🛠️ Technology Stack

- **Frontend**: React (Vite)
- **State Management**: React Context (`AuthContext`)
- **Styling**: Tailwind CSS, Glassmorphism, Custom Keyframes
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
