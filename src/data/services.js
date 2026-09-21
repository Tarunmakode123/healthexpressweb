export const SERVICES_DATA = [
  {
    id: 'diagnostics',
    slug: 'diagnostics',
    category: 'diagnostics',
    title: 'Diagnostics & Pathology',
    shortDesc: 'NABL accredited diagnostic blood tests and pathology profiles',
    description: 'Comprehensive diagnostic testing including blood profiles, pathology, metabolic panels, and routine health checkups delivered at home or partner labs.',
    iconName: 'FlaskConical',
    badge: 'Most Popular',
    turnaround: '6 - 12 Hours Digital Report',
    pickupTime: '30-Min Home Sample Pickup',
    prep: '10-12 Hours Fasting Required for Lipid & Sugar Profiles',
    sampleType: 'Blood & Urine',
    features: ['Home sample collection', 'NABL accredited partner labs', 'Digital report within 24 hours', 'Doctor consultation on report'],
    parameters: [
      'Complete Blood Count (CBC - 24 parameters)',
      'Fasting Blood Sugar (FBS) & HbA1c',
      'Lipid Profile (Cholesterol, Triglycerides, HDL, LDL)',
      'Liver Function Test (LFT) & Kidney Function Test (KFT)',
      'Thyroid Profile (T3, T4, TSH)'
    ]
  },
  {
    id: 'imaging',
    slug: 'imaging',
    category: 'imaging',
    title: 'Diagnostic Imaging',
    shortDesc: 'X-rays, MRI, CT, Ultrasound and specialized radiology',
    description: 'High-precision diagnostic imaging at top accredited radiology centers near you. Fast appointment slot confirmation and digital DICOM radiology reporting.',
    iconName: 'Camera',
    badge: 'Advanced Imaging',
    turnaround: 'Same-Day Digital Radiology Report',
    pickupTime: 'Prioritized Center Slot',
    prep: 'Metal-free attire for MRI; Fasting may be required for Abdominal Ultrasound',
    sampleType: 'Radiology Scan',
    features: ['MRI & CT scans', 'Digital X-Rays & Ultrasound', 'Mammography & PET-CT', 'Prioritized scheduling'],
    parameters: [
      'High-Resolution MRI (Brain, Spine, Joints)',
      'Multi-Slice CT Scans (Chest, Abdomen, Cardiac)',
      'Digital Ultrasound (Whole Abdomen, Pelvic, Doppler)',
      'Digital X-Ray with Instant DICOM Link'
    ]
  },
  {
    id: 'home-healthcare',
    slug: 'home-care',
    title: 'Home Healthcare & Nursing',
    shortDesc: 'Certified nursing care, wound dressing, and IV therapy at home',
    description: 'Professional nursing care, post-surgical rehabilitation, elderly care, and specialized medical assistance in the comfort of your home.',
    iconName: 'Home',
    badge: 'At-Home Care',
    turnaround: 'Continuous Monitoring & Daily Care Notes',
    pickupTime: 'On-Demand Nurse Deployment',
    prep: 'Keep doctor prescription and current medication list handy',
    sampleType: 'Clinical Nursing Visit',
    features: ['Certified nurses & caregivers', 'Post-hospitalization care', 'IV therapy & dressing', 'Regular vital monitoring'],
    parameters: [
      'Post-Surgical Nursing & Wound Dressing',
      'IV Infusions, Injections & Catheter Care',
      'Elderly Assisted Daily Care & Mobility Support',
      '24/7 Vital Monitoring & Bedside Care'
    ]
  },
  {
    id: 'genetic-testing',
    slug: 'genomics',
    title: 'Precision Genetic Profiling',
    shortDesc: 'Advanced DNA sequencing and hereditary risk screening',
    description: 'Advanced DNA sequencing, hereditary risk screening, nutrigenomics, and carrier screening with professional genetic counseling.',
    iconName: 'Dna',
    badge: 'Precision Genomics',
    turnaround: '7 - 10 Business Days Detailed Profiling',
    pickupTime: 'Home Kit / Phlebotomist Visit',
    prep: 'Do not eat, drink, or smoke 30 minutes prior to saliva collection',
    sampleType: 'Saliva Kit / Whole Blood',
    features: ['Hereditary disease risk', 'Pharmacogenomics', 'Genetic counselor review', 'Saliva / Blood collection'],
    parameters: [
      'Hereditary Cancer Risk Panel (BRCA1/2 & 30+ genes)',
      'Cardiovascular Genetic Risk Assessment',
      'Pharmacogenomics (Drug response & sensitivity)',
      'Nutrigenomics & Metabolic Fitness Blueprint'
    ]
  },
  {
    id: 'preventive-healthcare',
    slug: 'preventive',
    title: 'Preventive Health Packages',
    shortDesc: 'Proactive wellness profiles for early disease detection',
    description: 'Proactive wellness packages designed to detect early indicators of lifestyle diseases, heart health risks, diabetes, and organ wellness.',
    iconName: 'HeartPulse',
    badge: 'Proactive Wellness',
    turnaround: 'Same-Day Comprehensive Health Report',
    pickupTime: 'Fast-Track Home Collection',
    prep: '12 Hours Overnight Fasting Recommended',
    sampleType: 'Blood, Urine & ECG',
    features: ['Age-tailored packages', 'Comprehensive body profiling', 'Lifestyle coaching', 'Annual wellness tracker'],
    parameters: [
      'Full Body Comprehensive Health Profile (80+ parameters)',
      'Senior Citizen Wellness Package (Men & Women)',
      'Executive Health Screening & Cardiac Markers',
      'Vitamin Deficiencies (D3, B12, Iron Profile)'
    ]
  }
];
