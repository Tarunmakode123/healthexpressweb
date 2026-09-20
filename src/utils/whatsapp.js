/**
 * Health Express WhatsApp & Call Integration Utility
 * Configurable centrally via environment variables.
 */

export const WHATSAPP_NUMBER = import.meta.env.VITE_HEALTH_EXPRESS_WHATSAPP_NUMBER ||
  import.meta.env.VITE_HEALTHeXpress_WHATSAPP_NUMBER || 
  import.meta.env.VITE_WHATSAPP_NUMBER || 
  "918123414120"; // Centralized contact number: +91 81234 14120

export const PHONE_NUMBER_DISPLAY = "+91 81234 14120";

export const DEFAULT_MESSAGES = {
  general: "Hello Health Express, I would like help with a prescription / healthcare service.",
  prescription: "Hello Health Express, I would like to send a prescription and get assistance.",
  cbc: "Hello Health Express, I am interested in the CBC Test. Please help me with availability and details.",
  telemedicine: "Hello Health Express, I am interested in telemedicine. Please help me with the available doctors and consultation options.",
  radiology: "Hello Health Express, I am interested in radiology services. Please help me with the available services.",
  homeHealthcare: "Hello Health Express, I am interested in home healthcare services. Please help me with the available options.",
  preventive: "Hello Health Express, I am interested in exploring preventive health checkups and packages.",
  service: (serviceName) => `Hello Health Express, I am interested in ${serviceName}. Please help me with the available options and details.`,
  test: (testName) => `Hello Health Express, I am interested in the ${testName}. Please help me with availability and details.`,
  city: (cityName) => `Hello Health Express, I am looking for healthcare services available in ${cityName}.`,
  provider: "Hello Health Express, I am a healthcare / diagnostic provider interested in partnering with Health Express."
};

/**
 * Open WhatsApp with a contextual prefilled message
 * @param {string} message - Text message to prefill
 */
export const openWhatsApp = (message = DEFAULT_MESSAGES.general) => {
  const cleanNumber = WHATSAPP_NUMBER.replace(/[^0-9]/g, '');
  const encodedMsg = encodeURIComponent(message);
  const whatsappUrl = `https://wa.me/${cleanNumber}?text=${encodedMsg}`;
  
  window.open(whatsappUrl, '_blank', 'noopener,noreferrer');
};

/**
 * Trigger native phone call action
 */
export const triggerPhoneCall = () => {
  const cleanNumber = WHATSAPP_NUMBER.replace(/[^0-9]/g, '');
  window.location.href = `tel:+${cleanNumber}`;
};
