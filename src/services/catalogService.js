import { supabase, isSupabaseConfigured } from '../lib/supabase';
import { ALL_SERVICES, CATEGORIES, PROVIDERS } from '../data/services';

const PRICE_RANGES = [
  { id: 'all', label: 'All Prices' },
  { id: 'under-500', label: 'Under ₹500', min: 0, max: 500 },
  { id: '500-1000', label: '₹500 – ₹1,000', min: 500, max: 1000 },
  { id: '1000-5000', label: '₹1,000 – ₹5,000', min: 1000, max: 5000 },
  { id: 'above-5000', label: 'Above ₹5,000', min: 5000, max: Infinity }
];

/**
 * Fetch catalog services with server-side pagination, search, and filtering.
 */
export async function fetchServices({
  category = 'all',
  search = '',
  priceRange = 'all',
  homeCollection = false,
  turnaround = 'all',
  provider = 'all',
  sortBy = 'relevance',
  page = 1,
  pageSize = 24
} = {}) {

  const validPage = Math.max(1, parseInt(page, 10) || 1);
  const offset = (validPage - 1) * pageSize;

  // 1. SUPABASE SERVERSIDE QUERY (PRODUCTION MODE)
  if (isSupabaseConfigured && supabase) {
    try {
      let query = supabase
        .from('services')
        .select('*', { count: 'exact' })
        .eq('active', true);

      // Category filter
      if (category && category !== 'all') {
        query = query.eq('category_id', category);
      }

      // Provider filter
      if (provider && provider !== 'all') {
        query = query.eq('provider', provider);
      }

      // Home collection filter
      if (homeCollection) {
        query = query.eq('home_collection_available', true);
      }

      // Search query across name, code, provider, description
      const q = search.trim().toLowerCase();
      if (q) {
        query = query.or(`service_name.ilike.%${q}%,service_code.ilike.%${q}%,provider.ilike.%${q}%,description.ilike.%${q}%`);
      }

      // Price range filter
      if (priceRange !== 'all') {
        const range = PRICE_RANGES.find(r => r.id === priceRange);
        if (range) {
          query = query.gte('selling_price', range.min);
          if (range.max !== Infinity) {
            query = query.lte('selling_price', range.max);
          }
        }
      }

      // Turnaround time filter
      if (turnaround !== 'all') {
        if (turnaround === 'same-day') {
          query = query.ilike('turnaround_time', '%Same%');
        } else if (turnaround === '24-hours') {
          query = query.ilike('turnaround_time', '%24%');
        } else if (turnaround === '48-hours') {
          query = query.ilike('turnaround_time', '%48%');
        }
      }

      // Sorting
      if (sortBy === 'price-low') {
        query = query.order('selling_price', { ascending: true });
      } else if (sortBy === 'price-high') {
        query = query.order('selling_price', { ascending: false });
      } else if (sortBy === 'name-az') {
        query = query.order('service_name', { ascending: true });
      } else if (sortBy === 'name-za') {
        query = query.order('service_name', { ascending: false });
      } else {
        query = query.order('id', { ascending: true });
      }

      // Pagination range
      query = query.range(offset, offset + pageSize - 1);

      const { data, count, error } = await query;

      if (!error && data) {
        return {
          services: data.map(item => ({
            ...item,
            name: item.service_name,
            discount_price: item.selling_price,
            price: item.mrp,
            sample_type: item.specimen_type || item.sample_type || 'Standard Specimen'
          })),
          totalMatches: count || 0,
          totalPages: Math.ceil((count || 0) / pageSize) || 1,
          page: validPage,
          pageSize,
          categories: CATEGORIES,
          providers: PROVIDERS
        };
      }
    } catch (err) {
      console.warn('Supabase service query fallback to local catalog:', err);
    }
  }

  // 2. LOCAL DATASET FILTERING (FALLBACK / DEMO MODE)
  let result = [...ALL_SERVICES];

  // Category filter
  if (category && category !== 'all') {
    result = result.filter(s => s.category_id === category);
  }

  // Provider filter
  if (provider && provider !== 'all') {
    result = result.filter(s => s.provider === provider);
  }

  // Search query filter
  const q = search.trim().toLowerCase();
  if (q) {
    result = result.filter(s =>
      s.name.toLowerCase().includes(q) ||
      (s.service_code && s.service_code.toLowerCase().includes(q)) ||
      (s.provider && s.provider.toLowerCase().includes(q)) ||
      (s.description && s.description.toLowerCase().includes(q)) ||
      (s.subcategory && s.subcategory.toLowerCase().includes(q)) ||
      (s.parameters && s.parameters.some(p => p.toLowerCase().includes(q)))
    );
  }

  // Price range filter
  if (priceRange !== 'all') {
    const range = PRICE_RANGES.find(r => r.id === priceRange);
    if (range) {
      result = result.filter(s => s.discount_price >= range.min && s.discount_price <= range.max);
    }
  }

  // Home collection filter
  if (homeCollection) {
    result = result.filter(s => s.home_collection_available === true);
  }

  // Turnaround filter
  if (turnaround !== 'all') {
    if (turnaround === 'same-day') {
      result = result.filter(s => (s.turnaround_time || '').toLowerCase().includes('same'));
    } else if (turnaround === '24-hours') {
      result = result.filter(s => (s.turnaround_time || '').includes('24'));
    } else if (turnaround === '48-hours') {
      result = result.filter(s => (s.turnaround_time || '').includes('48'));
    }
  }

  // Sorting
  if (sortBy === 'price-low') {
    result.sort((a, b) => a.discount_price - b.discount_price);
  } else if (sortBy === 'price-high') {
    result.sort((a, b) => b.discount_price - a.discount_price);
  } else if (sortBy === 'name-az') {
    result.sort((a, b) => a.name.localeCompare(b.name));
  } else if (sortBy === 'name-za') {
    result.sort((a, b) => b.name.localeCompare(a.name));
  } else if (sortBy === 'popularity') {
    result.sort((a, b) => (b.parameters_count || 0) - (a.parameters_count || 0));
  }

  const totalMatches = result.length;
  const totalPages = Math.ceil(totalMatches / pageSize) || 1;
  const pageStart = (validPage - 1) * pageSize;
  const paginatedServices = result.slice(pageStart, pageStart + pageSize);

  return {
    services: paginatedServices,
    totalMatches,
    totalPages,
    page: validPage,
    pageSize,
    categories: CATEGORIES,
    providers: PROVIDERS
  };
}

/**
 * Fetch a single service by slug.
 */
export async function fetchServiceBySlug(slug) {
  if (isSupabaseConfigured && supabase) {
    try {
      const { data, error } = await supabase
        .from('services')
        .select('*')
        .eq('slug', slug)
        .single();

      if (!error && data) {
        return {
          ...data,
          name: data.service_name,
          discount_price: data.selling_price,
          price: data.mrp,
          sample_type: data.specimen_type || data.sample_type || 'Standard Specimen'
        };
      }
    } catch (err) {
      console.warn('Supabase fetchServiceBySlug fallback:', err);
    }
  }

  return ALL_SERVICES.find(s => s.slug === slug) || ALL_SERVICES[0];
}
