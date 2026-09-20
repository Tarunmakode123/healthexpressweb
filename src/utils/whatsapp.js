/**
 * Health Express WhatsApp Integration Utility
 * Configurable via environment variables.
 */

export const WHATSAPP_NUMBER = import.meta.env.VITE_HEALTH_EXPRESS_WHATSAPP_NUMBER ||
  import.meta.env.VITE_HEALTHeXpress_WHATSAPP_NUMBER || 
  import.meta.env.VITE_WHATSAPP_NUMBER || 
  "918123414120"; // Dedicated WhatsApp number: +91 81234 14120

export const DEFAULT_MESSAGES = {
  general: "Hello Health Express, I would like help with a prescription / healthcare service.",
  prescription: "Hello Health Express, I would like to upload/send my prescription / medical requirement. Please coordinate my service.",
  preventive: "Hello Health Express, I am interested in exploring preventive health checkups and packages.",
  service: (serviceName) => `Hello Health Express, I would like to inquire about ${serviceName}.`,
  test: (testName) => `Hello Health Express, I would like to book or inquire about the ${testName}.`,
  city: (cityName) => `Hello Health Express, I am looking for healthcare services available in ${cityName}.`,
  provider: "Hello Health Express, I am a healthcare / diagnostic provider interested in partnering with Health Express."
};

/**
 * Open WhatsApp with a prefilled message
 * @param {string} message - Text message to prefill
 */
export const openWhatsApp = (message = DEFAULT_MESSAGES.general) => {
  const cleanNumber = WHATSAPP_NUMBER.replace(/[^0-9]/g, '');
  const encodedMsg = encodeURIComponent(message);
  const whatsappUrl = `https://wa.me/${cleanNumber}?text=${encodedMsg}`;
  
  // Open in new tab/window or native WhatsApp app on mobile
  window.open(whatsappUrl, '_blank', 'noopener,noreferrer');
};
