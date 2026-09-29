import { CHATBOT_KNOWLEDGE, HEX_SPECIFICATION } from '../data/chatbotKnowledge.js';
import { ALL_SERVICES, CATEGORIES } from '../data/services.js';
import { DEFAULT_MESSAGES } from '../utils/whatsapp.js';

/**
 * HEALTH EXPRESS — HEX AI AGENT DECISION & INTENT ENGINE
 * Developer Specification • Version 1.0
 * 
 * Non-Negotiable Rules & Intent Processor
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
  'bengaluru', 'bangalore', 'sample', 'collection', 'home'
]);

function extractSearchKeywords(rawQuery) {
  const clean = rawQuery.toLowerCase().replace(/[^\w\s]/g, ' ').replace(/\s+/g, ' ').trim();
  return clean.split(' ').filter((t) => t.length > 1 && !STOP_WORDS.has(t));
}

function searchCatalogServices(rawQuery) {
  const clean = rawQuery.toLowerCase().replace(/[^\w\s]/g, ' ').replace(/\s+/g, ' ').trim();
  if (!clean) return [];

  // Exact match first
  const exactMatch = ALL_SERVICES.filter((s) => 
    s.id.toLowerCase() === clean || 
    s.slug.toLowerCase() === clean || 
    s.name.toLowerCase() === clean
  );
  if (exactMatch.length > 0) return exactMatch;

  // Keyword match
  const keywords = extractSearchKeywords(rawQuery);
  if (keywords.length === 0) return [];

  return ALL_SERVICES.filter((s) => {
    const sNameLower = s.name.toLowerCase();
    const sIdLower = s.id.toLowerCase();
    const sSlugLower = s.slug.toLowerCase();
    const sSubcatLower = (s.subcategory || '').toLowerCase();
    const sDescLower = (s.shortDesc || s.description || '').toLowerCase();

    return keywords.every((kw) => {
      const safeKw = kw.replace(/[.*+?^${}()|[\]\\]/g, '\\$&');
      const kwRegex = new RegExp(`\\b${safeKw}\\b`, 'i');
      return (
        kwRegex.test(sNameLower) || 
        kwRegex.test(sIdLower) || 
        kwRegex.test(sSlugLower) ||
        kwRegex.test(sSubcatLower) ||
        (kw.length > 3 && sDescLower.includes(kw))
      );
    });
  });
}

function evaluateGeographyCoverage(rawQuery, serviceType = 'general') {
  const cleanQuery = rawQuery.toLowerCase().replace(/[^\w\s]/g, ' ').replace(/\s+/g, ' ').trim();

  const externalCities = [
    'indore', 'mumbai', 'delhi', 'pune', 'chennai', 'kolkata', 'hyderabad', 
    'ahmedabad', 'jaipur', 'lucknow', 'chandigarh', 'kochi', 'surat', 'bhopal'
  ];

  const foundExternal = externalCities.find((c) => cleanQuery.includes(c));
  if (foundExternal) {
    const formattedCity = foundExternal.charAt(0).toUpperCase() + foundExternal.slice(1);
    return {
      isCovered: false,
      locationName: formattedCity,
      text: `Health Express is currently available in select areas of Bengaluru. **${formattedCity}** is not currently covered. I can help you join the waitlist so you can be notified when we expand.\n\nLet me connect you to your Health Manager.`
    };
  }

  const matchedLocality = HEX_SPECIFICATION.geographyPilot.approvedLocalities.find(
    (loc) => cleanQuery.includes(loc.toLowerCase())
  );

  if (matchedLocality || cleanQuery.includes('bengaluru') || cleanQuery.includes('bangalore')) {
    const area = matchedLocality || 'Bengaluru';
    return {
      isCovered: true,
      locationName: area,
      text: `📍 **Pilot Coverage Confirmed**: Health Express provides services in **${area}**, Bengaluru! (${HEX_SPECIFICATION.geographyPilot.homeNursingCoverageNote})`
    };
  }

  return {
    isCovered: null,
    locationName: null,
    text: `📍 **Geography & Pilot Coverage**: Health Express is actively piloting in **Bengaluru** across major hubs including:\n• ${HEX_SPECIFICATION.geographyPilot.approvedLocalities.slice(0, 10).join('\n• ')}`
  };
}

/**
 * Main HEX Engine decision pipeline
 */
