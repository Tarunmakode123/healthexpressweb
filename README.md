# Health Express — Official Public Website

> **Healthcare, without the hassle.**  
> Official repository for the Health Express soft-launch website.

---

## 🏥 Overview

**Health Express** is a modern healthcare marketplace designed to make accessing diagnostic tests, home nursing, doctor consultations, and preventive health checkups seamless and stress-free.

This repository contains the first-stage public website, created to introduce Health Express services to customers and enable direct care coordination through a WhatsApp-assisted workflow.

---

## ✨ Key Features & Highlights

- **WhatsApp Care Coordination**: Customers can upload prescriptions or share medical requirements directly with Health Express care coordinators via WhatsApp.
- **Comprehensive Healthcare Offerings**: Clear service showcases for Diagnostics, Imaging, Home Healthcare, Telemedicine, Pharmacy, Genetic Testing, and Preventive Health.
- **Preventive Healthcare Pillar**: Focus on proactive screening, early risk detection, and wellness profiling.
- **Evidence-Informed Health Library**: Educational patient guides covering common blood tests (CBC, HbA1c, Thyroid, Lipid Profile) and test preparation.
- **Location Coverage**: Information for major operational hubs including Bangalore, Hyderabad, Mumbai, Delhi NCR, and Pune.
- **Mobile-Optimized Experience**: Fast, responsive layout tailored for smartphones, tablets, and desktop browsers.

---

## 🗺️ Website Structure

- **Home (`/`)**: Main showcase introducing Health Express, core benefits, how it works, services, popular tests, city coverage, trust standards, FAQs, and WhatsApp conversion actions.
- **Services (`/services`)**: Full directory of available healthcare verticals with detailed feature overviews.
- **Health Library (`/health-library`)**: Searchable index of patient guides and test preparation articles.
- **About Us (`/about`)**: Company vision, quality commitment, and NABL partner lab standards.
- **For Providers (`/providers`)**: Partnership onboarding page for labs and healthcare providers.
- **Contact (`/contact`)**: Direct support lines and medical requirement contact form.
- **Legal (`/legal/:type`)**: Customer transparency policies for Privacy, Terms, Refund, Cancellation, and Shipping.

---

## 🛠️ Technology Stack

- **Frontend**: React (Vite)
- **Styling**: Tailwind CSS
- **Iconography**: Lucide Icons
- **Routing**: React Router

---

## 🚀 Getting Started

### Prerequisites
- Node.js (v18 or higher recommended)
- npm (Node Package Manager)

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
   VITE_HEALTH_EXPRESS_WHATSAPP_NUMBER=919876543210
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

This public website serves purely as a discovery and customer engagement interface. No sensitive patient health records, uploaded prescriptions, or private medical data are exposed or stored within this repository.

---

© 2025–2026 Health Express. All rights reserved.  
*A healthier tomorrow, together.*
