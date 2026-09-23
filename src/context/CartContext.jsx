import React, { createContext, useContext, useState, useEffect } from 'react';

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

  useEffect(() => {
    try {
      localStorage.setItem('healthExpressCart', JSON.stringify(cartItems));
    } catch (e) {
      console.warn('Failed to save cart to localStorage:', e);
    }
  }, [cartItems]);

  const addToCart = (service) => {
    if (!service) return;

    const serviceId = service.id || service.slug || service.name;
    const name = service.name || service.title || 'Healthcare Service';
    const price = Number(service.discount_price || service.price || service.discountPrice || 299);
    const originalPrice = Number(service.price || service.originalPrice || price * 1.3);
    const category = service.category_name || service.category || 'Diagnostic Service';
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
  };

  const removeFromCart = (id) => {
    setCartItems((prev) => prev.filter((item) => item.id !== id));
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
  };

  const openCart = () => setIsCartOpen(true);
  const closeCart = () => setIsCartOpen(false);
  const toggleCart = () => setIsCartOpen((prev) => !prev);

  // Computations
  const itemCount = cartItems.reduce((acc, item) => acc + item.quantity, 0);
  const subtotal = cartItems.reduce((acc, item) => acc + item.price * item.quantity, 0);
  const originalSubtotal = cartItems.reduce((acc, item) => acc + item.originalPrice * item.quantity, 0);
  const totalSavings = Math.max(0, originalSubtotal - subtotal);

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
        lastAddedItem
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
