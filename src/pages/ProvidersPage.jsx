import React, { useState } from 'react';
import { Building2, ShieldCheck, TrendingUp, Handshake, Send, Mail, CheckCircle2, MessageSquare } from 'lucide-react';
import { openWhatsApp, DEFAULT_MESSAGES } from '../utils/whatsapp';

export default function ProvidersPage() {
  const [submitted, setSubmitted] = useState(false);
  const [formData, setFormData] = useState({
    providerName: '',
    contactPerson: '',
    email: '',
    phone: '',
    providerType: 'Diagnostic Lab',
    city: 'Bengaluru',
    message: ''
  });

  const handleSubmit = (e) => {
    e.preventDefault();
    const mailtoSubject = encodeURIComponent(`Provider Partnership Application: ${formData.providerName}`);
    const mailtoBody = encodeURIComponent(
      `Provider Name: ${formData.providerName}\n` +
      `Contact Person: ${formData.contactPerson}\n` +
      `Email: ${formData.email}\n` +
      `Phone: ${formData.phone}\n` +
      `Type: ${formData.providerType}\n` +
      `City: ${formData.city}\n\n` +
      `Message / Details:\n${formData.message}`
    );
    
    // Trigger mailto link directly to hello@healthexpress.care
    window.location.href = `mailto:hello@healthexpress.care?subject=${mailtoSubject}&body=${mailtoBody}`;
    setSubmitted(true);
  };

  return (
    <div className="py-12 md:py-20 bg-slate-50/40">
      <div className="max-w-7xl mx-auto px-4 sm:px-6 lg:px-8 space-y-12">
        
        {/* Header */}
        <div className="text-center max-w-3xl mx-auto space-y-4">
          <div className="inline-block px-3.5 py-1 rounded-full bg-purple-100 text-purple-800 text-xs font-bold uppercase tracking-wider">
            For Healthcare Providers & Partners
          </div>
          <h1 className="text-3xl sm:text-5xl font-extrabold text-slate-900 tracking-tight">
            Partner with Health Express
          </h1>
          <p className="text-base sm:text-lg text-slate-600">
            Expand your diagnostic lab, imaging center, or home nursing service reach. Join our verified partner network and deliver patient care seamlessly.
          </p>
        </div>

        {/* Benefits Grid */}
        <div className="grid grid-cols-1 md:grid-cols-3 gap-8">
          <div className="bg-white p-8 rounded-3xl border border-purple-100 shadow-xs space-y-3">
            <div className="w-10 h-10 rounded-xl bg-purple-100 text-purple-700 flex items-center justify-center">
              <TrendingUp className="w-5 h-5" />
            </div>
            <h3 className="text-xl font-bold text-slate-900">Increased Patient Volume</h3>
            <p className="text-xs text-slate-600 leading-relaxed">
              Connect directly with individuals and families looking for diagnostic tests, imaging, and home healthcare support.
            </p>
          </div>

          <div className="bg-white p-8 rounded-3xl border border-purple-100 shadow-xs space-y-3">
            <div className="w-10 h-10 rounded-xl bg-purple-100 text-purple-700 flex items-center justify-center">
              <Handshake className="w-5 h-5" />
            </div>
            <h3 className="text-xl font-bold text-slate-900">Seamless Coordination</h3>
            <p className="text-xs text-slate-600 leading-relaxed">
              Our dedicated care managers handle initial inquiries, prescription validation, and customer support.
            </p>
          </div>

          <div className="bg-white p-8 rounded-3xl border border-purple-100 shadow-xs space-y-3">
            <div className="w-10 h-10 rounded-xl bg-purple-100 text-purple-700 flex items-center justify-center">
              <ShieldCheck className="w-5 h-5" />
            </div>
            <h3 className="text-xl font-bold text-slate-900">Quality & Trust</h3>
            <p className="text-xs text-slate-600 leading-relaxed">
              Showcase your accreditation and build patient confidence through verified Health Express partner listings.
            </p>
          </div>
        </div>

        {/* Provider Contact Form Section */}
        <div className="max-w-3xl mx-auto bg-white p-8 sm:p-10 rounded-3xl border border-purple-100 shadow-md space-y-6">
          <div className="flex items-center gap-3">
            <div className="w-12 h-12 rounded-2xl bg-purple-100 text-purple-700 flex items-center justify-center">
              <Building2 className="w-6 h-6" />
            </div>
            <div>
              <h3 className="text-2xl font-bold text-slate-900">Provider Partnership Inquiry</h3>
              <p className="text-xs text-slate-500">Inquiries are delivered directly to <span className="font-semibold text-purple-700">hello@healthexpress.care</span></p>
            </div>
          </div>

          {submitted ? (
            <div className="bg-emerald-50 border border-emerald-200 rounded-2xl p-6 text-center space-y-3">
              <CheckCircle2 className="w-10 h-10 text-emerald-600 mx-auto" />
              <h4 className="text-lg font-bold text-slate-900">Application Received!</h4>
              <p className="text-xs text-slate-600">
                Thank you for your interest in partnering with Health Express. Our Provider Relations team will review your details and contact you shortly.
              </p>
            </div>
          ) : (
            <form onSubmit={handleSubmit} className="space-y-4">
              <div className="grid grid-cols-1 sm:grid-cols-2 gap-4">
                <div>
                  <label className="block text-xs font-bold text-slate-700 mb-1">Provider / Facility Name *</label>
                  <input
                    type="text"
                    required
                    value={formData.providerName}
                    onChange={(e) => setFormData({ ...formData, providerName: e.target.value })}
                    placeholder="e.g., Apex Diagnostics Center"
                    className="w-full px-4 py-2.5 rounded-xl border border-slate-200 text-xs focus:outline-none focus:border-purple-600"
                  />
                </div>

                <div>
                  <label className="block text-xs font-bold text-slate-700 mb-1">Contact Person Name *</label>
                  <input
                    type="text"
                    required
                    value={formData.contactPerson}
                    onChange={(e) => setFormData({ ...formData, contactPerson: e.target.value })}
                    placeholder="e.g., Dr. Rajesh Kumar"
                    className="w-full px-4 py-2.5 rounded-xl border border-slate-200 text-xs focus:outline-none focus:border-purple-600"
                  />
                </div>
              </div>

              <div className="grid grid-cols-1 sm:grid-cols-2 gap-4">
                <div>
                  <label className="block text-xs font-bold text-slate-700 mb-1">Email Address *</label>
                  <input
                    type="email"
                    required
                    value={formData.email}
                    onChange={(e) => setFormData({ ...formData, email: e.target.value })}
                    placeholder="hello@facility.com"
                    className="w-full px-4 py-2.5 rounded-xl border border-slate-200 text-xs focus:outline-none focus:border-purple-600"
                  />
                </div>

                <div>
                  <label className="block text-xs font-bold text-slate-700 mb-1">Phone Number *</label>
                  <input
                    type="tel"
                    required
                    value={formData.phone}
                    onChange={(e) => setFormData({ ...formData, phone: e.target.value })}
                    placeholder="Enter phone number"
                    className="w-full px-4 py-2.5 rounded-xl border border-slate-200 text-xs focus:outline-none focus:border-purple-600"
                  />
                </div>
              </div>

              <div className="grid grid-cols-1 sm:grid-cols-2 gap-4">
                <div>
                  <label className="block text-xs font-bold text-slate-700 mb-1">Provider Type</label>
                  <select
                    value={formData.providerType}
                    onChange={(e) => setFormData({ ...formData, providerType: e.target.value })}
                    className="w-full px-4 py-2.5 rounded-xl border border-slate-200 text-xs focus:outline-none focus:border-purple-600 bg-white"
                  >
                    <option value="Diagnostic Lab">Diagnostic Laboratory</option>
                    <option value="Imaging Center">Imaging & Radiology Center</option>
                    <option value="Home Nursing Agency">Home Nursing & Care Agency</option>
                    <option value="Hospital / Clinic">Hospital / Specialty Clinic</option>
                    <option value="Genomics Lab">Genomics & Genetic Lab</option>
                  </select>
                </div>

                <div>
                  <label className="block text-xs font-bold text-slate-700 mb-1">Primary Operational City</label>
                  <input
                    type="text"
                    value={formData.city}
                    onChange={(e) => setFormData({ ...formData, city: e.target.value })}
                    placeholder="e.g., Bengaluru"
                    className="w-full px-4 py-2.5 rounded-xl border border-slate-200 text-xs focus:outline-none focus:border-purple-600"
                  />
                </div>
              </div>

              <div>
                <label className="block text-xs font-bold text-slate-700 mb-1">Message / Facility Overview</label>
                <textarea
                  rows="4"
                  value={formData.message}
                  onChange={(e) => setFormData({ ...formData, message: e.target.value })}
                  placeholder="Tell us about your services, lab accreditations (e.g. NABL), and partnership goals..."
                  className="w-full px-4 py-2.5 rounded-xl border border-slate-200 text-xs focus:outline-none focus:border-purple-600"
                ></textarea>
              </div>

              <div className="pt-2 flex flex-col sm:flex-row items-center gap-4">
                <button
                  type="submit"
                  className="w-full sm:w-auto px-8 py-3.5 rounded-2xl bg-purple-700 hover:bg-purple-800 text-white font-bold text-xs flex items-center justify-center gap-2 shadow-md transition-colors"
                >
                  <Send className="w-4 h-4" />
                  <span>Send to hello@healthexpress.care</span>
                </button>

                <button
                  type="button"
                  onClick={() => openWhatsApp(DEFAULT_MESSAGES.provider)}
                  className="w-full sm:w-auto px-6 py-3.5 rounded-2xl bg-emerald-50 text-emerald-800 hover:bg-emerald-100 border border-emerald-200 font-bold text-xs flex items-center justify-center gap-2 transition-colors"
                >
                  <MessageSquare className="w-4 h-4 text-emerald-600" />
                  <span>Connect via WhatsApp</span>
                </button>
              </div>
            </form>
          )}

        </div>

      </div>
    </div>
  );
}
