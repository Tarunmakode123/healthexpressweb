/**
 * Health Express Surgeries & Surgical Care Data Directory
 * Strict pricing directive: No numerical prices displayed; "Price available on request".
 */

export const SURGERY_SPECIALITIES = [
  { id: 'orthopaedics', name: 'Orthopaedic Surgery', iconName: 'Bone' },
  { id: 'spine', name: 'Spine Surgery', iconName: 'Activity' },
  { id: 'cardiac', name: 'Cardiac & Cardiothoracic Surgery', iconName: 'Heart' },
  { id: 'neurosurgery', name: 'Neurosurgery', iconName: 'Brain' },
  { id: 'general-surgery', name: 'General & Laparoscopic Surgery', iconName: 'Stethoscope' },
  { id: 'gastrointestinal', name: 'Gastrointestinal Surgery', iconName: 'Activity' },
  { id: 'urology', name: 'Urology', iconName: 'Shield' },
  { id: 'oncology', name: 'Oncology & Cancer Surgery', iconName: 'ShieldAlert' },
  { id: 'gynaecology', name: 'Gynaecological Surgery', iconName: 'HeartPulse' },
  { id: 'ent', name: 'ENT Surgery', iconName: 'UserCheck' },
  { id: 'ophthalmology', name: 'Ophthalmic Surgery', iconName: 'Eye' },
  { id: 'plastic-reconstructive', name: 'Plastic & Reconstructive Surgery', iconName: 'Sparkles' },
  { id: 'transplant', name: 'Transplant', iconName: 'CheckCircle2' },
  { id: 'ivf-fertility', name: 'IVF & Fertility', iconName: 'Dna' },
  { id: 'aesthetic-cosmetic', name: 'Aesthetic & Cosmetic Surgery', iconName: 'Sparkles' },
  { id: 'hair-aesthetic', name: 'Hair & Aesthetic Treatments', iconName: 'UserCheck' },
];

export const POPULAR_SURGERIES_CATEGORIES = [
  {
    category: 'Transplant',
    items: [
      { name: 'Kidney Transplant', slug: 'kidney-transplant' },
      { name: 'Liver Transplant', slug: 'liver-transplant' },
      { name: 'Heart Transplant', slug: 'heart-transplant' },
      { name: 'Lung Transplant', slug: 'lung-transplant' }
    ]
  },
  {
    category: 'IVF & Fertility',
    items: [
      { name: 'IVF Treatment', slug: 'ivf-treatment' },
      { name: 'IUI Treatment', slug: 'iui-treatment' },
      { name: 'Egg Freezing', slug: 'egg-freezing' },
      { name: 'Embryo Freezing', slug: 'embryo-freezing' },
      { name: 'Fertility Preservation', slug: 'fertility-preservation' }
    ]
  },
  {
    category: 'Spine Surgery',
    items: [
      { name: 'Spinal Fusion', slug: 'spinal-fusion' },
      { name: 'Disc Replacement', slug: 'disc-replacement' },
      { name: 'Laminectomy', slug: 'laminectomy' },
      { name: 'Microdiscectomy', slug: 'microdiscectomy' }
    ]
  },
  {
    category: 'Orthopaedics',
    items: [
      { name: 'Knee Replacement', slug: 'knee-replacement' },
      { name: 'Hip Replacement', slug: 'hip-replacement' },
      { name: 'ACL Surgery', slug: 'acl-surgery' }
    ]
  },
  {
    category: 'Cardiac',
    items: [
      { name: 'Heart Bypass Surgery', slug: 'heart-bypass-surgery' },
      { name: 'Valve Replacement', slug: 'valve-replacement' },
      { name: 'Cardiac Surgery', slug: 'cardiac-surgery' }
    ]
  },
  {
    category: 'General Surgery',
    items: [
      { name: 'Hernia Surgery', slug: 'hernia-surgery' },
      { name: 'Gallbladder Surgery', slug: 'gallbladder-surgery' },
      { name: 'Appendix Surgery', slug: 'appendix-surgery' }
    ]
  },
  {
    category: 'Urology',
    items: [
      { name: 'Kidney Stone Surgery', slug: 'kidney-stone-surgery' },
      { name: 'Prostate Surgery', slug: 'prostate-surgery' },
      { name: 'Kidney Surgery', slug: 'kidney-surgery' }
    ]
  },
  {
    category: 'Ophthalmology',
    items: [
      { name: 'Cataract Surgery', slug: 'cataract-surgery' },
      { name: 'LASIK', slug: 'lasik' },
      { name: 'Retinal Surgery', slug: 'retinal-surgery' }
    ]
  },
  {
    category: 'Oncology',
    items: [
      { name: 'Breast Cancer Surgery', slug: 'breast-cancer-surgery' },
      { name: 'Lung Cancer Surgery', slug: 'lung-cancer-surgery' },
      { name: 'Colorectal Cancer Surgery', slug: 'colorectal-cancer-surgery' }
    ]
  },
  {
    category: 'Gynaecology',
    items: [
      { name: 'Hysterectomy', slug: 'hysterectomy' },
      { name: 'Fibroid Surgery', slug: 'fibroid-surgery' },
      { name: 'Endometriosis Surgery', slug: 'endometriosis-surgery' },
      { name: 'Ovarian Surgery', slug: 'ovarian-surgery' }
    ]
  },
  {
    category: 'Plastic & Reconstructive Surgery',
    items: [
      { name: 'Reconstructive Surgery', slug: 'reconstructive-surgery' },
      { name: 'Breast Reconstruction', slug: 'breast-reconstruction' },
      { name: 'Facial Reconstruction', slug: 'facial-reconstruction' },
      { name: 'Burn Reconstruction', slug: 'burn-reconstruction' }
    ]
  },
  {
    category: 'Aesthetics & Cosmetic Surgery',
    items: [
      { name: 'Rhinoplasty', slug: 'rhinoplasty' },
      { name: 'Liposuction', slug: 'liposuction' },
      { name: 'Breast Augmentation', slug: 'breast-augmentation' },
      { name: 'Facelift', slug: 'facelift' },
      { name: 'Hair Transplantation', slug: 'hair-transplantation' }
    ]
  },
  {
    category: 'Hair & Aesthetic Treatments',
    items: [
      { name: 'Hair Transplantation', slug: 'hair-transplantation-treatment' },
      { name: 'Hair Restoration', slug: 'hair-restoration' },
      { name: 'PRP Hair Treatment', slug: 'prp-hair-treatment' },
      { name: 'Scalp Treatments', slug: 'scalp-treatments' }
    ]
  }
];

