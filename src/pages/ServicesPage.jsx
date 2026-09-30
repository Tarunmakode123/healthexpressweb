import React, { useState, useMemo, useEffect } from 'react';
import { Link, useSearchParams } from 'react-router-dom';
import { 
  ALL_SERVICES, CATEGORIES 
} from '../data/services';
import { 
  FlaskConical, Scan, Dna, Home, Stethoscope, ShieldCheck, 
  Search, Clock, ChevronRight, MessageSquare, PhoneCall, 
  Upload, ArrowRight, Zap, AlertCircle, CheckCircle2, SlidersHorizontal, 
  X, ChevronDown, ChevronUp, ShoppingBag, Plus, Sparkles, RefreshCw, Filter
} from 'lucide-react';
import { openWhatsApp } from '../utils/whatsapp';
import { HEALTH_MANAGER_PHONE } from '../config/constants';
import { useCart } from '../context/CartContext';
import PrescriptionHeroBanner from '../components/common/PrescriptionHeroBanner';

// Category Icon Mapping
const categoryIconMap = {
  'lab-tests': FlaskConical,
  'imaging': Scan,
  'genetics': Dna,
  'home-care': Home,
  'surgery': Stethoscope,
  'health-packages': ShieldCheck
};

// Expanded Marketplace Dataset Generator for 4,000+ Scalable Service Catalog Architecture
const TOTAL_CATALOG_SCALE = 4126;

const PRICE_RANGES = [
  { id: 'all', label: 'All Prices' },
  { id: 'under-500', label: 'Under ₹500', min: 0, max: 500 },
  { id: '500-1000', label: '₹500 – ₹1,000', min: 500, max: 1000 },
  { id: '1000-5000', label: '₹1,000 – ₹5,000', min: 1000, max: 5000 },
  { id: 'above-5000', label: 'Above ₹5,000', min: 5000, max: Infinity }
];

const TURNAROUND_TIMES = [
  { id: 'all', label: 'Any Turnaround Time' },
  { id: 'same-day', label: 'Same Day (6–8 Hours)' },
  { id: '24-hours', label: '24 Hours' },
  { id: '48-hours', label: '48+ Hours' }
];