export function processUserMessage(rawQuery, currentPath = '/', userContext = {}) {
  const cleanQuery = rawQuery.toLowerCase().replace(/[^\w\s]/g, ' ').replace(/\s+/g, ' ').trim();
  const ESCALATION = "Let me connect you to your Health Manager.";

  // ----------------------------------------------------
  // 1. EMERGENCY MEDICAL SAFETY CHECK (Rule 11)
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
      intent: 'EMERGENCY_RESPONSE',
      text: "🚨 **Immediate Medical Notice**: If you or someone around you is experiencing a medical emergency, chest pain, or severe breathing distress, please call emergency services (108 / 112) or reach the nearest hospital immediately.\n\nHealth Express is a service coordination manager and not an emergency triage service.",
      quickReplies: [
        { label: "Connect with Health Manager", action: "whatsapp_general" }
      ],
      whatsappMsg: DEFAULT_MESSAGES.general
    };
  }

  // ----------------------------------------------------
  // 2. MEDICAL ADVICE & CLINICAL DIAGNOSIS BOUNDARY (Rule 11)
  // ----------------------------------------------------
  if (
    cleanQuery.includes('diagnose') || 
    cleanQuery.includes('symptom') || 
    cleanQuery.includes('medicine for') || 
    cleanQuery.includes('cure') || 
    cleanQuery.includes('treatment for') || 
    cleanQuery.includes('dosage') || 
    cleanQuery.includes('prescribe') ||
    cleanQuery.includes('dawa') ||
    cleanQuery.includes('report result mean')
  ) {
    return {
      intent: 'MEDICAL_ADVICE_REQUEST',
      text: HEX_SPECIFICATION.exampleResponses.medicalAdvice,
      quickReplies: [
        { label: "Connect to Health Manager", action: "whatsapp_general" },
        { label: "Upload Prescription", action: "open_upload_modal" }
      ],
      whatsappMsg: "Namaste Health Express! I need medical coordination assistance for my healthcare requirement."
    };
  }

  // ----------------------------------------------------
  // 3. HUMAN HANDOFF & CALLBACK REQUESTS (Rule 13)
  // ----------------------------------------------------
  if (
    cleanQuery.includes('call me') || 
    cleanQuery.includes('callback') || 
    cleanQuery.includes('phone call') || 
    cleanQuery.includes('call back')
  ) {
    return {
      intent: 'CALLBACK_REQUEST',
      text: HEX_SPECIFICATION.exampleResponses.callback,
      quickReplies: [
        { label: "Connect on WhatsApp", action: "whatsapp_general" }
      ],
      whatsappMsg: "Namaste Health Express! I am requesting a callback from the Health Manager team."
    };
  }

  if (
    cleanQuery.includes('talk to human') || 
    cleanQuery.includes('connect to agent') || 
    cleanQuery.includes('speak to manager') || 
    cleanQuery.includes('customer care') || 
    cleanQuery.includes('human support')
  ) {
    return {
      intent: 'HUMAN_REQUEST',
      text: HEX_SPECIFICATION.exampleResponses.humanRequest,
      quickReplies: [
        { label: "Chat with Health Manager", action: "whatsapp_general" }
      ],
      whatsappMsg: "Namaste Health Express! I would like to speak directly with my Health Manager."
    };
  }

  // ----------------------------------------------------
  // 4. OPERATIONAL ACTIONS: BOOKING / PAYMENT / CANCEL (Rule 12)
  // ----------------------------------------------------
  if (
    cleanQuery.includes('book service') || 
    cleanQuery.includes('book appointment') || 
    cleanQuery.includes('schedule test') || 
    cleanQuery.includes('pay now') || 
    cleanQuery.includes('cancel order') || 
    cleanQuery.includes('reschedule')
  ) {
    return {
      intent: 'BOOKING_PAYMENT_CANCEL',
      text: `HEX is an informational and navigation assistant. I do not directly execute bookings, payments, or operational cancellations.\n\n${ESCALATION}`,
      quickReplies: [
        { label: "Connect to Health Manager", action: "whatsapp_general" }
      ],
      whatsappMsg: `Namaste Health Express! I would like assistance with: ${rawQuery}`
    };
  }

  // ----------------------------------------------------
  // 5. PRESCRIPTION / MEDICAL ORDER (Rule 14)
  // ----------------------------------------------------
  if (
    cleanQuery.includes('prescription') || 
    cleanQuery.includes('rx') || 
    cleanQuery.includes('doctor note') || 
    cleanQuery.includes('upload order')
  ) {
    return {
      intent: 'PRESCRIPTION_UPLOAD',
      text: HEX_SPECIFICATION.exampleResponses.prescription,
      quickReplies: [
        { label: "📄 Upload Prescription File", action: "open_upload_modal" },
        { label: "💬 Send via WhatsApp", action: "whatsapp_prescription" }
      ],
      whatsappMsg: DEFAULT_MESSAGES.prescription
    };
  }

  // ----------------------------------------------------
  // 6. PROVIDER NEUTRALITY CHECK (Rule 10)
  // ----------------------------------------------------
  if (
    cleanQuery.includes('best doctor') || 
    cleanQuery.includes('best hospital') || 
    cleanQuery.includes('top provider') || 
    cleanQuery.includes('best lab') || 
    cleanQuery.includes('recommend provider')
  ) {
    return {
      intent: 'PROVIDER_RECOMMENDATION_REQUEST',
      text: `Health Express presents factual information regarding partner laboratories, imaging centers, and accredited nursing staff. We do not rank or recommend specific providers so you can make an informed choice.\n\n${ESCALATION}`,
      quickReplies: [
        { label: "Explore Diagnostic Partners", action: "nav_services" },
        { label: "Connect to Health Manager", action: "whatsapp_general" }
      ],
      whatsappMsg: "Namaste Health Express! I would like details about your accredited provider options."
    };
  }

  // ----------------------------------------------------
  // 7. COMING SOON SERVICES CHECK (Rule 6)
  // ----------------------------------------------------
  const comingSoonMatch = HEX_SPECIFICATION.comingSoonServices.find(
    (cs) => cleanQuery.includes(cs.id) || cleanQuery.includes(cs.name.toLowerCase())
  );
  if (comingSoonMatch || cleanQuery.includes('telemedicine') || cleanQuery.includes('pharmacy') || cleanQuery.includes('wellness') || cleanQuery.includes('chronic')) {
    return {
      intent: 'COMING_SOON',
      text: `${HEX_SPECIFICATION.exampleResponses.comingSoon}\n\n${comingSoonMatch ? comingSoonMatch.name + ': ' + comingSoonMatch.description : 'Telemedicine, Pharmacy, and Wellness features are scheduled for our upcoming release.'}`,
      quickReplies: [
        { label: "View Active Live Services", action: "nav_services" },
        { label: "Talk to Health Manager", action: "whatsapp_general" }
      ],
      whatsappMsg: "Namaste Health Express! Please inform me when your upcoming services launch."
    };
  }

  // ----------------------------------------------------
  // 8. HOME NURSING & CARE TAXONOMY QUERY (Section 5)
  // ----------------------------------------------------
  if (
    cleanQuery.includes('nursing') || 
    cleanQuery.includes('caregiver') || 
    cleanQuery.includes('japa') || 
    cleanQuery.includes('elderly care') || 
    cleanQuery.includes('post op') || 
    cleanQuery.includes('dementia') ||
    cleanQuery.includes('respite')
  ) {
    return {
      intent: 'HOME_NURSING_TAXONOMY',
      text: `🏡 **Home Nursing & Care Services (LIVE)**\n\nHealth Express provides broader home care coverage across Bengaluru:\n• **Nursing & Clinical**: Home Nursing Care, Post-Operative Care, Recovery Care\n• **Everyday & Family**: Elderly Care, Patient Caregivers, Respite Care\n• **Mother & Baby**: Japa Caregivers, Postpartum & Newborn Support\n• **Specialized Care**: Dementia Care, Companion Care, Disability Care\n\n💰 **Pricing Rule**: Home Nursing requires a personalized quotation based on clinical scope.\n\n${ESCALATION}`,
      quickReplies: [
        { label: "Request Home Care Quotation", action: "whatsapp_service_nursing" }
      ],
      whatsappMsg: "Namaste Health Express! I am interested in Home Healthcare & Nursing in Bengaluru. Please provide a quotation."
    };
  }

  // ----------------------------------------------------
  // 9. SERVICE & PRICING QUERY (Rules 4, 8, 9)
  // ----------------------------------------------------
  const matchedServices = searchCatalogServices(rawQuery);

  if (matchedServices.length > 0) {
    const primary = matchedServices[0];
    let replyText = `🧪 **${primary.name}**\n${primary.shortDesc || primary.description}`;

    if (primary.price_type === 'QUOTE_REQUIRED' || !primary.discount_price) {
      replyText += `\n\n💰 **Pricing**: A personalized quotation is required for this service.\n\n${ESCALATION}`;
    } else if (primary.price) {
      replyText += `\n\n💰 **Listed MRP**: ₹${primary.price}`;
      if (primary.discount_price && primary.discount_price < primary.price) {
        replyText += ` (Offer Price: ₹${primary.discount_price})`;
      }
    } else if (primary.discount_price) {
      replyText += `\n\n💰 **Price**: The price starts from ₹${primary.discount_price}`;
    } else {
      replyText += `\n\n💰 ${HEX_SPECIFICATION.exampleResponses.unlistedPrice}`;
    }

    if (primary.turnaround_time) replyText += `\n⏱️ **TAT**: ${primary.turnaround_time}`;
    if (primary.fasting_required !== undefined) replyText += `\n🥣 **Preparation**: ${primary.fasting_required ? '10-12 Hrs Fasting Required' : 'No Fasting Required'}`;

    return {
      intent: 'SERVICE_PRICE_QUERY',
      text: replyText,
      quickReplies: [
        { label: `Enquire ${primary.name.split(' ')[0]}`, action: `whatsapp_test_${primary.id}` },
        { label: "Talk to Health Manager", action: "whatsapp_general" }
      ],
      whatsappMsg: `Namaste Health Express! I am inquiring about ${primary.name}. Please assist.`
    };
  }

  // ----------------------------------------------------
  // 10. GEOGRAPHY & COVERAGE QUERY (Rule 7)
  // ----------------------------------------------------
  if (
    cleanQuery.includes('area') || 
    cleanQuery.includes('location') || 
    cleanQuery.includes('city') || 
    cleanQuery.includes('coverage') || 
    cleanQuery.includes('where do you') || 
    cleanQuery.includes('bengaluru') || 
    cleanQuery.includes('bangalore') ||
    HEX_SPECIFICATION.geographyPilot.approvedLocalities.some((loc) => cleanQuery.includes(loc.toLowerCase()))
  ) {
    const geoResult = evaluateGeographyCoverage(rawQuery);
    return {
      intent: 'COVERAGE_QUERY',
      text: geoResult.text,
      quickReplies: [
        { label: "Check Availability on WhatsApp", action: "whatsapp_locality" }
      ],
      whatsappMsg: `Namaste Health Express! Is service available in my area: "${rawQuery}"?`
    };
  }

  // ----------------------------------------------------
  // 11. GENERAL GREETINGS & INTRO
  // ----------------------------------------------------
  const greetings = ['hi', 'hello', 'hey', 'greetings', 'namaste', 'hi hex', 'hello hex'];
  if (greetings.includes(cleanQuery)) {
    return {
      intent: 'GREETING',
      text: `${HEX_SPECIFICATION.agentIdentity.greeting}\n\nI am **HEX**, your Health Express Care Assistant. I can explain diagnostic tests, home nursing care, pilot coverage in Bengaluru, or connect you with your Health Manager.`,
      quickReplies: [
        { label: "🧪 Lab Diagnostics", action: "nav_services" },
        { label: "🏡 Home Nursing Care", action: "whatsapp_service_nursing" },
        { label: "📄 Upload Prescription", action: "open_upload_modal" },
        { label: "📍 Bengaluru Coverage", action: "whatsapp_locality" }
      ],
      whatsappMsg: DEFAULT_MESSAGES.general
    };
  }

  // ----------------------------------------------------
  // 12. GOLDEN RULE FALLBACK (Rule 25)
  // ----------------------------------------------------
  return {
    intent: 'MISSING_INFORMATION_HANDOFF',
    text: HEX_SPECIFICATION.exampleResponses.unknownInformation,
    quickReplies: [
      { label: "Connect to Health Manager", action: "whatsapp_general" },
      { label: "Send Prescription", action: "whatsapp_prescription" }
    ],
    whatsappMsg: `Namaste Health Express! I have a question regarding: "${rawQuery}". Please assist me.`
  };
}

export async function processUserMessageAsync(rawQuery, currentPath = '/', userContext = {}) {
  return processUserMessage(rawQuery, currentPath, userContext);
}
