import { supabase, isSupabaseConfigured } from '../lib/supabase';
import { CATEGORIES as FALLBACK_CATEGORIES } from '../data/services';

/**
 * Fetch all active categories from Supabase public.categories
 * Primary Source: Supabase database
 * Fallback: src/data/services.js CATEGORIES array
 */
export async function fetchCategories() {
  if (!isSupabaseConfigured || !supabase) {
    console.info('Supabase unconfigured. Returning fallback static categories.');
    return { success: true, categories: FALLBACK_CATEGORIES, source: 'fallback' };
  }

  try {
    const { data, error } = await supabase
      .from('categories')
      .select('*')
      .eq('active', true)
      .order('display_order', { ascending: true })
      .order('name', { ascending: true });

    if (error) {
      console.warn('Supabase fetchCategories error, using static fallback:', error.message);
      return { success: true, categories: FALLBACK_CATEGORIES, source: 'fallback', error: error.message };
    }

    if (!data || data.length === 0) {
      console.warn('public.categories returned 0 active categories. Falling back to static data.');
      return { success: true, categories: FALLBACK_CATEGORIES, source: 'fallback' };
    }

    return { success: true, categories: data, source: 'supabase' };
  } catch (err) {
    console.error('fetchCategories exception:', err);
    return { success: true, categories: FALLBACK_CATEGORIES, source: 'fallback', error: err.message };
  }
}

/**
 * Fetch single Category details by URL Slug
 */
export async function fetchCategoryBySlug(slug) {
  if (!slug) return { success: false, error: 'Missing category slug.' };

  if (!isSupabaseConfigured || !supabase) {
    const fallback = FALLBACK_CATEGORIES.find(c => c.id === slug || c.slug === slug);
    if (fallback) return { success: true, category: fallback, source: 'fallback' };
    return { success: false, error: `Category with slug "${slug}" not found.` };
  }

  try {
    const { data, error } = await supabase
      .from('categories')
      .select('*')
      .eq('slug', slug.toLowerCase().trim())
      .maybeSingle();

    if (error) {
      console.warn(`Error fetching category "${slug}":`, error.message);
      const fallback = FALLBACK_CATEGORIES.find(c => c.id === slug || c.slug === slug);
      if (fallback) return { success: true, category: fallback, source: 'fallback' };
      return { success: false, error: error.message };
    }

    if (!data) {
      const fallback = FALLBACK_CATEGORIES.find(c => c.id === slug || c.slug === slug);
      if (fallback) return { success: true, category: fallback, source: 'fallback' };
      return { success: false, error: `Category "${slug}" not found.` };
    }

    return { success: true, category: data, source: 'supabase' };
  } catch (err) {
    console.error(`fetchCategoryBySlug exception for "${slug}":`, err);
    const fallback = FALLBACK_CATEGORIES.find(c => c.id === slug || c.slug === slug);
    if (fallback) return { success: true, category: fallback, source: 'fallback' };
    return { success: false, error: err.message };
  }
}
