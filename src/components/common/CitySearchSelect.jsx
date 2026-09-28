import React, { useState, useRef, useEffect } from 'react';
import { MapPin, ChevronDown, Check, Search } from 'lucide-react';
import { INDIAN_CITIES } from '../../data/indianCities';

export default function CitySearchSelect({ value, onChange, placeholder = "Select or type operational city..." }) {
  const [isOpen, setIsOpen] = useState(false);
  const [searchTerm, setSearchTerm] = useState(value || '');
  const wrapperRef = useRef(null);

  // Sync internal search term when external value changes
  useEffect(() => {
    setSearchTerm(value || '');
  }, [value]);

  // Handle click outside to close dropdown
  useEffect(() => {
    function handleClickOutside(event) {
      if (wrapperRef.current && !wrapperRef.current.contains(event.target)) {
        setIsOpen(false);
      }
    }
    document.addEventListener('mousedown', handleClickOutside);
    return () => document.removeEventListener('mousedown', handleClickOutside);
  }, []);

  // Filter cities: Prefix matches first, then substring matches
  const filteredCities = React.useMemo(() => {
    const query = searchTerm.trim().toLowerCase();
    if (!query) return INDIAN_CITIES;

    const prefixMatches = [];
    const substringMatches = [];

    INDIAN_CITIES.forEach((city) => {
      const lowerCity = city.toLowerCase();
      if (lowerCity.startsWith(query)) {
        prefixMatches.push(city);
      } else if (lowerCity.includes(query)) {
        substringMatches.push(city);
      }
    });

    return [...prefixMatches, ...substringMatches];
  }, [searchTerm]);

  const handleInputChange = (e) => {
    const val = e.target.value;
    setSearchTerm(val);
    onChange(val);
    if (!isOpen) setIsOpen(true);
  };

  const handleSelectCity = (city) => {
    setSearchTerm(city);
    onChange(city);
    setIsOpen(false);
  };

  return (
    <div ref={wrapperRef} className="relative w-full">
      <div className="relative flex items-center">
        <MapPin className="absolute left-3.5 w-4 h-4 text-purple-600 pointer-events-none" />
        
        <input
          type="text"
          value={searchTerm}
          onChange={handleInputChange}
          onFocus={() => setIsOpen(true)}
          placeholder={placeholder}
          className="w-full pl-10 pr-9 py-3 rounded-2xl border border-purple-200 text-xs font-medium focus:outline-none focus:ring-2 focus:ring-purple-600 bg-white shadow-2xs transition-all"
        />

        <button
          type="button"
          onClick={() => setIsOpen(!isOpen)}
          className="absolute right-3 p-1 text-slate-400 hover:text-purple-700 transition-colors focus:outline-none"
        >
          <ChevronDown className={`w-4 h-4 transition-transform duration-200 ${isOpen ? 'rotate-180 text-purple-700' : ''}`} />
        </button>
      </div>

      {/* Floating Dropdown List */}
      {isOpen && (
        <div className="absolute left-0 right-0 top-full mt-1 z-50 bg-white border border-purple-200 rounded-2xl shadow-xl max-h-56 overflow-y-auto py-1 animate-fadeIn divide-y divide-purple-50">
          {filteredCities.length > 0 ? (
            filteredCities.map((city, index) => {
              const isSelected = searchTerm.toLowerCase() === city.toLowerCase();
              return (
                <button
                  key={index}
                  type="button"
                  onClick={() => handleSelectCity(city)}
                  className={`w-full text-left px-4 py-2.5 text-xs font-medium flex items-center justify-between transition-colors cursor-pointer ${
                    isSelected 
                      ? 'bg-purple-50 text-purple-900 font-bold' 
                      : 'text-slate-700 hover:bg-purple-50/70 hover:text-purple-800'
                  }`}
                >
                  <span className="flex items-center gap-2">
                    <MapPin className="w-3.5 h-3.5 text-purple-500 shrink-0" />
                    {city}
                  </span>
                  {isSelected && <Check className="w-3.5 h-3.5 text-purple-700 shrink-0" />}
                </button>
              );
            })
          ) : (
            <div className="px-4 py-3 text-xs text-slate-500 text-center">
              No matching city found. You can type <strong className="text-purple-900">"{searchTerm}"</strong> to use it directly.
            </div>
          )}
        </div>
      )}
    </div>
  );
}
