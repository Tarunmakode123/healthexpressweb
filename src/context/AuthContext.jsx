import React, { createContext, useContext, useState, useEffect } from 'react';
import { supabase, isSupabaseConfigured } from '../lib/supabase';
import { validateAndNormalizeInternationalPhone } from '../utils/phone';

const AuthContext = createContext();

export function AuthProvider({ children }) {
  const [user, setUser] = useState(null);
  const [session, setSession] = useState(null);
  const [isLoading, setIsLoading] = useState(true);

  // Auto-link matching guest records when an authenticated user with a verified phone logs in
  const linkGuestRecords = async (phoneToLink) => {
    if (!isSupabaseConfigured || !supabase) return;

    try {
      const { data: { session: activeSession } } = await supabase.auth.getSession();
      if (!activeSession?.user) return;

      const targetPhone = phoneToLink || activeSession.user.phone || activeSession.user.user_metadata?.phone;
      if (!targetPhone) return;

      const phoneCheck = validateAndNormalizeInternationalPhone(targetPhone);
      if (!phoneCheck.isValid) return;

      const { error } = await supabase.rpc('link_guest_records_on_otp_login', {
        verified_phone_e164: phoneCheck.phone_e164
      });

      if (error) {
        console.warn('Guest record linking notice:', error.message);
      }
    } catch (err) {
      console.warn('Guest record linking exception:', err);
    }
  };

  useEffect(() => {
    let subscription = null;

    async function initAuth() {
      if (isSupabaseConfigured && supabase) {
        try {
          const { data: { session: currentSession } } = await supabase.auth.getSession();
          setSession(currentSession);
          if (currentSession?.user) {
            const authUser = currentSession.user;
            const mappedUser = {
              id: authUser.id,
              name: authUser.user_metadata?.full_name || authUser.user_metadata?.name || authUser.email?.split('@')[0] || 'Member',
              email: authUser.email || '',
              phone: authUser.phone || authUser.user_metadata?.phone || '',
              authType: authUser.phone ? 'phone' : 'email',
              createdAt: authUser.created_at
            };
            setUser(mappedUser);
            if (mappedUser.phone) {
              await linkGuestRecords(mappedUser.phone);
            }
          }
        } catch (e) {
          console.error('Error fetching Supabase auth session:', e);
        }

        // Listen for realtime auth changes
        const { data: authListener } = supabase.auth.onAuthStateChange(async (event, newSession) => {
          setSession(newSession);
          if (newSession?.user) {
            const authUser = newSession.user;
            const mappedUser = {
              id: authUser.id,
              name: authUser.user_metadata?.full_name || authUser.user_metadata?.name || authUser.email?.split('@')[0] || 'Member',
              email: authUser.email || '',
              phone: authUser.phone || authUser.user_metadata?.phone || '',
              authType: authUser.phone ? 'phone' : 'email',
              createdAt: authUser.created_at
            };
            setUser(mappedUser);
            localStorage.setItem('health_express_user', JSON.stringify(mappedUser));

            if (event === 'SIGNED_IN' && mappedUser.phone) {
              await linkGuestRecords(mappedUser.phone);
            }
          } else if (event === 'SIGNED_OUT') {
            setUser(null);
            localStorage.removeItem('health_express_user');
          }
        });
        subscription = authListener.subscription;
      } else {
        // Local Demo fallback
        try {
          const savedUser = localStorage.getItem('health_express_user');
          if (savedUser) {
            setUser(JSON.parse(savedUser));
          }
        } catch (e) {
          console.error('Failed to parse local auth state:', e);
        }
      }
      setIsLoading(false);
    }

    initAuth();

    return () => {
      if (subscription) subscription.unsubscribe();
    };
  }, []);

  const login = (userData) => {
    setUser(userData);
    localStorage.setItem('health_express_user', JSON.stringify(userData));
    if (userData.phone) {
      linkGuestRecords(userData.phone);
    }
  };

  const signup = (userData) => {
    setUser(userData);
    localStorage.setItem('health_express_user', JSON.stringify(userData));
    if (userData.phone) {
      linkGuestRecords(userData.phone);
    }
  };

  const logout = async () => {
    if (isSupabaseConfigured && supabase) {
      try {
        await supabase.auth.signOut();
      } catch (e) {
        console.error('Error signing out from Supabase Auth:', e);
      }
    }
    setUser(null);
    setSession(null);
    localStorage.removeItem('health_express_user');
  };

  return (
    <AuthContext.Provider value={{ 
      user, 
      session,
      isLoggedIn: !!user, 
      isLoading, 
      login, 
      signup, 
      logout,
      linkGuestRecords 
    }}>
      {children}
    </AuthContext.Provider>
  );
}

export function useAuth() {
  const context = useContext(AuthContext);
  if (!context) {
    throw new Error('useAuth must be used within an AuthProvider');
  }
  return context;
}
