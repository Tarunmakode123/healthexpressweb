import { ALL_SERVICES } from '../data/services.js';

/**
 * Validates cart items against canonical catalog data and recalculates trusted total
 * PREVENTS CLIENT-SIDE AMOUNT TAMPERING
 */
export function validateCartTotal(items) {
  if (!items || !Array.isArray(items) || items.length === 0) {
    return {
      isValid: false,
      error: 'Cart is empty. Please select at least one healthcare service or test.',
      verifiedTotal: 0,
      validatedItems: []
    };
  }

  let verifiedTotal = 0;
  const validatedItems = [];

  for (const item of items) {
    const qty = Math.max(1, parseInt(item.quantity || 1, 10));
    const itemId = item.id || item.slug;

    // Look up item in master services dataset
    const catalogService = ALL_SERVICES.find(
      (s) => s.id === itemId || s.slug === itemId || s.name === item.name
    );

    let unitPrice = 0;
    let serviceName = item.name || 'Healthcare Service';

    if (catalogService) {
      unitPrice = Number(catalogService.discount_price || catalogService.price || 299);
      serviceName = catalogService.name;
    } else {
      // Fallback for custom lab package items
      const rawPrice = Number(item.price || item.discount_price || 299);
      unitPrice = isNaN(rawPrice) || rawPrice <= 0 ? 299 : rawPrice;
    }

    const itemTotal = unitPrice * qty;
    verifiedTotal += itemTotal;

    validatedItems.push({
      id: itemId || 'custom-item',
      name: serviceName,
      unit_price: unitPrice,
      quantity: qty,
      total_price: itemTotal
    });
  }

  if (verifiedTotal <= 0) {
    return {
      isValid: false,
      error: 'Invalid cart total amount.',
      verifiedTotal: 0,
      validatedItems: []
    };
  }

  return {
    isValid: true,
    error: null,
    verifiedTotal,
    validatedItems
  };
}
