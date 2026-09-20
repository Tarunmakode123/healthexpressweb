/**
 * Health Express Centralized Chatbot Knowledge Base
 * Authoritative source of truth for the Health Express Healthcare Service Assistant.
 */

export const CHATBOT_KNOWLEDGE = {
  company: {
    name: "Health Express",
    positioning: "Your personal health manager, for you and your family.",
    tagline: "Healthcare, without the hassle.",
    launchCity: "Bengaluru",
    softLaunchNotice: "Health Express is currently operating in its soft-launch phase focused on Diagnostics, Home Healthcare Nursing, and Preventive Health in Bengaluru.",
    whatsappNumber: "+91 81234 14120",
    email: "hello@healthexpress.care"
  },

  services: [
    {
      id: "diagnostics",
      name: "Diagnostics & Pathology",
      route: "/services",
      shortDesc: "Home sample collection and accredited diagnostic lab testing.",
      details: "Comprehensive blood tests, pathology panels, and routine diagnostic checkups. Certified technicians collect samples directly from your home in Bengaluru.",
      cta: "Explore Diagnostics"
    },
    {
      id: "imaging",
      name: "Imaging & Radiology",
      route: "/services",
      shortDesc: "X-Rays, Ultrasound, MRI & CT Scans at trusted diagnostic centers.",
      details: "High-precision diagnostic imaging at NABL/NABH accredited centers near you in Bengaluru with digital reporting.",
      cta: "Explore Imaging"
    },
    {
      id: "home-healthcare",
      name: "Home Healthcare Nursing",
      route: "/services",
      shortDesc: "Professional nursing care & medical assistance delivered at home.",
      details: "Qualified nurses for post-surgical recovery, wound dressing, IV therapy, elderly care, and regular vital monitoring in the comfort of your home.",
      cta: "Explore Home Nursing"
    },
    {
      id: "preventive-healthcare",
      name: "Preventive Health Packages",
      route: "/services",
      shortDesc: "Full body health checkups & screening profiles for all age groups.",
      details: "Proactive checkup packages designed to assess diabetes, heart health, lipid profiles, liver & kidney wellness, and vitamin levels.",
      cta: "Explore Health Packages"
    },
    {
      id: "genetic-testing",
      name: "Genetic Testing & Genomics",
      route: "/services",
      shortDesc: "Personalized DNA screening & hereditary health risk profiling.",
      details: "Advanced DNA sequencing and hereditary risk assessments paired with expert genetic counseling.",
      cta: "Explore Genomics"
    }
  ],

  popularTests: [
    {
      id: "cbc",
      title: "CBC Test (Complete Blood Count)",
      desc: "Measures red blood cells, white blood cells, hemoglobin, and platelets to evaluate overall health and detect anemia or infection.",
      fasting: "No fasting required for a standard CBC test."
    },
    {
      id: "thyroid",
      title: "Thyroid Profile (T3, T4, TSH)",
      desc: "Assesses thyroid gland function to evaluate metabolic activity and check for hypothyroidism or hyperthyroidism.",
      fasting: "Morning sample collection recommended."
    },
    {
      id: "vitamin-d",
      title: "Vitamin D (25-Hydroxy)",
      desc: "Measures Vitamin D levels crucial for bone density, joint health, and immune system performance.",
      fasting: "Fasting generally not required."
    },
    {
      id: "hba1c",
      title: "HbA1c Test (Glycated Hemoglobin)",
      desc: "Provides a 3-month average of blood sugar levels to screen for or monitor diabetes.",
      fasting: "Fasting not strictly required."
    },
    {
      id: "lipid",
      title: "Lipid Profile (Cholesterol Test)",
      desc: "Measures Total Cholesterol, HDL, LDL, and Triglycerides to assess cardiovascular health.",
      fasting: "Requires 10-12 hours of overnight fasting."
    },
    {
      id: "full-body",
      title: "Full Body Health Checkup",
      desc: "Comprehensive master checkup covering CBC, Lipid Profile, Liver Function, Kidney Function, HbA1c, and Thyroid.",
      fasting: "Requires 10-12 hours of overnight fasting."
    }
  ],

  localities: [
    "Koramangala", "Indiranagar", "HSR Layout", "Whitefield", 
    "Bellandur", "Jayanagar", "Electronic City", "Sarjapur Road", 
    "Hebbal", "JP Nagar"
  ],

  faqs: [
    {
      q: "How do I send my prescription?",
      a: "You can tap the 'Send Prescription on WhatsApp' button anywhere on our website or within this chat. Our care coordinator will immediately review your prescription and guide you on test options, pricing, and home collection slots."
    },
    {
      q: "Is home sample collection available?",
      a: "Yes! Health Express coordinates home sample collection across major Bengaluru localities through verified NABL-accredited diagnostic partner laboratories."
    },
    {
      q: "Are online payment and live order tracking available?",
      a: "Online payment gateway, real-time live order tracking, and patient app features are part of the upcoming Health Express platform phase. For our soft launch, our team coordinates your orders directly on WhatsApp for maximum personal care."
    },
    {
      q: "How can I contact Health Express?",
      a: "You can reach our care coordination team on WhatsApp at +91 81234 14120 or email us at hello@healthexpress.care."
    }
  ]
};
