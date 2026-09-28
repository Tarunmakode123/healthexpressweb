import { CHATBOT_KNOWLEDGE } from '../data/chatbotKnowledge.js';
import { ALL_SERVICES, CATEGORIES } from '../data/services.js';
import { DEFAULT_MESSAGES } from '../utils/whatsapp.js';

/**
 * Health Express AI Conversational & Knowledge Retrieval Engine
 * Primary Source of Truth:
 * - Services & Pricing: ALL_SERVICES & CATEGORIES from src/data/services.js
 * - Localities & Coverage: CHATBOT_KNOWLEDGE from src/data/chatbotKnowledge.js
 */

const STOP_WORDS = new Set([
  'a', 'an', 'the', 'is', 'are', 'was', 'were', 'be', 'been', 'being',
  'and', 'or', 'but', 'if', 'so', 'as', 'also', 'yet', 'nor', 'not',
  'what', 'which', 'who', 'whom', 'this', 'that', 'these', 'those',
  'am', 'do', 'does', 'did', 'doing', 'have', 'has', 'had', 'having',
  'how', 'much', 'many', 'cost', 'costs', 'price', 'prices', 'pricing',
  'rate', 'rates', 'fee', 'fees', 'charge', 'charges', 'pay', 'payment',
  'for', 'of', 'in', 'on', 'at', 'by', 'to', 'from', 'with', 'about',
  'tell', 'me', 'give', 'can', 'you', 'show', 'where', 'available',
  'provide', 'provides', 'provider', 'offer', 'offers', 'offering',
  'service', 'services', 'test', 'tests', 'scan', 'scans', 'checkup',
  'checkups', 'package', 'packages', 'please', 'thanks', 'thank',
  'good', 'hi', 'hello', 'hey', 'need', 'want', 'require', 'looking',
  'bengaluru', 'bangalore', 'koramangala', 'indiranagar', 'hsr', 'layout',
  'whitefield', 'bellandur', 'jayanagar', 'electronic', 'city', 'sarjapur',
  'road', 'hebbal', 'jp', 'nagar', 'indore', 'mumbai', 'delhi', 'pune',
  'chennai', 'kolkata', 'hyderabad', 'sample', 'collection', 'home'
]);

function extractSearchKeywords(rawQuery) {
  const clean = rawQuery.toLowerCase().replace(/[^\w\s]/g, ' ').replace(/\s+/g, ' ').trim();
  const tokens = clean.split(' ').filter((t) => t.length > 1 && !STOP_WORDS.has(t));
  return tokens;
}

// Helper to search services in ALL_SERVICES
function searchCatalogServices(rawQuery) {
  const clean = rawQuery.toLowerCase().replace(/[^\w\s]/g, ' ').replace(/\s+/g, ' ').trim();
  if (!clean) return [];

  // 1. Exact ID, slug, or exact name match
  const exactMatch = ALL_SERVICES.filter((s) => 
    s.id.toLowerCase() === clean || 
    s.slug.toLowerCase() === clean || 
    s.name.toLowerCase() === clean
  );
  if (exactMatch.length > 0) return exactMatch;

  // 2. Keyword matching with stop words excluded
  const keywords = extractSearchKeywords(rawQuery);
  if (keywords.length === 0) return [];

  const matched = ALL_SERVICES.filter((s) => {
    const sNameLower = s.name.toLowerCase();
    const sIdLower = s.id.toLowerCase();
    const sSlugLower = s.slug.toLowerCase();
    const sSubcatLower = (s.subcategory || '').toLowerCase();
    const sDescLower = (s.shortDesc || s.description || '').toLowerCase();
    const sParamsLower = (s.parameters || []).map((p) => p.toLowerCase()).join(' ');

    return keywords.every((kw) => {
      const safeKw = kw.replace(/[.*+?^${}()|[\]\\]/g, '\\$&');
      const kwRegex = new RegExp(`\\b${safeKw}\\b`, 'i');
      return (
        kwRegex.test(sNameLower) || 
        kwRegex.test(sIdLower) || 
        kwRegex.test(sSlugLower) ||
        kwRegex.test(sSubcatLower) ||
        (kw.length > 3 && (sDescLower.includes(kw) || sParamsLower.includes(kw)))
      );
    });
  });

  return matched;
}