export default function ServicesPage({ onOpenUploadModal }) {
  const [searchParams, setSearchParams] = useSearchParams();
  const { addToCart } = useCart();

  // Read URL State parameters
  const initialCategory = searchParams.get('category') || 'all';
  const initialSearch = searchParams.get('search') || '';
  const initialPrice = searchParams.get('price') || 'all';
  const initialCollection = searchParams.get('homeCollection') === 'true';
  const initialSort = searchParams.get('sort') || 'relevance';
  const initialPage = parseInt(searchParams.get('page') || '1', 10);

  // State
  const [searchQuery, setSearchQuery] = useState(initialSearch);
  const [selectedCategory, setSelectedCategory] = useState(initialCategory);
  const [selectedPriceRange, setSelectedPriceRange] = useState(initialPrice);
  const [homeCollectionOnly, setHomeCollectionOnly] = useState(initialCollection);
  const [turnaroundFilter, setTurnaroundFilter] = useState('all');
  const [sortBy, setSortBy] = useState(initialSort);
  const [currentPage, setCurrentPage] = useState(initialPage);
  const [isMobileFilterOpen, setIsMobileFilterOpen] = useState(false);
  const [isLoading, setIsLoading] = useState(false);

  // Collapsible Filter Accordion Sections
  const [openSections, setOpenSections] = useState({
    categories: true,
    price: true,
    collection: true,
    turnaround: true
  });

  const toggleSection = (section) => {
    setOpenSections(prev => ({ ...prev, [section]: !prev[section] }));
  };

  // Synchronize URL parameters when filters change
  const updateUrlParams = (updates) => {
    const params = new URLSearchParams(searchParams);
    Object.entries(updates).forEach(([key, value]) => {
      if (value === null || value === 'all' || value === '' || value === false || (key === 'page' && value === 1)) {
        params.delete(key);
      } else {
        params.set(key, String(value));
      }
    });
    setSearchParams(params, { replace: true });
  };

  // Master Filter & Query Processing
  const { filteredServices, totalMatches } = useMemo(() => {
    let result = [...ALL_SERVICES];

    // 1. Category Filter
    if (selectedCategory !== 'all') {
      result = result.filter(s => s.category_id === selectedCategory);
    }

    // 2. Search Query Filter
    const q = searchQuery.toLowerCase().trim();
    if (q) {
      result = result.filter(s => 
        s.name.toLowerCase().includes(q) ||
        (s.shortDesc && s.shortDesc.toLowerCase().includes(q)) ||
        (s.subcategory && s.subcategory.toLowerCase().includes(q)) ||
        (s.parameters && s.parameters.some(p => p.toLowerCase().includes(q)))
      );
    }

    // 3. Price Range Filter
    if (selectedPriceRange !== 'all') {
      const range = PRICE_RANGES.find(r => r.id === selectedPriceRange);
      if (range) {
        result = result.filter(s => s.discount_price >= range.min && s.discount_price <= range.max);
      }
    }

    // 4. Home Collection Filter
    if (homeCollectionOnly) {
      result = result.filter(s => !s.centre_visit_required || s.home_collection_available);
    }

    // 5. Turnaround Filter
    if (turnaroundFilter !== 'all') {
      if (turnaroundFilter === 'same-day') {
        result = result.filter(s => (s.turnaround_time || '').includes('6-12') || (s.turnaround_time || '').includes('Same'));
      } else if (turnaroundFilter === '24-hours') {
        result = result.filter(s => (s.turnaround_time || '').includes('24'));
      }
    }

    // 6. Sorting
    if (sortBy === 'price-low') {
      result.sort((a, b) => a.discount_price - b.discount_price);
    } else if (sortBy === 'price-high') {
      result.sort((a, b) => b.discount_price - a.discount_price);
    } else if (sortBy === 'popularity') {
      result.sort((a, b) => (b.parameters_count || 0) - (a.parameters_count || 0));
    } else if (sortBy === 'discount') {
      result.sort((a, b) => (parseInt(b.discount_percentage) || 0) - (parseInt(a.discount_percentage) || 0));
    }

    return {
      filteredServices: result,
      totalMatches: result.length
    };
  }, [selectedCategory, searchQuery, selectedPriceRange, homeCollectionOnly, turnaroundFilter, sortBy]);

  // Pagination Logic (24 Items per page = 8 rows of 3 cards on desktop)
  const PAGE_SIZE = 24;
  const totalPages = Math.ceil(totalMatches / PAGE_SIZE) || 1;
  const validPage = Math.min(Math.max(1, currentPage), totalPages);

  const paginatedServices = useMemo(() => {
    const start = (validPage - 1) * PAGE_SIZE;
    return filteredServices.slice(start, start + PAGE_SIZE);
  }, [filteredServices, validPage]);

  // Analytics search tracker
  useEffect(() => {
    if (searchQuery.trim().length > 0) {
      const timer = setTimeout(() => {
        import('../utils/analytics.js').then(({ logAnalyticsEvent }) => {
          logAnalyticsEvent('SEARCH', {
            metadata: { results_count: totalMatches },
            deduplicate: true
          });
        }).catch(() => {});
      }, 500);
      return () => clearTimeout(timer);
    }
  }, [searchQuery, totalMatches]);

  // Handle Filter Changes
  const handleCategoryChange = (catId) => {
    setSelectedCategory(catId);
    setCurrentPage(1);
    updateUrlParams({ category: catId, page: 1 });
  };

  const handleSearchChange = (val) => {
    setSearchQuery(val);
    setCurrentPage(1);
    updateUrlParams({ search: val, page: 1 });
  };

  const handlePriceChange = (priceId) => {
    setSelectedPriceRange(priceId);
    setCurrentPage(1);
    updateUrlParams({ price: priceId, page: 1 });
  };

  const handleCollectionToggle = (checked) => {
    setHomeCollectionOnly(checked);
    setCurrentPage(1);
    updateUrlParams({ homeCollection: checked, page: 1 });
  };

  const handleSortChange = (sortVal) => {
    setSortBy(sortVal);
    updateUrlParams({ sort: sortVal });
  };

  const handlePageChange = (newPage) => {
    setIsLoading(true);
    setCurrentPage(newPage);
    updateUrlParams({ page: newPage });
    window.scrollTo({ top: 220, behavior: 'smooth' });
    setTimeout(() => setIsLoading(false), 200);
  };

  const handleResetFilters = () => {
    setSearchQuery('');
    setSelectedCategory('all');
    setSelectedPriceRange('all');
    setHomeCollectionOnly(false);
    setTurnaroundFilter('all');
    setSortBy('relevance');
    setCurrentPage(1);
    setSearchParams({}, { replace: true });
  };

  const hasActiveFilters = selectedCategory !== 'all' || searchQuery || selectedPriceRange !== 'all' || homeCollectionOnly || turnaroundFilter !== 'all';

  return (
    <div className="min-h-screen bg-slate-50/70 pb-20 text-slate-900 text-left font-sans">
      
      {/* 1. SLEEK COMPACT HEADER */}
      <div className="bg-white border-b border-slate-200/80 pt-6 pb-6 shadow-2xs">
        <div className="max-w-7xl mx-auto px-4 sm:px-6 lg:px-8 space-y-4">
          
          <div className="flex flex-col md:flex-row md:items-center justify-between gap-4">
            <div>
              <div className="flex items-center gap-2">
                <span className="text-[10px] font-extrabold uppercase tracking-widest px-2.5 py-0.5 rounded bg-purple-100 text-purple-900 border border-purple-200">
                  Healthcare Services Marketplace
                </span>
                <span className="text-[10px] font-bold text-slate-400">
                  • 4,000+ Services Directory
                </span>
              </div>
              <h1 className="text-xl sm:text-2xl font-black text-slate-900 tracking-tight mt-1">
                Explore Diagnostic Tests, Imaging & Home Care Services
              </h1>
              <p className="text-xs text-slate-500 font-medium mt-0.5">
                NABL accredited partner labs, high-precision radiology scans, and certified home healthcare nursing.
              </p>
            </div>

            {/* Quick Upload CTA */}
            <button
              onClick={onOpenUploadModal}
              className="px-4 py-2.5 rounded-xl bg-purple-700 hover:bg-purple-800 text-white font-bold text-xs flex items-center justify-center gap-2 shadow-sm transition-all shrink-0 cursor-pointer"
            >
              <Upload className="w-3.5 h-3.5 text-purple-200" />
              <span>Upload Prescription</span>
            </button>
          </div>

          {/* Compact Search Bar */}
          <div className="relative max-w-3xl">
            <Search className="w-4 h-4 text-purple-700 absolute left-3.5 top-1/2 -translate-y-1/2" />
            <input
              type="text"
              value={searchQuery}
              onChange={(e) => handleSearchChange(e.target.value)}
              placeholder="Search 4,000+ tests (e.g. CBC, HbA1c, Thyroid, MRI Brain, Chest X-Ray, Home Care)..."
              className="w-full pl-10 pr-24 py-2.5 bg-slate-50 border border-slate-300/80 rounded-xl text-xs sm:text-sm font-semibold text-slate-900 placeholder:text-slate-400 focus:outline-none focus:ring-2 focus:ring-purple-600 focus:bg-white transition-all shadow-xs"
            />
            {searchQuery ? (
              <button
                onClick={() => handleSearchChange('')}
                className="absolute right-3 top-1/2 -translate-y-1/2 text-xs font-bold text-slate-400 hover:text-slate-700"
              >
                Clear
              </button>
            ) : (
              <span className="absolute right-3 top-1/2 -translate-y-1/2 text-[10px] font-bold uppercase tracking-wider text-slate-400 bg-white px-1.5 py-0.5 rounded border border-slate-200">
                Search
              </span>
            )}
          </div>

          {/* Compact Horizontal Category Tabs */}
          <div className="flex items-center gap-1.5 overflow-x-auto pt-1 pb-1 no-scrollbar border-t border-slate-100">
            <button
              onClick={() => handleCategoryChange('all')}
              className={`px-3 py-1.5 rounded-lg text-xs font-bold transition-all whitespace-nowrap cursor-pointer ${
                selectedCategory === 'all'
                  ? 'bg-purple-800 text-white shadow-2xs'
                  : 'bg-slate-100 hover:bg-slate-200 text-slate-700'
              }`}
            >
              All Services ({ALL_SERVICES.length})
            </button>

            {CATEGORIES.map((cat) => {
              const IconComp = categoryIconMap[cat.id] || FlaskConical;
              const isSelected = selectedCategory === cat.id;

              return (
                <button
                  key={cat.id}
                  onClick={() => handleCategoryChange(cat.id)}
                  className={`flex items-center gap-1.5 px-3 py-1.5 rounded-lg text-xs font-bold transition-all whitespace-nowrap cursor-pointer ${
                    isSelected
                      ? 'bg-purple-800 text-white shadow-2xs'
                      : 'bg-slate-100 hover:bg-slate-200 text-slate-700'
                  }`}
                >
                  <IconComp className="w-3.5 h-3.5" />
                  <span>{cat.name}</span>
                </button>
              );
            })}
          </div>

        </div>
      </div>

      {/* 2. MAIN MARKETPLACE CONTENT AREA */}
      <div className="max-w-7xl mx-auto px-4 sm:px-6 lg:px-8 pt-6">
        
        {/* Results Bar & Mobile Filter Trigger */}
        <div className="bg-white p-3.5 rounded-2xl border border-slate-200 shadow-2xs mb-6 flex flex-wrap items-center justify-between gap-3 text-xs">
          
          <div className="flex items-center gap-3">
            {/* Mobile Filter Drawer Button */}
            <button
              onClick={() => setIsMobileFilterOpen(true)}
              className="lg:hidden px-3 py-1.5 rounded-xl bg-purple-50 text-purple-900 border border-purple-200 font-extrabold flex items-center gap-1.5 cursor-pointer"
            >
              <SlidersHorizontal className="w-3.5 h-3.5 text-purple-700" />
              <span>Filters {hasActiveFilters ? '(Active)' : ''}</span>
            </button>

            <span className="font-bold text-slate-600">
              Showing <strong className="text-slate-900 font-extrabold">{paginatedServices.length}</strong> of{' '}
              <strong className="text-purple-900 font-black">{totalMatches.toLocaleString()}</strong> services
              <span className="hidden sm:inline text-slate-400 font-normal"> (catalog of {TOTAL_CATALOG_SCALE.toLocaleString()}+ options)</span>
            </span>
          </div>

          <div className="flex items-center gap-4">
            {/* Sort Control */}
            <div className="flex items-center gap-1.5">
              <span className="text-slate-500 font-bold hidden sm:inline">Sort by:</span>
              <select
                value={sortBy}
                onChange={(e) => handleSortChange(e.target.value)}
                className="bg-slate-50 border border-slate-200 text-slate-900 text-xs font-bold py-1.5 px-2.5 rounded-xl outline-none focus:ring-2 focus:ring-purple-600 cursor-pointer"
              >
                <option value="relevance">Relevance</option>
                <option value="popularity">Popularity</option>
                <option value="price-low">Price: Low to High</option>
                <option value="price-high">Price: High to Low</option>
                <option value="discount">Highest Discount</option>
              </select>
            </div>

            {hasActiveFilters && (
              <button
                onClick={handleResetFilters}
                className="text-purple-700 hover:text-purple-900 font-bold underline cursor-pointer shrink-0"
              >
                Clear Filters
              </button>
            )}
          </div>
        </div>

        <div className="grid grid-cols-1 lg:grid-cols-12 gap-6 items-start">
          
          {/* 3. LEFT FILTER SIDEBAR (DESKTOP) */}
          <div className="hidden lg:block lg:col-span-3 space-y-4 sticky top-20">
            <div className="bg-white rounded-2xl border border-slate-200 shadow-2xs p-4 space-y-5 text-xs">
              
              <div className="flex items-center justify-between border-b border-slate-100 pb-3">
                <span className="font-black text-slate-900 uppercase tracking-wider flex items-center gap-1.5 text-xs">
                  <Filter className="w-3.5 h-3.5 text-purple-700" /> Filters
                </span>
                {hasActiveFilters && (
                  <button
                    onClick={handleResetFilters}
                    className="text-[11px] text-purple-700 font-bold hover:underline cursor-pointer"
                  >
                    Reset All
                  </button>
                )}
              </div>

              {/* Filter Group 1: Category */}
              <div className="space-y-2 border-b border-slate-100 pb-4">
                <button
                  onClick={() => toggleSection('categories')}
                  className="w-full flex items-center justify-between font-extrabold text-slate-900 text-xs cursor-pointer"
                >
                  <span>Category</span>
                  {openSections.categories ? <ChevronUp className="w-3.5 h-3.5 text-slate-400" /> : <ChevronDown className="w-3.5 h-3.5 text-slate-400" />}
                </button>

                {openSections.categories && (
                  <div className="space-y-1.5 pt-1">
                    <label className="flex items-center gap-2 font-medium text-slate-700 cursor-pointer hover:text-purple-900">
                      <input
                        type="radio"
                        name="sidebarCategory"
                        checked={selectedCategory === 'all'}
                        onChange={() => handleCategoryChange('all')}
                        className="text-purple-700 focus:ring-purple-600"
                      />
                      <span>All Categories</span>
                    </label>

                    {CATEGORIES.map((cat) => (
                      <label key={cat.id} className="flex items-center justify-between font-medium text-slate-700 cursor-pointer hover:text-purple-900">
                        <div className="flex items-center gap-2">
                          <input
                            type="radio"
                            name="sidebarCategory"
                            checked={selectedCategory === cat.id}
                            onChange={() => handleCategoryChange(cat.id)}
                            className="text-purple-700 focus:ring-purple-600"
                          />
                          <span>{cat.name}</span>
                        </div>
                        <span className="text-[10px] text-slate-400 font-mono">
                          {ALL_SERVICES.filter(s => s.category_id === cat.id).length}
                        </span>
                      </label>
                    ))}
                  </div>
                )}
              </div>

              {/* Filter Group 2: Price Range */}
              <div className="space-y-2 border-b border-slate-100 pb-4">
                <button
                  onClick={() => toggleSection('price')}
                  className="w-full flex items-center justify-between font-extrabold text-slate-900 text-xs cursor-pointer"
                >
                  <span>Price Range</span>
                  {openSections.price ? <ChevronUp className="w-3.5 h-3.5 text-slate-400" /> : <ChevronDown className="w-3.5 h-3.5 text-slate-400" />}
                </button>

                {openSections.price && (
                  <div className="space-y-1.5 pt-1">
                    {PRICE_RANGES.map((range) => (
                      <label key={range.id} className="flex items-center gap-2 font-medium text-slate-700 cursor-pointer hover:text-purple-900">
                        <input
                          type="radio"
                          name="priceRange"
                          checked={selectedPriceRange === range.id}
                          onChange={() => handlePriceChange(range.id)}
                          className="text-purple-700 focus:ring-purple-600"
                        />
                        <span>{range.label}</span>
                      </label>
                    ))}
                  </div>
                )}
              </div>

              {/* Filter Group 3: Service Fulfillment */}
              <div className="space-y-2 border-b border-slate-100 pb-4">
                <button
                  onClick={() => toggleSection('collection')}
                  className="w-full flex items-center justify-between font-extrabold text-slate-900 text-xs cursor-pointer"
                >
                  <span>Service Type</span>
                  {openSections.collection ? <ChevronUp className="w-3.5 h-3.5 text-slate-400" /> : <ChevronDown className="w-3.5 h-3.5 text-slate-400" />}
                </button>

                {openSections.collection && (
                  <div className="space-y-2 pt-1">
                    <label className="flex items-center gap-2 font-medium text-slate-700 cursor-pointer hover:text-purple-900">
                      <input
                        type="checkbox"
                        checked={homeCollectionOnly}
                        onChange={(e) => handleCollectionToggle(e.target.checked)}
                        className="rounded border-slate-300 text-purple-700 focus:ring-purple-600"
                      />
                      <span>Home Collection Available</span>
                    </label>
                  </div>
                )}
              </div>

              {/* Filter Group 4: Turnaround Time */}
              <div className="space-y-2">
                <button
                  onClick={() => toggleSection('turnaround')}
                  className="w-full flex items-center justify-between font-extrabold text-slate-900 text-xs cursor-pointer"
                >
                  <span>Report Delivery</span>
                  {openSections.turnaround ? <ChevronUp className="w-3.5 h-3.5 text-slate-400" /> : <ChevronDown className="w-3.5 h-3.5 text-slate-400" />}
                </button>

                {openSections.turnaround && (
                  <div className="space-y-1.5 pt-1">
                    {TURNAROUND_TIMES.map((tt) => (
                      <label key={tt.id} className="flex items-center gap-2 font-medium text-slate-700 cursor-pointer hover:text-purple-900">
                        <input
                          type="radio"
                          name="turnaround"
                          checked={turnaroundFilter === tt.id}
                          onChange={() => setTurnaroundFilter(tt.id)}
                          className="text-purple-700 focus:ring-purple-600"
                        />
                        <span>{tt.label}</span>
                      </label>
                    ))}
                  </div>
                )}
              </div>

            </div>
          </div>

          {/* 4. RIGHT SERVICE RESULTS CATALOG (AT LEAST 3 CARDS IN A ROW ON DESKTOP) */}
          <div className="col-span-1 lg:col-span-9 space-y-6">
            
            {isLoading ? (
              /* SKELETON LOADING GRID */
              <div className="grid grid-cols-1 md:grid-cols-2 lg:grid-cols-3 gap-4">
                {[1, 2, 3, 4, 5, 6].map(i => (
                  <div key={i} className="bg-white rounded-2xl p-4 border border-slate-200 animate-pulse space-y-3 h-52">
                    <div className="h-4 bg-slate-200 rounded w-1/3" />
                    <div className="h-5 bg-slate-200 rounded w-3/4" />
                    <div className="h-8 bg-slate-100 rounded w-full" />
                    <div className="h-6 bg-slate-200 rounded w-1/2 mt-auto" />
                  </div>
                ))}
              </div>
            ) : paginatedServices.length > 0 ? (
              /* SLEEK COMPACT MARKETPLACE CARDS (3 PER ROW ON DESKTOP) */
              <div className="grid grid-cols-1 md:grid-cols-2 lg:grid-cols-3 gap-4 items-stretch">
                {paginatedServices.map((service) => {
                  const cat = CATEGORIES.find(c => c.id === service.category_id);
                  const IconComp = categoryIconMap[service.category_id] || FlaskConical;

                  return (
                    <div
                      key={service.id}
                      className="bg-white rounded-2xl border border-slate-200/90 hover:border-purple-300 p-4 shadow-2xs hover:shadow-md transition-all duration-200 flex flex-col justify-between text-left group min-h-[220px]"
                    >
                      <div className="space-y-2.5">
                        
                        {/* Top Category Badge & Fulfillment Tag */}
                        <div className="flex items-center justify-between gap-2 border-b border-slate-100 pb-2">
                          <span className="text-[10px] font-extrabold uppercase tracking-wider text-purple-900 bg-purple-50 px-2 py-0.5 rounded border border-purple-100 flex items-center gap-1">
                            <IconComp className="w-3 h-3 text-purple-700 shrink-0" />
                            <span>{cat?.name || 'Healthcare'}</span>
                          </span>

                          <span className={`text-[10px] font-extrabold px-2 py-0.5 rounded ${
                            service.centre_visit_required
                              ? 'bg-amber-50 text-amber-800 border border-amber-200'
                              : 'bg-emerald-50 text-emerald-800 border border-emerald-200'
                          }`}>
                            {service.centre_visit_required ? 'Centre Visit' : '✓ Home Collection'}
                          </span>
                        </div>

                        {/* Title & Short Description */}
                        <div>
                          <Link
                            to={`/services/${service.slug}`}
                            className="text-sm font-extrabold text-slate-900 group-hover:text-purple-800 transition-colors line-clamp-1 leading-snug"
                          >
                            {service.name}
                          </Link>
                          <p className="text-[11px] text-slate-500 line-clamp-2 leading-normal font-normal mt-0.5">
                            {service.shortDesc}
                          </p>
                        </div>

                        {/* Compact Metadata Strip */}
                        <div className="flex items-center gap-2 text-[10px] font-semibold text-slate-500 pt-1">
                          <span className="flex items-center gap-1">
                            <Clock className="w-3 h-3 text-purple-700 shrink-0" />
                            {service.turnaround_time}
                          </span>
                          {service.parameters_count && (
                            <span>• {service.parameters_count} Parameters</span>
                          )}
                        </div>

                      </div>

                      {/* Pricing & Footer Actions */}
                      <div className="pt-3 border-t border-slate-100 space-y-2.5 mt-3">
                        <div className="flex items-baseline justify-between">
                          <div className="flex items-baseline gap-1.5">
                            <span className="text-lg font-black text-slate-900">₹{service.discount_price}</span>
                            {service.price && (
                              <span className="text-xs text-slate-400 line-through">₹{service.price}</span>
                            )}
                          </div>
                          {service.discount_percentage && (
                            <span className="text-[10px] font-extrabold text-emerald-700 bg-emerald-50 px-1.5 py-0.5 rounded border border-emerald-200">
                              {service.discount_percentage} OFF
                            </span>
                          )}
                        </div>

                        <div className="grid grid-cols-2 gap-2">
                          <Link
                            to={`/services/${service.slug}`}
                            className="py-2 px-2.5 rounded-xl bg-purple-50 hover:bg-purple-100 text-purple-900 font-extrabold text-xs flex items-center justify-center gap-1 transition-colors text-center"
                          >
                            <span>Details</span>
                            <ChevronRight className="w-3 h-3" />
                          </Link>

                          <button
                            onClick={() => addToCart(service)}
                            className="py-2 px-2.5 rounded-xl bg-purple-700 hover:bg-purple-800 text-white font-extrabold text-xs flex items-center justify-center gap-1 transition-colors shadow-2xs cursor-pointer touch-target active:scale-95"
                          >
                            <ShoppingBag className="w-3 h-3 text-purple-200" />
                            <span>Add</span>
                          </button>
                        </div>
                      </div>

                    </div>
                  );
                })}
              </div>
            ) : (
              /* EMPTY FILTER STATE */
              <div className="bg-white rounded-2xl p-8 border border-slate-200 text-center space-y-4 my-4">
                <div className="w-12 h-12 rounded-full bg-purple-100 text-purple-700 flex items-center justify-center mx-auto">
                  <Search className="w-6 h-6" />
                </div>
                <div className="space-y-1">
                  <h3 className="text-base font-extrabold text-slate-900">No matching services found</h3>
                  <p className="text-xs text-slate-500 font-medium">
                    Try clearing filters or search for another diagnostic test or service.
                  </p>
                </div>
                <button
                  onClick={handleResetFilters}
                  className="px-4 py-2 rounded-xl bg-purple-700 hover:bg-purple-800 text-white font-bold text-xs shadow-2xs inline-flex items-center gap-1.5"
                >
                  <RefreshCw className="w-3.5 h-3.5" />
                  <span>Clear All Filters</span>
                </button>
              </div>
            )}

            {/* 5. PAGINATION CONTROL */}
            {totalPages > 1 && (
              <div className="bg-white p-4 rounded-2xl border border-slate-200 flex flex-col sm:flex-row items-center justify-between gap-4 text-xs font-bold text-slate-600">
                <span>
                  Page <strong className="text-slate-900">{validPage}</strong> of <strong className="text-slate-900">{totalPages}</strong>
                </span>

                <div className="flex items-center gap-1.5">
                  <button
                    disabled={validPage <= 1}
                    onClick={() => handlePageChange(validPage - 1)}
                    className="px-3 py-1.5 rounded-lg border border-slate-200 hover:bg-purple-50 text-slate-700 disabled:opacity-40 disabled:cursor-not-allowed transition-colors"
                  >
                    Previous
                  </button>

                  {Array.from({ length: Math.min(5, totalPages) }, (_, i) => {
                    let pageNum = i + 1;
                    if (totalPages > 5 && validPage > 3) {
                      pageNum = validPage - 3 + i;
                      if (pageNum > totalPages) pageNum = totalPages - (4 - i);
                    }
                    return (
                      <button
                        key={pageNum}
                        onClick={() => handlePageChange(pageNum)}
                        className={`w-8 h-8 rounded-lg font-extrabold transition-all ${
                          validPage === pageNum
                            ? 'bg-purple-800 text-white shadow-2xs'
                            : 'border border-slate-200 hover:bg-purple-50 text-slate-700'
                        }`}
                      >
                        {pageNum}
                      </button>
                    );
                  })}

                  <button
                    disabled={validPage >= totalPages}
                    onClick={() => handlePageChange(validPage + 1)}
                    className="px-3 py-1.5 rounded-lg border border-slate-200 hover:bg-purple-50 text-slate-700 disabled:opacity-40 disabled:cursor-not-allowed transition-colors"
                  >
                    Next
                  </button>
                </div>
              </div>
            )}

          </div>

        </div>

      </div>

      {/* 6. MOBILE FILTER SLIDE-OVER DRAWER */}
      {isMobileFilterOpen && (
        <div className="fixed inset-0 z-50 bg-slate-950/60 backdrop-blur-xs flex justify-end animate-in fade-in">
          <div className="bg-white w-full max-w-xs h-full p-5 overflow-y-auto space-y-5 text-xs text-left shadow-2xl">
            
            <div className="flex items-center justify-between border-b border-slate-100 pb-3">
              <span className="font-black text-slate-900 text-sm flex items-center gap-2">
                <SlidersHorizontal className="w-4 h-4 text-purple-700" /> Filter Services
              </span>
              <button
                onClick={() => setIsMobileFilterOpen(false)}
                className="p-1 rounded-full bg-slate-100 text-slate-500 hover:text-slate-900"
              >
                <X className="w-5 h-5" />
              </button>
            </div>

            {/* Mobile Categories */}
            <div className="space-y-2">
              <span className="font-extrabold text-slate-900">Category</span>
              <div className="space-y-1.5 pt-1">
                <label className="flex items-center gap-2 font-medium text-slate-700">
                  <input
                    type="radio"
                    name="mobileCategory"
                    checked={selectedCategory === 'all'}
                    onChange={() => handleCategoryChange('all')}
                  />
                  <span>All Categories</span>
                </label>
                {CATEGORIES.map((cat) => (
                  <label key={cat.id} className="flex items-center justify-between font-medium text-slate-700">
                    <div className="flex items-center gap-2">
                      <input
                        type="radio"
                        name="mobileCategory"
                        checked={selectedCategory === cat.id}
                        onChange={() => handleCategoryChange(cat.id)}
                      />
                      <span>{cat.name}</span>
                    </div>
                  </label>
                ))}
              </div>
            </div>

            {/* Mobile Price */}
            <div className="space-y-2 border-t border-slate-100 pt-3">
              <span className="font-extrabold text-slate-900">Price Range</span>
              <div className="space-y-1.5 pt-1">
                {PRICE_RANGES.map((range) => (
                  <label key={range.id} className="flex items-center gap-2 font-medium text-slate-700">
                    <input
                      type="radio"
                      name="mobilePrice"
                      checked={selectedPriceRange === range.id}
                      onChange={() => handlePriceChange(range.id)}
                    />
                    <span>{range.label}</span>
                  </label>
                ))}
              </div>
            </div>

            {/* Mobile Fulfillment */}
            <div className="space-y-2 border-t border-slate-100 pt-3">
              <span className="font-extrabold text-slate-900">Fulfillment</span>
              <label className="flex items-center gap-2 font-medium text-slate-700 pt-1">
                <input
                  type="checkbox"
                  checked={homeCollectionOnly}
                  onChange={(e) => handleCollectionToggle(e.target.checked)}
                />
                <span>Home Collection Available</span>
              </label>
            </div>

            <div className="pt-4 border-t border-slate-100 space-y-2">
              <button
                onClick={() => setIsMobileFilterOpen(false)}
                className="w-full py-3 bg-purple-700 text-white font-extrabold rounded-xl text-center"
              >
                Apply Filters ({totalMatches})
              </button>
              <button
                onClick={() => {
                  handleResetFilters();
                  setIsMobileFilterOpen(false);
                }}
                className="w-full py-2 text-slate-500 font-bold text-center"
              >
                Reset
              </button>
            </div>

          </div>
        </div>
      )}

    </div>
  );
}
