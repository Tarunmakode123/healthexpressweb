/**
 * Indian Mobile Phone Number Normalization Utility
 * Normalizes input phone numbers to E.164 format (+91XXXXXXXXXX)
 * Validates Indian mobile numbers starting with 6, 7, 8, 9.
 */

export function validateAndNormalizeIndianPhone(input) {
  if (!input || typeof input !== 'string') {
    return { isValid: false, phone_e164: '', error: 'Mobile number is required.' };
  }

  // Remove non-digit characters except leading plus
  let cleaned = input.trim();
  
  // If starts with +91, strip it to analyze raw 10 digits
  if (cleaned.startsWith('+91')) {
    cleaned = cleaned.slice(3);
  } else if (cleaned.startsWith('91') && cleaned.length === 12) {
    cleaned = cleaned.slice(2);
  } else if (cleaned.startsWith('0') && cleaned.length === 11) {
    cleaned = cleaned.slice(1);
  }

  // Keep only numeric digits
  const digits = cleaned.replace(/\D/g, '');

  if (digits.length !== 10) {
    return { 
      isValid: false, 
      phone_e164: '', 
      error: 'Please enter a valid 10-digit Indian mobile number.' 
    };
  }

  // Indian mobile numbers must start with 6, 7, 8, or 9
  const firstDigit = digits.charAt(0);
  if (!['6', '7', '8', '9'].includes(firstDigit)) {
    return { 
      isValid: false, 
      phone_e164: '', 
      error: 'Indian mobile numbers must start with 6, 7, 8, or 9.' 
    };
  }

  return {
    isValid: true,
    phone_e164: `+91${digits}`,
    rawDigits: digits,
    error: null
  };
}
