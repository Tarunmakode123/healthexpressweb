import React, { createContext, useContext, useState, useEffect } from 'react';
import { validatePromoCode, fetchActivePromotions, calculateDiscountAmount } from '../services/promoService.js';

const CartContext = createContext();

export function CartProvider({ children }) {
  const [cartItems, setCartItems] = useState(() => {
    try {
      const saved = localStorage.getItem('healthExpressCart');
      return saved ? JSON.parse(saved) : [];
    } catch (e) {
      console.warn('Failed to load cart from localStorage:', e);
      return [];
    }
  });

  const [isCartOpen, setIsCartOpen] = useState(false);
  const [lastAddedItem, setLastAddedItem] = useState(null);

  // PROMO CODE STATES
  const [appliedPromo, setAppliedPromo] = useState(null);
  const [promoDiscount, setPromoDiscount] = useState(0);
  const [promoLoading, setPromoLoading] = useState(false);
  const [promoError, setPromoError] = useState(null);
  const [availablePromos, setAvailablePromos] = useState([]);

  useEffect(() => {
    try {
      localStorage.setItem('healthExpressCart', JSON.stringify(cartItems));
    } catch (e) {
      console.warn('Failed to save cart to localStorage:', e);
    }
  }, [cartItems]);

  // Load active promotions from database/service for "Available Offers" drawer component
  useEffect(() => {
    fetchActivePromotions().then((res) => {
      if (res.success && res.promotions) {
        setAvailablePromos(res.promotions);
      }
    }).catch(() => {});
  }, []);

  // Compute Subtotals
  const itemCount = cartItems.reduce((acc, item) => acc + item.quantity, 0);
  const subtotal = cartItems.reduce((acc, item) => acc + item.price * item.quantity, 0);
  const originalSubtotal = cartItems.reduce((acc, item) => acc + (item.originalPrice || item.price * 1.3) * item.quantity, 0);
  const totalSavings = Math.max(0, originalSubtotal - subtotal);

  // Re-calculate promo discount whenever subtotal changes
  useEffect(() => {
    if (appliedPromo) {
      if (subtotal <= 0) {
        setAppliedPromo(null);
        setPromoDiscount(0);
        setPromoError(null);
      } else {
        const updatedDiscount = calculateDiscountAmount(subtotal, appliedPromo);
        if (appliedPromo.min_order_amount && subtotal < appliedPromo.min_order_amount) {
          const needed = appliedPromo.min_order_amount - subtotal;
          setPromoError(`Add ₹${needed} more to keep using ${appliedPromo.code}.`);
          setPromoDiscount(0);
        } else {
          setPromoDiscount(updatedDiscount);
          setPromoError(null);
        }
      }
    } else {
      setPromoDiscount(0);
    }
  }, [subtotal, appliedPromo]);

  const addToCart = (service) => {
    if (!service) return;

    const serviceId = service.id || service.slug || service.name;
    const name = service.name || service.title || 'Healthcare Service';
    const price = Number(service.discount_price || service.price || service.discountPrice || 299);
    const originalPrice = Number(service.price || service.originalPrice || price * 1.3);
    const category = service.category_name || service.category || 'Diagnostic Service';
    const itemType = service.item_type || 'diagnostic_service';
    const turnaround = service.turnaround_time || service.turnaround || '6-8 Hours';

    setCartItems((prevItems) => {
      const existingIndex = prevItems.findIndex((item) => item.id === serviceId);
      if (existingIndex > -1) {
        const updated = [...prevItems];
        updated[existingIndex] = {
          ...updated[existingIndex],
          quantity: updated[existingIndex].quantity + 1
        };
        return updated;
      } else {
        return [
          ...prevItems,
          {
            id: serviceId,
            item_type: itemType,
            product_id: serviceId,
            name,
            price,
            originalPrice,
            category,
            turnaround,
            quantity: 1,
            slug: service.slug || '',
            centre_visit_required: Boolean(service.centre_visit_required)
          }
        ];
      }
    });

    setLastAddedItem(name);
    setIsCartOpen(true);

    import('../utils/analytics.js').then(({ logAnalyticsEvent }) => {
      logAnalyticsEvent('ADD_TO_CART', {
        metadata: { service_id: serviceId, service_name: name, price: price },
        deduplicate: true
      });
    }).catch(() => {});
  };

  const removeFromCart = (id) => {
    setCartItems((prev) => prev.filter((item) => item.id !== id));

    import('../utils/analytics.js').then(({ logAnalyticsEvent }) => {
      logAnalyticsEvent('REMOVE_FROM_CART', {
        metadata: { service_id: id },
        deduplicate: true
      });
    }).catch(() => {});
  };

  const updateQuantity = (id, delta) => {
    setCartItems((prev) => {
      return prev
        .map((item) => {
          if (item.id === id) {
            const newQty = item.quantity + delta;
            return newQty > 0 ? { ...item, quantity: newQty } : null;
          }
          return item;
        })
        .filter(Boolean);
    });
  };

  const clearCart = () => {
    setCartItems([]);
    setAppliedPromo(null);
    setPromoDiscount(0);
    setPromoError(null);
  };

  const applyPromoCode = async (codeStr) => {
    setPromoError(null);
    setPromoLoading(true);

    try {
      const res = await validatePromoCode({
        promoCode: codeStr,
        cartSubtotal: subtotal,
        cartItems
      });

      if (res.valid) {
        setAppliedPromo({
          id: res.promo_id,
          code: res.code,
          discount_type: res.discount_type,
          discount_value: res.discount_value,
          max_discount: res.max_discount,
          min_order_amount: res.min_order_amount
        });
        setPromoDiscount(res.discount_amount);
        setPromoError(null);
        setPromoLoading(false);
        return { success: true, message: res.message, discount: res.discount_amount };
      } else {
        setPromoError(res.message || "That promo code isn't valid.");
        setPromoLoading(false);
        return { success: false, error: res.message };
      }
    } catch (err) {
      console.error('Apply promo code exception:', err);
      const msg = 'Unable to validate the promo code. Please try again.';
      setPromoError(msg);
      setPromoLoading(false);
      return { success: false, error: msg };
    }
  };

  const removePromoCode = () => {
    setAppliedPromo(null);
    setPromoDiscount(0);
    setPromoError(null);
  };

  const openCart = () => setIsCartOpen(true);
  const closeCart = () => setIsCartOpen(false);
  const toggleCart = () => setIsCartOpen((prev) => !prev);

  const finalPayable = Math.max(0, subtotal - promoDiscount);

  return (
    <CartContext.Provider
      value={{
        cartItems,
        addToCart,
        removeFromCart,
        updateQuantity,
        clearCart,
        isCartOpen,
        openCart,
        closeCart,
        toggleCart,
        itemCount,
        subtotal,
        originalSubtotal,
        totalSavings,
        lastAddedItem,
        appliedPromo,
        promoDiscount,
        promoLoading,
        promoError,
        availablePromos,
        applyPromoCode,
        removePromoCode,
        finalPayable
      }}
    >
      {children}
    </CartContext.Provider>
  );
}

export function useCart() {
  const context = useContext(CartContext);
  if (!context) {
    throw new Error('useCart must be used within a CartProvider');
  }
  return context;
}