// Helper to check location coverage against CHATBOT_KNOWLEDGE
function evaluateLocationCoverage(rawQuery) {
  const cleanQuery = rawQuery.toLowerCase().replace(/[^\w\s]/g, ' ').replace(/\s+/g, ' ').trim();

  // Common non-covered cities list for explicit negative detection
  const externalCities = [
    'indore', 'mumbai', 'delhi', 'pune', 'chennai', 'kolkata', 'hyderabad', 
    'ahmedabad', 'jaipur', 'lucknow', 'chandigarh', 'kochi', 'surat', 'bhopal'
  ];

  const foundExternalCity = externalCities.find((city) => cleanQuery.includes(city));
  if (foundExternalCity) {
    const formattedCity = foundExternalCity.charAt(0).toUpperCase() + foundExternalCity.slice(1);
    return {
      isCovered: false,
      mentionedLocation: formattedCity,
      message: `Service availability in **${formattedCity}** could not be confirmed. Health Express currently operates in **Bengaluru** across major hubs including:\n• ${CHATBOT_KNOWLEDGE.localities.join('\n• ')}`
    };
  }

  const matchedLocality = CHATBOT_KNOWLEDGE.localities.find((loc) => cleanQuery.includes(loc.toLowerCase()));
  if (matchedLocality || cleanQuery.includes('bengaluru') || cleanQuery.includes('bangalore')) {
    const areaName = matchedLocality || 'Bengaluru';
    return {
      isCovered: true,
      mentionedLocation: areaName,
      message: `📍 **Service Coverage Confirmed**: Health Express provides home sample collection and home nursing care in **${areaName}**, Bengaluru!`
    };
  }

  return {
    isCovered: null,
    mentionedLocation: null,
    message: `📍 **Service Coverage**: Health Express operates in **Bengaluru** across major hubs including:\n• ${CHATBOT_KNOWLEDGE.localities.join('\n• ')}`
  };
}

/**
 * Clean user query for target terms when searching fallbacks
 */
function extractTargetTerm(rawQuery) {
  return rawQuery
    .replace(/[^\w\s]/gi, '')
    .replace(/\b(what|is|the|price|cost|charge|rate|fee|how|much|does|for|of|in|available|service|services|test|tests|scan|scans|do|you|provide|offer|tell|me|can|i|get)\b/gi, '')
    .replace(/\s+/g, ' ')
    .trim();
}

/**
 * Main intent processor and knowledge retriever
 */
