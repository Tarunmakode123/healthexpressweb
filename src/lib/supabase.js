import { createClient } from '@supabase/supabase-js';

const supabaseUrl = import.meta.env.VITE_SUPABASE_URL;
const supabaseAnonKey = import.meta.env.VITE_SUPABASE_ANON_KEY;

export const isSupabaseConfigured = Boolean(supabaseUrl && supabaseAnonKey);

if (!isSupabaseConfigured) {
  console.info('ℹ️ Health Express: Supabase environment variables (VITE_SUPABASE_URL & VITE_SUPABASE_ANON_KEY) are not set. Operating in local development demo mode.');
}

// Export single Supabase client instance (or null in demo mode)
export const supabase = isSupabaseConfigured
  ? createClient(supabaseUrl, supabaseAnonKey)
  : null;
