import React, { useState, useEffect, useTransition } from 'react';
import { Link, useSearchParams } from 'react-router-dom';
import { 
  FlaskConical, Scan, Dna, Home, Stethoscope, ShieldCheck, 
  Search, Clock, ChevronRight, MessageSquare, Upload, SlidersHorizontal, 
  X, ChevronDown, ChevronUp, ShoppingBag, RefreshCw, Filter, Building2, TestTube2
} from 'lucide-react';
import { fetchServices } from '../services/catalogService';
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

const PRICE_RANGES = [
  { id: 'all', label: 'All Prices' },
  { id: 'under-500', label: 'Under ₹500' },
  { id: '500-1000', label: '₹500 – ₹1,000' },
  { id: '1000-5000', label: '₹1,000 – ₹5,000' },
  { id: 'above-5000', label: 'Above ₹5,000' }
];

const TURNAROUND_TIMES = [
  { id: 'all', label: 'Any Turnaround' },
  { id: 'same-day', label: 'Same Day' },
  { id: '24-hours', label: '24 Hours' },
  { id: '48-hours', label: '48+ Hours' }
];

export default function ServicesPage({ onOpenUploadModal }) {
  const [searchParams, setSearchParams] = useSearchParams();
  const { addToCart } = useCart();
  const [isPending, startTransition] = useTransition();

  // Read URL State parameters
  const initialCategory = searchParams.get('category') || 'all';
  const initialSearch = searchParams.get('search') || '';
  const initialPrice = searchParams.get('price') || 'all';
  const initialProvider = searchParams.get('provider') || 'all';
  const initialCollection = searchParams.get('homeCollection') === 'true';
  const initialSort = searchParams.get('sort') || 'relevance';
  const initialPage = parseInt(searchParams.get('page') || '1', 10);

  // Filter States
  const [searchQuery, setSearchQuery] = useState(initialSearch);
  const [selectedCategory, setSelectedCategory] = useState(initialCategory);
  const [selectedPriceRange, setSelectedPriceRange] = useState(initialPrice);
  const [selectedProvider, setSelectedProvider] = useState(initialProvider);
  const [homeCollectionOnly, setHomeCollectionOnly] = useState(initialCollection);
  const [turnaroundFilter, setTurnaroundFilter] = useState('all');
  const [sortBy, setSortBy] = useState(initialSort);
  const [currentPage, setCurrentPage] = useState(initialPage);
  const [isMobileFilterOpen, setIsMobileFilterOpen] = useState(false);

  // Async Catalog Data State
  const [catalogData, setCatalogData] = useState({
    services: [],
    totalMatches: 0,
    totalPages: 1,
    categories: [],
    providers: []
  });
  const [isLoading, setIsLoading] = useState(true);

  // Collapsible Filter Accordion Sections
  const [openSections, setOpenSections] = useState({
    categories: true,
    price: true,
    provider: true,
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

  // Fetch catalog data when filters or pagination changes
  useEffect(() => {
    let isMounted = true;
    setIsLoading(true);

    fetchServices({
      category: selectedCategory,
      search: searchQuery,
      priceRange: selectedPriceRange,
      homeCollection: homeCollectionOnly,
      turnaround: turnaroundFilter,
      provider: selectedProvider,
      sortBy,
      page: currentPage,
      pageSize: 24
    }).then(res => {
      if (isMounted) {
        setCatalogData(res);
        setIsLoading(false);
      }
    }).catch(err => {
      if (isMounted) {
        console.error('Catalog fetch error:', err);
        setIsLoading(false);
      }
    });

    return () => { isMounted = false; };
  }, [selectedCategory, searchQuery, selectedPriceRange, homeCollectionOnly, turnaroundFilter, selectedProvider, sortBy, currentPage]);

  // Analytics search tracker
  useEffect(() => {
    if (searchQuery.trim().length > 0) {
      const timer = setTimeout(() => {
        import('../utils/analytics.js').then(({ logAnalyticsEvent }) => {
          logAnalyticsEvent('SEARCH', {
            metadata: { results_count: catalogData.totalMatches },
            deduplicate: true
          });
        }).catch(() => {});
      }, 500);
      return () => clearTimeout(timer);
    }
  }, [searchQuery, catalogData.totalMatches]);

  // Filter Event Handlers
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

  const handleProviderChange = (provName) => {
    setSelectedProvider(provName);
    setCurrentPage(1);
    updateUrlParams({ provider: provName, page: 1 });
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
    setCurrentPage(newPage);
    updateUrlParams({ page: newPage });
    window.scrollTo({ top: 220, behavior: 'smooth' });
  };

  const handleResetFilters = () => {
    setSearchQuery('');
    setSelectedCategory('all');
    setSelectedPriceRange('all');
    setSelectedProvider('all');
    setHomeCollectionOnly(false);
    setTurnaroundFilter('all');
    setSortBy('relevance');
    setCurrentPage(1);
    setSearchParams({}, { replace: true });
  };

  const hasActiveFilters = selectedCategory !== 'all' || searchQuery || selectedPriceRange !== 'all' || selectedProvider !== 'all' || homeCollectionOnly || turnaroundFilter !== 'all';

  const { services, totalMatches, totalPages, categories, providers } = catalogData;

  return (
    <div className="min-h-screen bg-slate-50/70 pb-20 text-slate-900 text-left font-sans">
      
      {/* 1. SLEEK COMPACT MARKETPLACE HEADER */}
      <div className="bg-white border-b border-slate-200/80 pt-6 pb-6 shadow-2xs">
        <div className="max-w-7xl mx-auto px-4 sm:px-6 lg:px-8 space-y-5">
          
          <div className="flex flex-col md:flex-row md:items-center justify-between gap-4">
            <div>
              <div className="flex items-center gap-2">
                <span className="text-[10px] font-extrabold uppercase tracking-widest px-2.5 py-0.5 rounded bg-purple-100 text-purple-900 border border-purple-200">
                  Diagnostic Services
                </span>
              </div>
              <h1 className="text-xl sm:text-2xl font-black text-slate-900 tracking-tight mt-1.5">
                Book Diagnostic Tests, Scans & Health Checks
              </h1>
              <p className="text-xs sm:text-sm text-slate-600 font-medium mt-1">
                Compare trusted labs and scan centers, then book at a time that works for you.
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

          {/* Focal Search Bar Section */}
          <div className="space-y-2 pt-1 max-w-3xl">
            <label className="block text-xs font-extrabold text-slate-800 uppercase tracking-wide flex items-center gap-1.5">
              <Search className="w-3.5 h-3.5 text-purple-700" />
              <span>Search services or find a test or scan</span>
            </label>
            <div className="relative">
              <Search className="w-4 h-4 text-purple-700 absolute left-3.5 top-1/2 -translate-y-1/2" />
              <input
                type="text"
                value={searchQuery}
                onChange={(e) => handleSearchChange(e.target.value)}
                placeholder="Search Lipid Profile, CBC, MRI, Thyroid"
                className="w-full pl-10 pr-24 py-3 bg-slate-50 border border-slate-300 rounded-xl text-xs sm:text-sm font-semibold text-slate-900 placeholder:text-slate-400 focus:outline-none focus:ring-2 focus:ring-purple-600 focus:border-purple-600 focus:bg-white transition-all shadow-xs"
              />
              {searchQuery ? (
                <button
                  onClick={() => handleSearchChange('')}
                  className="absolute right-3 top-1/2 -translate-y-1/2 text-xs font-bold text-slate-400 hover:text-slate-700 cursor-pointer"
                >
                  Clear
                </button>
              ) : (
                <span className="absolute right-3 top-1/2 -translate-y-1/2 text-[10px] font-bold uppercase tracking-wider text-slate-400 bg-white px-2 py-1 rounded border border-slate-200">
                  Search
                </span>
              )}
            </div>

            {/* Trust Strip below Search */}
            <div className="flex items-center gap-2 text-xs font-extrabold text-slate-700 pt-1 flex-wrap">
              <span>Fast booking</span>
              <span className="text-slate-300 font-normal">•</span>
              <span>Accredited providers</span>
              <span className="text-slate-300 font-normal">•</span>
              <span>Reports in as little as 4 hours</span>
            </div>
          </div>

          {/* Dynamic Horizontal Category Tabs */}
          <div className="flex items-center gap-1.5 overflow-x-auto pt-1 pb-1 no-scrollbar border-t border-slate-100">
            <button
              onClick={() => handleCategoryChange('all')}
              className={`px-3 py-1.5 rounded-lg text-xs font-bold transition-all whitespace-nowrap cursor-pointer ${
                selectedCategory === 'all'
                  ? 'bg-purple-800 text-white shadow-2xs'
                  : 'bg-slate-100 hover:bg-slate-200 text-slate-700'
              }`}
            >
              All Categories ({totalMatches.toLocaleString()})
            </button>

            {categories.map((cat) => {
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
                  <span>{cat.name} ({cat.count})</span>
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
              Showing <strong className="text-slate-900 font-extrabold">{services.length}</strong> of{' '}
              <strong className="text-purple-900 font-black">{totalMatches.toLocaleString()}</strong> services
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
                <option value="price-low">Price: Low to High</option>
                <option value="price-high">Price: High to Low</option>
                <option value="name-az">Name: A–Z</option>
                <option value="name-za">Name: Z–A</option>
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

        {/* PARALLEL DUAL-COLUMN LAYOUT WITH STICKY BOTTOM BOUNDARY */}
        <div className="grid grid-cols-1 lg:grid-cols-12 gap-6">
          
          {/* 3. LEFT FILTER SIDEBAR (DESKTOP) */}
          <aside className="hidden lg:block lg:col-span-3">
            <div className="sticky bottom-6 space-y-4">
              <div className="bg-white rounded-2xl border border-slate-200 shadow-2xs p-4 space-y-5 text-xs">
                
                <div className="flex items-center justify-between border-b border-slate-100 pb-3">
                  <span className="font-black text-slate-900 uppercase tracking-wider flex items-center gap-1.5 text-xs">
                    <Filter className="w-3.5 h-3.5 text-purple-700" /> Catalog Filters
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

                      {categories.map((cat) => (
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
                            {cat.count}
                          </span>
                        </label>
                      ))}
                    </div>
                  )}
                </div>

                {/* Filter Group 2: Provider */}
                {providers && providers.length > 0 && (
                  <div className="space-y-2 border-b border-slate-100 pb-4">
                    <button
                      onClick={() => toggleSection('provider')}
                      className="w-full flex items-center justify-between font-extrabold text-slate-900 text-xs cursor-pointer"
                    >
                      <span>Healthcare Provider</span>
                      {openSections.provider ? <ChevronUp className="w-3.5 h-3.5 text-slate-400" /> : <ChevronDown className="w-3.5 h-3.5 text-slate-400" />}
                    </button>

                    {openSections.provider && (
                      <div className="space-y-1.5 pt-1">
                        <label className="flex items-center gap-2 font-medium text-slate-700 cursor-pointer hover:text-purple-900">
                          <input
                            type="radio"
                            name="sidebarProvider"
                            checked={selectedProvider === 'all'}
                            onChange={() => handleProviderChange('all')}
                            className="text-purple-700 focus:ring-purple-600"
                          />
                          <span>All Providers</span>
                        </label>

                        {providers.map((prov) => (
                          <label key={prov} className="flex items-center gap-2 font-medium text-slate-700 cursor-pointer hover:text-purple-900">
                            <input
                              type="radio"
                              name="sidebarProvider"
                              checked={selectedProvider === prov}
                              onChange={() => handleProviderChange(prov)}
                              className="text-purple-700 focus:ring-purple-600"
                            />
                            <span className="truncate max-w-[160px]">{prov}</span>
                          </label>
                        ))}
                      </div>
                    )}
                  </div>
                )}

                {/* Filter Group 3: Price Range */}
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

                {/* Filter Group 4: Service Fulfillment */}
                <div className="space-y-2 border-b border-slate-100 pb-4">
                  <button
                    onClick={() => toggleSection('collection')}
                    className="w-full flex items-center justify-between font-extrabold text-slate-900 text-xs cursor-pointer"
                  >
                    <span>Service Fulfillment</span>
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

                {/* Filter Group 5: Turnaround Time */}
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
          </aside>

          {/* 4. RIGHT SERVICE RESULTS CATALOG (AT LEAST 3 CARDS IN A ROW ON DESKTOP) */}
          <main className="col-span-1 lg:col-span-9 space-y-6">
            
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
            ) : services.length > 0 ? (
              /* SLEEK COMPACT MARKETPLACE CARDS (3 PER ROW ON DESKTOP, NO IMAGES) */
              <div className="grid grid-cols-1 md:grid-cols-2 lg:grid-cols-3 gap-4 items-stretch">
                {services.map((service) => {
                  const IconComp = categoryIconMap[service.category_id] || FlaskConical;
                  const discountPrice = service.selling_price || service.discount_price || service.mrp;
                  const mrpPrice = service.mrp || service.price;

                  return (
                    <div
                      key={service.id || service.slug}
                      className="bg-white rounded-2xl border border-slate-200/90 hover:border-purple-300 p-4 shadow-2xs hover:shadow-md transition-all duration-200 flex flex-col justify-between text-left group min-h-[220px]"
                    >
                      <div className="space-y-2.5">
                        
                        {/* Top Category Badge & Fulfillment Tag */}
                        <div className="flex items-center justify-between gap-2 border-b border-slate-100 pb-2">
                          <span className="text-[10px] font-extrabold uppercase tracking-wider text-purple-900 bg-purple-50 px-2 py-0.5 rounded border border-purple-100 flex items-center gap-1">
                            <IconComp className="w-3 h-3 text-purple-700 shrink-0" />
                            <span>{service.category_name || 'Healthcare'}</span>
                          </span>

                          <span className={`text-[10px] font-extrabold px-2 py-0.5 rounded ${
                            service.centre_visit_required
                              ? 'bg-amber-50 text-amber-800 border border-amber-200'
                              : 'bg-emerald-50 text-emerald-800 border border-emerald-200'
                          }`}>
                            {service.centre_visit_required ? 'Centre Visit' : '✓ Home Collection'}
                          </span>
                        </div>

                        {/* Service Code & Title */}
                        <div>
                          {service.service_code && (
                            <span className="text-[10px] font-mono text-slate-400 font-bold">
                              Code: {service.service_code}
                            </span>
                          )}
                          <Link
                            to={`/services/${service.slug}`}
                            className="text-sm font-extrabold text-slate-900 group-hover:text-purple-800 transition-colors line-clamp-1 leading-snug block"
                          >
                            {service.name}
                          </Link>
                          {service.description && (
                            <p className="text-[11px] text-slate-500 line-clamp-2 leading-normal font-normal mt-0.5">
                              {service.description}
                            </p>
                          )}
                        </div>

                        {/* Compact Metadata Strip */}
                        <div className="flex flex-wrap items-center gap-2 text-[10px] font-semibold text-slate-500 pt-0.5">
                          <span className="flex items-center gap-1">
                            <Clock className="w-3 h-3 text-purple-700 shrink-0" />
                            {service.turnaround_time}
                          </span>
                          {service.provider && (
                            <span className="flex items-center gap-1">
                              <Building2 className="w-3 h-3 text-slate-400 shrink-0" />
                              <span className="truncate max-w-[100px]">{service.provider}</span>
                            </span>
                          )}
                          {service.parameters_count > 0 && (
                            <span>• {service.parameters_count} Tests</span>
                          )}
                        </div>

                      </div>

                      {/* Pricing & Footer Actions */}
                      <div className="pt-3 border-t border-slate-100 space-y-2.5 mt-3">
                        <div className="flex items-baseline justify-between">
                          <div className="flex items-baseline gap-1.5">
                            <span className="text-lg font-black text-slate-900">₹{discountPrice}</span>
                            {mrpPrice && mrpPrice > discountPrice && (
                              <span className="text-xs text-slate-400 line-through">₹{mrpPrice}</span>
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
                            onClick={() => addToCart({
                              ...service,
                              price: discountPrice
                            })}
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
                    Try clearing filters or searching for another test, scan, or service.
                  </p>
                </div>
                <button
                  onClick={handleResetFilters}
                  className="px-4 py-2 rounded-xl bg-purple-700 hover:bg-purple-800 text-white font-bold text-xs shadow-2xs inline-flex items-center gap-1.5 cursor-pointer"
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
                  Page <strong className="text-slate-900">{currentPage}</strong> of <strong className="text-slate-900">{totalPages}</strong> ({totalMatches.toLocaleString()} total items)
                </span>

                <div className="flex items-center gap-1.5">
                  <button
                    disabled={currentPage <= 1}
                    onClick={() => handlePageChange(currentPage - 1)}
                    className="px-3 py-1.5 rounded-lg border border-slate-200 hover:bg-purple-50 text-slate-700 disabled:opacity-40 disabled:cursor-not-allowed transition-colors cursor-pointer"
                  >
                    Previous
                  </button>

                  {Array.from({ length: Math.min(5, totalPages) }, (_, i) => {
                    let pageNum = i + 1;
                    if (totalPages > 5 && currentPage > 3) {
                      pageNum = currentPage - 3 + i;
                      if (pageNum > totalPages) pageNum = totalPages - (4 - i);
                    }
                    return (
                      <button
                        key={pageNum}
                        onClick={() => handlePageChange(pageNum)}
                        className={`w-8 h-8 rounded-lg font-extrabold transition-all cursor-pointer ${
                          currentPage === pageNum
                            ? 'bg-purple-800 text-white shadow-2xs'
                            : 'border border-slate-200 hover:bg-purple-50 text-slate-700'
                        }`}
                      >
                        {pageNum}
                      </button>
                    );
                  })}

                  <button
                    disabled={currentPage >= totalPages}
                    onClick={() => handlePageChange(currentPage + 1)}
                    className="px-3 py-1.5 rounded-lg border border-slate-200 hover:bg-purple-50 text-slate-700 disabled:opacity-40 disabled:cursor-not-allowed transition-colors cursor-pointer"
                  >
                    Next
                  </button>
                </div>
              </div>
            )}

          </main>

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
                {categories.map((cat) => (
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

            <div className="pt-4 border-t border-slate-100 space-y-2">
              <button
                onClick={() => setIsMobileFilterOpen(false)}
                className="w-full py-3 bg-purple-700 text-white font-extrabold rounded-xl text-center cursor-pointer"
              >
                Apply Filters ({totalMatches.toLocaleString()})
              </button>
              <button
                onClick={() => {
                  handleResetFilters();
                  setIsMobileFilterOpen(false);
                }}
                className="w-full py-2 text-slate-500 font-bold text-center cursor-pointer"
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