export function processUserMessage(rawQuery, currentPath = '/', conversationHistory = []) {
  const cleanQuery = rawQuery.toLowerCase().replace(/[^\w\s]/g, ' ').replace(/\s+/g, ' ').trim();

  // ----------------------------------------------------
  // 1. EMERGENCY MEDICAL DISCLAIMER CHECK
  // ----------------------------------------------------
  if (
    cleanQuery.includes('emergency') || 
    cleanQuery.includes('heart attack') || 
    cleanQuery.includes('chest pain') || 
    cleanQuery.includes('stroke') || 
    cleanQuery.includes('unconscious') || 
    cleanQuery.includes('severe bleeding')
  ) {
    return {
      text: "🚨 **Immediate Medical Notice**: If you or someone around you is experiencing a medical emergency, chest pain, or severe breathing distress, please call emergency services (108 / 112) or reach the nearest hospital immediately.\n\nHealth Express is a service coordination manager and not an emergency triage service.",
      quickReplies: [
        { label: "Talk to Health Express Team", action: "whatsapp_general" }
      ],
      whatsappMsg: DEFAULT_MESSAGES.general
    };
  }

  // ----------------------------------------------------
  // 2. MEDICAL ADVICE & DIAGNOSIS GUARD
  // ----------------------------------------------------
  if (
    cleanQuery.includes('prescribe me') || 
    cleanQuery.includes('what medicine for') || 
    cleanQuery.includes('diagnose my') || 
    cleanQuery.includes('cure for') || 
    cleanQuery.includes('medicine suggestion') ||
    cleanQuery.includes('dawa batao')
  ) {
    return {
      text: "⚠️ **Medical Advice Notice**: I am the Health Express Service Assistant. I cannot diagnose symptoms or prescribe medications.\n\nFor medical advice or treatment, we recommend consulting a qualified doctor. However, if you already have a prescription or need diagnostic blood tests, Health Express can coordinate your care.",
      quickReplies: [
        { label: "Send Prescription on WhatsApp", action: "whatsapp_prescription" },
        { label: "Explore Diagnostic Services", action: "nav_services" }
      ],
      whatsappMsg: DEFAULT_MESSAGES.prescription
    };
  }

  // ----------------------------------------------------
  // 3. GENERAL CONVERSATION & SMALL TALK
  // ----------------------------------------------------
  const greetings = ['hi', 'hello', 'hey', 'good morning', 'good evening', 'greetings', 'namaste', 'hais', 'hie'];
  const gratitude = ['thanks', 'thank you', 'thx', 'thankyou', 'dhanyawad', 'shukriya'];
  const closing = ['okay', 'ok', 'great', 'awesome', 'got it', 'sure', 'fine', 'bye', 'goodbye'];
  const helpInquiries = ['can you help me', 'what can you do', 'how can you help', 'what do you do', 'tell me something', 'who are you'];
  const serviceCatalogInquiries = ['what services do you offer', 'what services do you provide', 'show me services', 'list of services', 'available services', 'services list'];

  if (greetings.includes(cleanQuery) || cleanQuery === 'hi hex' || cleanQuery === 'hello hex') {
    return {
      text: "Hi! 👋 How can I help you with Health Express services, pricing, or availability?",
      quickReplies: [
        { label: "🧪 Lab Tests & Pricing", action: "nav_services" },
        { label: "🏡 Home Healthcare Nursing", action: "whatsapp_service_nursing" },
        { label: "📍 Areas We Cover", action: "whatsapp_locality" },
        { label: "📄 Upload Prescription", action: "open_upload_modal" }
      ],
      whatsappMsg: DEFAULT_MESSAGES.general
    };
  }

  if (gratitude.some((g) => cleanQuery.includes(g))) {
    return {
      text: "You're welcome! 😊 Let me know if you need any further help with tests, home care, or pricing.",
      quickReplies: [
        { label: "Explore Services", action: "nav_services" },
        { label: "Connect on WhatsApp", action: "whatsapp_general" }
      ],
      whatsappMsg: DEFAULT_MESSAGES.general
    };
  }

  if (closing.includes(cleanQuery)) {
    return {
      text: "Great! Have a healthy day ahead! Feel free to reach out anytime.",
      quickReplies: [
        { label: "Explore Services", action: "nav_services" }
      ],
      whatsappMsg: DEFAULT_MESSAGES.general
    };
  }

  if (helpInquiries.some((h) => cleanQuery.includes(h))) {
    return {
      text: "I am the **Health Express Care Assistant**! Here is how I can help you:\n\n1. 🧪 **Pricing**: Check exact prices for lab tests, radiology, and health packages.\n2. 📍 **Areas We Cover**: Verify home collection & nursing availability in Bengaluru.\n3. 📋 **Services**: Explore CBC, Thyroid, Vitamin D, HbA1c, MRI, CT Scans, Home Care Nursing, and Surgeries.\n4. 📄 **Prescriptions**: Send your prescription directly on WhatsApp for instant coordination.",
      quickReplies: [
        { label: "🧪 Check Test Prices", action: "nav_services" },
        { label: "📍 View Covered Areas", action: "whatsapp_locality" },
        { label: "🏡 Home Healthcare Nursing", action: "whatsapp_service_nursing" }
      ],
      whatsappMsg: DEFAULT_MESSAGES.general
    };
  }

  if (serviceCatalogInquiries.some((s) => cleanQuery.includes(s))) {
    return {
      text: "📋 **Health Express Healthcare Services**:\n\n1. 🧪 **Lab Tests & Pathology**: CBC, Thyroid Profile, Lipid Profile, HbA1c, Vitamin D/B12, Liver & Kidney Function.\n2. 📷 **Diagnostic Imaging**: MRI Brain/Spine, CT Scans, Ultrasound & X-Rays at accredited centers.\n3. 🧬 **Genetics & Genomics**: Carrier screening, hereditary disease risk, and DNA sequencing.\n4. 🏡 **Home Care & Nursing**: Certified nurse home visits, IV therapy, post-op recovery, & vital monitoring.\n5. 🩺 **Surgical Guidance**: Elective surgery second opinions & hospital admission coordination.\n\nType any specific test or service name to see exact pricing and details!",
      quickReplies: [
        { label: "🧪 Check Test Prices", action: "nav_services" },
        { label: "📍 View Coverage Areas", action: "whatsapp_locality" }
      ],
      whatsappMsg: DEFAULT_MESSAGES.general
    };
  }

  // ----------------------------------------------------
  // 4. INTENT IDENTIFICATION
  // ----------------------------------------------------
  const isPricingIntent = 
    cleanQuery.includes('price') || 
    cleanQuery.includes('cost') || 
    cleanQuery.includes('charge') || 
    cleanQuery.includes('rate') || 
    cleanQuery.includes('fee') || 
    cleanQuery.includes('pay') || 
    cleanQuery.includes('pricing') || 
    cleanQuery.includes('how much') || 
    cleanQuery.includes('kitne') || 
    cleanQuery.includes('kitna');

  const isAreaIntent = 
    cleanQuery.includes('area') || 
    cleanQuery.includes('location') || 
    cleanQuery.includes('city') || 
    cleanQuery.includes('covered') || 
    cleanQuery.includes('operate') || 
    cleanQuery.includes('available in') || 
    cleanQuery.includes('coverage') || 
    cleanQuery.includes('where do you') || 
    cleanQuery.includes('which city') || 
    cleanQuery.includes('which area') ||
    CHATBOT_KNOWLEDGE.localities.some((loc) => cleanQuery.includes(loc.toLowerCase())) ||
    cleanQuery.includes('bengaluru') || 
    cleanQuery.includes('bangalore') ||
    ['indore', 'mumbai', 'delhi', 'pune', 'chennai', 'kolkata', 'hyderabad'].some((city) => cleanQuery.includes(city));

  const matchedServices = searchCatalogServices(rawQuery);
  const isServiceIntent = 
    matchedServices.length > 0 ||
    cleanQuery.includes('service') || 
    cleanQuery.includes('test') || 
    cleanQuery.includes('scan') || 
    cleanQuery.includes('checkup') || 
    cleanQuery.includes('profile') || 
    cleanQuery.includes('package') || 
    cleanQuery.includes('nursing') || 
    cleanQuery.includes('surgery') || 
    cleanQuery.includes('mri') || 
    cleanQuery.includes('cbc') || 
    cleanQuery.includes('thyroid');

  // ----------------------------------------------------
  // 5. COMBINED / MULTI-INTENT RESOLUTION
  // ----------------------------------------------------
  let responseSections = [];
  let quickReplies = [];

  // A. SERVICE & PRICING MATCHING FROM ALL_SERVICES
  if (matchedServices.length > 0) {
    const primaryService = matchedServices[0];
    let serviceText = `🧪 **${primaryService.name}**\n${primaryService.shortDesc || primaryService.description}`;
    
    if (isPricingIntent || cleanQuery.includes('price') || cleanQuery.includes('cost')) {
      serviceText += `\n\n💰 **Exact Pricing**: ₹${primaryService.discount_price}`;
      if (primaryService.price && primaryService.price > primaryService.discount_price) {
        serviceText += ` (MRP: ₹${primaryService.price}, ${primaryService.discount_percentage || ''} OFF)`;
      }
    } else {
      serviceText += `\n\n💰 **Price**: ₹${primaryService.discount_price}`;
    }

    if (primaryService.turnaround_time) {
      serviceText += `\n⏱️ **Turnaround Time**: ${primaryService.turnaround_time}`;
    }

    if (primaryService.fasting_required !== undefined) {
      serviceText += `\n🥣 **Fasting Prep**: ${primaryService.fasting_required ? 'Fasting Required' : 'No Fasting Needed'}`;
    }

    responseSections.push(serviceText);

    quickReplies.push({ label: `Book ${primaryService.name.split(' ')[0]} (₹${primaryService.discount_price})`, action: `whatsapp_test_${primaryService.id}` });
  } else if (isPricingIntent && !isAreaIntent) {
    // Pricing requested for a service NOT found in ALL_SERVICES
    const targetTerm = extractTargetTerm(rawQuery);
    if (targetTerm.length > 1) {
      responseSections.push(`💰 **Pricing**: Pricing information for "${targetTerm}" is currently not available in our catalog.\n\nPlease connect with our Care Manager on WhatsApp for customized pricing.`);
    } else {
      responseSections.push("💰 **Health Express Pricing**:\n• Complete Blood Count (CBC): ₹299 (MRP ₹350)\n• Thyroid Profile (T3, T4, TSH): ₹499 (MRP ₹750)\n• Lipid Profile: ₹499 (MRP ₹650)\n• Full Body Health Checkup: ₹1,499 (MRP ₹2,999)\n\nSearch any specific test to view its exact price!");
    }
  } else if (isServiceIntent && matchedServices.length === 0 && !isAreaIntent) {
    // Service requested NOT found in ALL_SERVICES
    const targetTerm = extractTargetTerm(rawQuery);
    if (targetTerm.length > 1) {
      responseSections.push(`🧪 **Service Inquiry**: We could not find "${targetTerm}" in our current healthcare service catalog.\n\nPlease connect with our Care Manager on WhatsApp to check if custom arrangements can be made.`);
    }
  }

  // B. AREA / LOCATION COVERAGE EVALUATION FROM CHATBOT_KNOWLEDGE
  if (isAreaIntent) {
    const areaResult = evaluateLocationCoverage(rawQuery);
    responseSections.push(areaResult.message);
  }

  // IF MULTI-INTENT OR SINGLE-INTENT PRODUCED SECTIONS
  if (responseSections.length > 0) {
    quickReplies.push({ label: "Send Prescription on WhatsApp", action: "whatsapp_prescription" });
    quickReplies.push({ label: "Explore Services Directory", action: "nav_services" });

    return {
      text: responseSections.join("\n\n---\n\n"),
      quickReplies: quickReplies.slice(0, 4),
      whatsappMsg: `Namaste Health Express! I am inquiring about: "${rawQuery}". Please guide me.`
    };
  }

  // ----------------------------------------------------
  // 6. DEFAULT SMART FALLBACK RESPONSE
  // ----------------------------------------------------
  return {
    text: `I understand you are asking about "${rawQuery}".\n\nI am the Health Express Care Assistant. I can help you find lab test prices, check home nursing care, or verify service availability in Bengaluru.\n\nWould you like to connect directly with our care coordinator?`,
    quickReplies: [
      { label: "Talk to Care Manager on WhatsApp", action: "whatsapp_general" },
      { label: "Send Prescription", action: "whatsapp_prescription" },
      { label: "Explore Services Directory", action: "nav_services" }
    ],
    whatsappMsg: `Namaste Health Express! I have a question regarding: "${rawQuery}". Please assist me.`
  };
}

export async function processUserMessageAsync(rawQuery, currentPath = '/', conversationHistory = []) {
  return processUserMessage(rawQuery, currentPath, conversationHistory);
}

