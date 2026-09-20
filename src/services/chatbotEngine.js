import { CHATBOT_KNOWLEDGE } from '../data/chatbotKnowledge';
import { DEFAULT_MESSAGES } from '../utils/whatsapp';

/**
 * Health Express AI Conversational & Intent Processing Engine
 * Handles natural language matching (English & Hinglish), medical safety rules,
 * page context awareness, and contextual WhatsApp message generation.
 * Aligned strictly with verified codebase content & soft-launch WhatsApp workflow.
 */

export function processUserMessage(rawQuery, currentPath = '/', conversationHistory = []) {
  const query = rawQuery.toLowerCase().trim();

  // 1. EMERGENCY MEDICAL DISCLAIMER CHECK
  if (
    query.includes('emergency') || 
    query.includes('heart attack') || 
    query.includes('chest pain') || 
    query.includes('stroke') || 
    query.includes('unconscious') || 
    query.includes('severe bleeding')
  ) {
    return {
      text: "🚨 **Immediate Medical Notice**: If you or someone around you is experiencing a medical emergency, chest pain, or severe breathing distress, please call emergency services (108 / 112) or reach the nearest hospital immediately.\n\nHealth Express is a service coordination manager and not an emergency triage service.",
      quickReplies: [
        { label: "Talk to Health Express Team", action: "whatsapp_general" }
      ],
      whatsappMsg: DEFAULT_MESSAGES.general
    };
  }

  // 2. MEDICAL ADVICE & DIAGNOSIS GUARD
  if (
    query.includes('prescribe me') || 
    query.includes('what medicine for') || 
    query.includes('diagnose my') || 
    query.includes('cure for') || 
    query.includes('medicine suggestion') ||
    query.includes('dawa batao')
  ) {
    return {
      text: "⚠️ **Medical Advice Notice**: I am the Health Express Service Assistant. I cannot diagnose symptoms or prescribe medications.\n\nFor medical advice or treatment, we recommend consulting a qualified doctor. However, if you already have a prescription or need diagnostic blood tests, Health Express can coordinate your care.",
      quickReplies: [
        { label: "Send Prescription on WhatsApp", action: "whatsapp_prescription" },
        { label: "Explore Diagnostic Services", action: "explore_tests" }
      ],
      whatsappMsg: DEFAULT_MESSAGES.prescription
    };
  }

  // 3. PRESCRIPTION INTENTS (Hinglish & English)
  if (
    query.includes('prescription') || 
    query.includes('upload') || 
    query.includes('bhejni') || 
    query.includes('doctor note') || 
    query.includes('slip')
  ) {
    return {
      text: "📄 **Prescription Coordination**: You can easily send your prescription or medical order directly to Health Express on WhatsApp.\n\nOur care coordinator will review your requirement, match accredited labs in Bengaluru, and share test timings and home sample collection options.",
      quickReplies: [
        { label: "Send Prescription on WhatsApp", action: "whatsapp_prescription" },
        { label: "Upload Prescription File", action: "open_upload_modal" }
      ],
      whatsappMsg: "Namaste Health Express! I would like to send my prescription for healthcare service coordination."
    };
  }

  // 4. LAB TESTS & DIAGNOSTICS (CBC, Thyroid, HbA1c, Vitamin D, Lipid, Blood Test)
  if (
    query.includes('cbc') || 
    query.includes('blood count') ||
    query.includes('thyroid') || 
    query.includes('vitamin d') || 
    query.includes('hba1c') || 
    query.includes('sugar test') || 
    query.includes('lipid') || 
    query.includes('cholesterol') || 
    query.includes('full body') || 
    query.includes('blood test') ||
    query.includes('karwana hai') ||
    query.includes('test price') ||
    query.includes('fasting')
  ) {
    // Check for specific test match
    let matchedTest = CHATBOT_KNOWLEDGE.popularTests.find(t => 
      query.includes(t.id) || query.includes(t.title.toLowerCase().split(' ')[0])
    );

    if (matchedTest) {
      return {
        text: `🧪 **${matchedTest.title}**\n\n${matchedTest.desc}\n\nOur care coordinators will provide exact lab partner options, package details, and arrange home sample collection in Bengaluru via WhatsApp.`,
        quickReplies: [
          { label: `Inquire ${matchedTest.title.split(' ')[0]} Test`, action: `whatsapp_test_${matchedTest.id}` },
          { label: "Send Prescription", action: "whatsapp_prescription" },
          { label: "Explore Services Directory", action: "nav_services" }
        ],
        whatsappMsg: `Namaste Health Express! I am interested in ${matchedTest.title}. Please share available lab options and home collection slots.`
      };
    }

    return {
      text: "🧪 **Diagnostics & Home Sample Collection**: Health Express coordinates blood tests, complete profiles, and routine pathology through NABL-accredited labs in Bengaluru.\n\nWhich test or service are you interested in?",
      quickReplies: [
        { label: "CBC Test", action: "test_cbc" },
        { label: "Thyroid Profile", action: "test_thyroid" },
        { label: "Vitamin D Test", action: "test_vitamin-d" },
        { label: "HbA1c Test", action: "test_hba1c" },
        { label: "Send Prescription", action: "whatsapp_prescription" }
      ],
      whatsappMsg: "Namaste Health Express! I am interested in diagnostic blood testing. Please share available options."
    };
  }

  // 5. HOME HEALTHCARE NURSING INTENTS
  if (
    query.includes('home nursing') || 
    query.includes('home healthcare') || 
    query.includes('caregiver') || 
    query.includes('nurse at home') || 
    query.includes('ghar pe test') || 
    query.includes('home care')
  ) {
    return {
      text: "🏡 **Home Healthcare Nursing**: Health Express provides certified healthcare nursing and medical support in the comfort of your home in Bengaluru.\n\nServices include post-surgical recovery, wound dressing, IV therapy, elderly care, and vital monitoring.",
      quickReplies: [
        { label: "Inquire Home Nursing on WhatsApp", action: "whatsapp_service_nursing" },
        { label: "View Services Directory", action: "nav_services" }
      ],
      whatsappMsg: "Namaste Health Express! I am interested in Home Healthcare Nursing services in Bengaluru. Please share details."
    };
  }

  // 6. BENGALURU LOCALITY / AVAILABILITY INTENTS
  if (
    query.includes('bengaluru') || 
    query.includes('bangalore') || 
    query.includes('koramangala') || 
    query.includes('indiranagar') || 
    query.includes('hsr') || 
    query.includes('whitefield') || 
    query.includes('city') || 
    query.includes('location') ||
    query.includes('available in')
  ) {
    return {
      text: `📍 **Service Availability**: Health Express is currently operating in **Bengaluru** across major hubs including:\n• ${CHATBOT_KNOWLEDGE.localities.join('\n• ')}\n\nHome sample collection & home nursing are active in these areas.`,
      quickReplies: [
        { label: "Check Locality Coverage", action: "whatsapp_locality" },
        { label: "Explore Services", action: "nav_services" }
      ],
      whatsappMsg: "Namaste Health Express! I am looking for healthcare service availability in Bengaluru."
    };
  }

  // 7. FUTURE PLATFORM FEATURE INQUIRIES (Tracking, Online Payment, Live Cart)
  if (
    query.includes('track') || 
    query.includes('payment') || 
    query.includes('pay online') || 
    query.includes('cart') || 
    query.includes('order status')
  ) {
    return {
      text: "⚡ **Soft-Launch Notice**: Online payment gateways and real-time live order tracking belong to the upcoming Health Express digital platform phase.\n\nDuring our current soft launch, our dedicated care managers handle order coordination and status updates directly via WhatsApp for maximum personal care!",
      quickReplies: [
        { label: "Chat with Care Manager", action: "whatsapp_general" },
        { label: "Send Prescription", action: "whatsapp_prescription" }
      ],
      whatsappMsg: "Namaste Health Express! I would like to check the status of my healthcare request."
    };
  }

  // 8. CONTACT & PHONE NUMBER INTENTS
  if (
    query.includes('contact') || 
    query.includes('phone') || 
    query.includes('number') || 
    query.includes('call') || 
    query.includes('whatsapp')
  ) {
    return {
      text: `📞 **Contact Health Express**:\n\n• **WhatsApp Support**: ${CHATBOT_KNOWLEDGE.company.whatsappNumber}\n• **Email**: ${CHATBOT_KNOWLEDGE.company.email}\n• **Operating Hub**: Bengaluru, India\n\nClick below to connect immediately on WhatsApp.`,
      quickReplies: [
        { label: "Connect on WhatsApp", action: "whatsapp_general" },
        { label: "Email Provider Team", action: "email_us" }
      ],
      whatsappMsg: DEFAULT_MESSAGES.general
    };
  }

  // 9. DEFAULT / FALLBACK RESPONSE WITH HELPFUL CHIPS
  return {
    text: "I'm here to help you navigate Health Express services! You can ask me about blood tests (CBC, Thyroid, Vitamin D), home nursing, preventive packages, or Bengaluru service coverage.",
    quickReplies: [
      { label: "Send Prescription", action: "whatsapp_prescription" },
      { label: "Find a Test", action: "explore_tests" },
      { label: "Home Healthcare", action: "whatsapp_service_nursing" },
      { label: "Talk on WhatsApp", action: "whatsapp_general" }
    ],
    whatsappMsg: DEFAULT_MESSAGES.general
  };
}
