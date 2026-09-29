import { HEX_SPECIFICATION, CHATBOT_KNOWLEDGE } from '../data/chatbotKnowledge.js';
import { ALL_SERVICES } from '../data/services.js';
import { processUserMessage } from './chatbotEngine.js';

/**
 * HEALTH EXPRESS — GEMINI AI INTEGRATION SERVICE (V1.0)
 * Hybrid RAG Architecture:
 * 1. Retrieves verified website database facts from ALL_SERVICES & HEX_SPECIFICATION
 * 2. Passes facts & Developer Specification System Instruction to Gemini 2.5 Flash
 * 3. Fallback to Local Deterministic Engine on network/rate-limit error
 */

const GEMINI_API_KEY = import.meta.env.VITE_GEMINI_API_KEY || '';
const GEMINI_MODEL = 'gemini-2.5-flash';

const SYSTEM_INSTRUCTION = `
You are HEX, Health Express's AI care manager: a warm, family-health-manager-style information and navigation assistant.
Health Express is currently piloting in Bengaluru.

NON-NEGOTIABLE OPERATING RULES (DEVELOPER SPECIFICATION V1.0):
1. SOURCE OF TRUTH: Only answer using provided Health Express website/catalog data.
2. NO INVENTION: Never guess, infer, extrapolate or fill missing data. If information is unlisted, say: "I don't have that information available right now. Let me connect you to your Health Manager."
3. NO MEDICAL ADVICE: Never diagnose, interpret symptoms/results, or recommend medicines. Say: "I can help with Health Express services and coordination, but I can't provide medical advice. Let me connect you to your Health Manager."
4. INFORMATIONAL ONLY: You explain and guide. You DO NOT execute bookings, payments, cancellations, or rescheduling. For operational actions, use the escalation phrase: "Let me connect you to your Health Manager."
5. PROVIDER NEUTRALITY: Present factual provider attributes only. NEVER rank or recommend a provider.
6. PRICING RULES: Display MRPs only when explicitly provided in catalog. Use "The price starts from ₹X" only when starting price is explicit. For Home Nursing and Surgery, state that a quotation is required.
7. OUT-OF-AREA: If outside Bengaluru, explain pilot coverage and offer waitlist.
8. PERSONA & TONE: Warm, calm, professional, concise, and clear.
`;

export async function askGeminiAssistant(rawQuery, conversationHistory = [], userContext = {}) {
  // If no API key available, use Local Engine immediately
  if (!GEMINI_API_KEY) {
    return processUserMessage(rawQuery, '/', userContext);
  }

  // Pre-process with local engine for instant guardrail verification & RAG retrieval
  const localResult = processUserMessage(rawQuery, '/', userContext);

  // If local engine hit strict safety boundaries (Emergency, Medical Advice, Operational Actions), return local result directly for 100% safety
  if (
    localResult.intent === 'EMERGENCY_RESPONSE' ||
    localResult.intent === 'MEDICAL_ADVICE_REQUEST' ||
    localResult.intent === 'BOOKING_PAYMENT_CANCEL' ||
    localResult.intent === 'CALLBACK_REQUEST' ||
    localResult.intent === 'HUMAN_REQUEST'
  ) {
    return localResult;
  }

  try {
    const url = `https://generativelanguage.googleapis.com/v1beta/models/${GEMINI_MODEL}:generateContent?key=${GEMINI_API_KEY}`;
    
    // Construct RAG Context from catalog & local result
    const catalogContext = ALL_SERVICES.map(s => `[Service: ${s.name} | Category: ${s.category_id} | MRP: ₹${s.price || 'N/A'} | Price: ₹${s.discount_price || 'N/A'} | Prep: ${s.preparation || 'N/A'}]`).join('\n');
    const pilotContext = `Pilot City: Bengaluru | Coverage: ${HEX_SPECIFICATION.geographyPilot.approvedLocalities.join(', ')}`;

    const promptText = `
Website Knowledge Database Context:
${catalogContext}

Pilot Coverage Context:
${pilotContext}

Verified Local Retrieval Data for User Inquiry:
"${localResult.text}"

User Question: "${rawQuery}"

Please formulate a warm, clear, concise response adhering strictly to your HEX Persona and System Rules. Include escalation phrase "Let me connect you to your Health Manager." if information is missing or human action is required.
`;

    const res = await fetch(url, {
      method: 'POST',
      headers: { 'Content-Type': 'application/json' },
      body: JSON.stringify({
        systemInstruction: {
          parts: [{ text: SYSTEM_INSTRUCTION }]
        },
        contents: [{ parts: [{ text: promptText }] }],
        generationConfig: {
          temperature: 0.3,
          maxOutputTokens: 300
        }
      })
    });

    const data = await res.json();
    const candidateText = data.candidates?.[0]?.content?.parts?.[0]?.text;

    if (candidateText && candidateText.trim()) {
      return {
        intent: 'GEMINI_AI_SYNTHESIS',
        text: candidateText.trim(),
        quickReplies: localResult.quickReplies,
        whatsappMsg: localResult.whatsappMsg
      };
    }
  } catch (err) {
    console.warn('Gemini API call exception, using local engine fallback:', err);
  }

  // Fallback to verified local decision engine if Gemini fails or is offline
  return localResult;
}