export const SURGERIES_FAQ = [
  {
    question: "What types of surgeries can Health Express help with?",
    answer: "Health Express can help you explore surgical care across major specialities, including orthopaedics, spine surgery, cardiac surgery, neurosurgery, general surgery, gastroenterology, urology, oncology, gynaecology, ophthalmology, ENT, transplant, IVF and fertility, plastic and reconstructive surgery, and aesthetic and cosmetic procedures. You can explore relevant procedures, specialists, hospitals and treatment options based on your needs."
  },
  {
    question: "How can Health Express help me find a specialist for surgery?",
    answer: "Health Express helps you explore and connect with relevant specialists based on your condition, recommended procedure, speciality and location. You can review available doctors and hospitals and request assistance with consultation scheduling and coordination."
  },
  {
    question: "Can I compare surgery costs between hospitals?",
    answer: "Where verified pricing information is available, Health Express can help you understand and compare estimated treatment costs across available hospital options. Actual costs may vary depending on the procedure, surgeon, hospital, location, implants, investigations, length of stay and individual clinical requirements."
  },
  {
    question: "Can I get a second opinion before surgery?",
    answer: "Yes. If you have already been advised to undergo surgery, Health Express can help you explore options for a second specialist opinion. You can share your medical reports and relevant documents to help us identify an appropriate specialist for consultation. A second opinion does not replace your treating doctor's clinical assessment."
  },
  {
    question: "How much does surgery cost in India?",
    answer: "Surgery costs in India vary significantly depending on the procedure, hospital, city, surgeon, technology used, implants, room category and individual patient requirements. Health Express can help you obtain an estimated cost based on the specific procedure and available treatment options."
  },
  {
    question: "Can I upload my medical reports to get surgery assistance?",
    answer: "Yes. You can upload your prescription, diagnosis, medical reports or doctor's recommendation through Health Express. Our team can use the information to understand your requirement and help you explore relevant specialists, hospitals, treatment options and estimated costs. Final diagnosis and treatment decisions should always be made by a qualified treating specialist."
  }
];

export function getSurgeryBySlug(slug) {
  // Return formatted procedure object or fallback default
  const allProcedures = POPULAR_SURGERIES_CATEGORIES.flatMap(cat => 
    cat.items.map(item => ({
      ...item,
      category: cat.category,
      priceNotice: "Price available on request",
      description: `Comprehensive evaluation, specialist selection, and hospital coordination for ${item.name} in India.`,
      whyDone: `Recommended by surgical specialists for clinical management and restoration of function or aesthetic outcome.`,
      preparation: `Pre-operative investigations, blood work, anaesthesia assessment, and specialist consultation.`
    }))
  );

  return allProcedures.find(p => p.slug === slug) || {
    name: 'Surgical & Treatment Option',
    slug: 'surgery-option',
    category: 'Specialist Surgical Care',
    priceNotice: 'Price available on request',
    description: 'Explore surgical options, top hospital partners, and experienced specialists in India with Health Express.',
    whyDone: 'Comprehensive surgical guidance tailored to individual clinical requirements.',
    preparation: 'Pre-operative health assessment, doctor consultation, and diagnostic evaluations.'
  };
}
