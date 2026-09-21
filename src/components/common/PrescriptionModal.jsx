import React, { useState, useEffect, useRef } from 'react';
import { 
  X, MessageSquare, FileText, CheckCircle2, ShieldCheck, Upload, 
  AlertCircle, ArrowRight, Loader2, Copy, Check, FileCheck, RefreshCw, User, Phone, MapPin, Mail, Trash2, Plus
} from 'lucide-react';
import { openWhatsApp } from '../../utils/whatsapp';
import { validatePrescriptionFile, submitGuestPrescription } from '../../services/prescriptionService';
import { validateAndNormalizeInternationalPhone, POPULAR_COUNTRY_CODES } from '../../utils/phone';

export default function PrescriptionModal({ isOpen, onClose }) {
  // Wizard Steps: 1 = File Upload, 2 = Patient Details, 3 = Confirmation
  const [step, setStep] = useState(1);

  // Step 1 State: Files (Multi-file support)
  const [selectedFiles, setSelectedFiles] = useState([]);
  const [isDragOver, setIsDragOver] = useState(false);
  const fileInputRef = useRef(null);

  // Step 2 State: Patient Form
  const [fullName, setFullName] = useState('');
  const [countryCode, setCountryCode] = useState('+91');
  const [phone, setPhone] = useState('');
  const [city, setCity] = useState('Bengaluru');
  const [email, setEmail] = useState('');
  const [notes, setNotes] = useState('');

  // Form Status
  const [isSubmitting, setIsSubmitting] = useState(false);
  const [errorMessage, setErrorMessage] = useState('');
  const [phoneError, setPhoneError] = useState('');

  // Step 3 State: Success Result
  const [submissionResult, setSubmissionResult] = useState(null);
  const [isCopied, setIsCopied] = useState(false);

  // Lock body scroll when modal is active
  useEffect(() => {
    if (isOpen) {
      document.body.style.overflow = 'hidden';
    } else {
      document.body.style.overflow = '';
    }
    return () => {
      document.body.style.overflow = '';
    };
  }, [isOpen]);

  // Reset modal state on close
  const handleClose = () => {
    onClose();
    setTimeout(() => {
      setStep(1);
      setSelectedFiles([]);
      setFullName('');
      setPhone('');
      setCity('Bengaluru');
      setEmail('');
      setNotes('');
      setErrorMessage('');
      setPhoneError('');
      setIsSubmitting(false);
      setSubmissionResult(null);
    }, 300);
  };

  if (!isOpen) return null;

  // File Selector & Multi-file Add Handler
  const handleFilesAdd = (newFiles) => {
    setErrorMessage('');
    if (!newFiles || newFiles.length === 0) return;

    const validFiles = [];
    for (const file of newFiles) {
      const validation = validatePrescriptionFile(file);
      if (!validation.isValid) {
        setErrorMessage(`${file.name}: ${validation.error}`);
        return;
      }
      validFiles.push(file);
    }

    setSelectedFiles(prev => {
      const existingSignatures = new Set(prev.map(f => `${f.name}_${f.size}`));
      const uniqueNew = validFiles.filter(f => !existingSignatures.has(`${f.name}_${f.size}`));
      return [...prev, ...uniqueNew];
    });
  };

  const handleRemoveFile = (indexToRemove) => {
    setSelectedFiles(prev => prev.filter((_, idx) => idx !== indexToRemove));
  };

  const handleDragOver = (e) => {
    e.preventDefault();
    setIsDragOver(true);
  };

  const handleDragLeave = (e) => {
    e.preventDefault();
    setIsDragOver(false);
  };

  const handleDrop = (e) => {
    e.preventDefault();
    setIsDragOver(false);
    if (e.dataTransfer.files && e.dataTransfer.files.length > 0) {
      handleFilesAdd(Array.from(e.dataTransfer.files));
    }
  };

  // Step 1 -> Step 2
  const handleNextToDetails = () => {
    if (selectedFiles.length === 0) {
      setErrorMessage('Please select or drop at least one prescription file before continuing.');
      return;
    }
    setErrorMessage('');
    setStep(2);
  };

  // Step 2 Form Validation & Real-time Phone Formatting
  const handlePhoneChange = (e) => {
    const val = e.target.value;
    setPhone(val);
    if (val.trim()) {
      const check = validateAndNormalizeInternationalPhone(val, countryCode);
      if (!check.isValid && val.replace(/\D/g, '').length >= 10) {
        setPhoneError(check.error);
      } else {
        setPhoneError('');
      }
    } else {
      setPhoneError('');
    }
  };

  // Final Form Submission
  const handleSubmitPrescription = async (e) => {
    e.preventDefault();
    setErrorMessage('');

    if (!fullName || fullName.trim().length < 2) {
      setErrorMessage('Please enter patient full name (at least 2 characters).');
      return;
    }

    const phoneCheck = validateAndNormalizeInternationalPhone(phone, countryCode);
    if (!phoneCheck.isValid) {
      setPhoneError(phoneCheck.error);
      setErrorMessage(phoneCheck.error);
      return;
    }

    if (selectedFiles.length === 0) {
      setErrorMessage('Prescription file is missing. Please go back to Step 1.');
      return;
    }

    setIsSubmitting(true);

    try {
      const result = await submitGuestPrescription({
        files: selectedFiles,
        file: selectedFiles[0],
        fullName,
        phone,
        countryCode,
        city,
        email,
        notes
      });

      if (!result.success) {
        setErrorMessage(result.error || 'Failed to submit prescription. Please try again.');
        setIsSubmitting(false);
        return;
      }

      setSubmissionResult(result);
      setStep(3);
    } catch (err) {
      console.error('Modal Submit Error:', err);
      setErrorMessage('We couldn\'t submit your prescription right now. Please try again.');
    } finally {
      setIsSubmitting(false);
    }
  };

  // WhatsApp Redirect Action
  const handleContinueWhatsApp = () => {
    if (!submissionResult) return;
    const enquiryCode = submissionResult.enquiry_code;
    const message = `Hello Health Express!\n\nI uploaded my prescription through the website.\n\nEnquiry ID: ${enquiryCode}\nName: ${submissionResult.patient_name}\n\nPlease review and assist me with the next steps.`;
    openWhatsApp(message);
  };

  // Copy Enquiry Code Helper
  const handleCopyCode = () => {
    if (!submissionResult?.enquiry_code) return;
    navigator.clipboard.writeText(submissionResult.enquiry_code);
    setIsCopied(true);
    setTimeout(() => setIsCopied(false), 2000);
  };

  // Format File Size
  const formatFileSize = (bytes) => {
    if (!bytes) return '0 KB';
    const k = 1024;
    const sizes = ['Bytes', 'KB', 'MB'];
    const i = Math.floor(Math.log(bytes) / Math.log(k));
    return parseFloat((bytes / Math.pow(k, i)).toFixed(1)) + ' ' + sizes[i];
  };

  return (
    <div 
      className="fixed inset-0 z-50 flex items-center justify-center p-3 sm:p-4 bg-slate-950/70 backdrop-blur-sm transition-opacity animate-in fade-in"
      onClick={handleClose}
    >
      <div 
        className="relative w-full max-w-lg bg-white rounded-3xl shadow-2xl overflow-hidden border border-purple-100 p-5 sm:p-8 max-h-[92vh] overflow-y-auto flex flex-col justify-between"
        onClick={(e) => e.stopPropagation()}
      >
        {/* Close Button */}
        <button
          onClick={handleClose}
          className="absolute top-4 right-4 p-2.5 text-slate-400 hover:text-slate-700 hover:bg-slate-100 rounded-full transition-colors touch-target"
          aria-label="Close modal"
        >
          <X className="w-5 h-5" />
        </button>

        {/* Wizard Header & Progress Bar */}
        <div>
          <div className="flex items-center gap-3 mb-3 pr-8">
            <div className="w-11 h-11 sm:w-12 sm:h-12 rounded-2xl bg-purple-700 text-white flex items-center justify-center shrink-0 shadow-md">
              {step === 3 ? <FileCheck className="w-6 h-6" /> : <FileText className="w-6 h-6" />}
            </div>
            <div>
              <h3 className="text-lg sm:text-xl font-bold text-slate-900 leading-snug">
                {step === 1 && 'Upload Prescription'}
                {step === 2 && 'Patient Details'}
                {step === 3 && 'Prescription Received'}
              </h3>
              <p className="text-xs text-purple-700 font-semibold">
                {step === 1 && 'Step 1 of 3: Select Document or Photo'}
                {step === 2 && 'Step 2 of 3: Contact & Service Info'}
                {step === 3 && 'System of Record Registered'}
              </p>
            </div>
          </div>

          {/* 3 Step Indicator Dots */}
          <div className="flex items-center gap-2 mb-6">
            <div className={`h-1.5 flex-1 rounded-full transition-colors ${step >= 1 ? 'bg-purple-700' : 'bg-slate-200'}`} />
            <div className={`h-1.5 flex-1 rounded-full transition-colors ${step >= 2 ? 'bg-purple-700' : 'bg-slate-200'}`} />
            <div className={`h-1.5 flex-1 rounded-full transition-colors ${step >= 3 ? 'bg-emerald-500' : 'bg-slate-200'}`} />
          </div>

          {/* Global Error Banner */}
          {errorMessage && (
            <div className="mb-4 p-3.5 rounded-2xl bg-rose-50 border border-rose-200 text-rose-800 text-xs flex items-start gap-2.5 animate-in fade-in">
              <AlertCircle className="w-4 h-4 text-rose-600 shrink-0 mt-0.5" />
              <span className="leading-relaxed font-medium">{errorMessage}</span>
            </div>
          )}

          {/* =========================================
              STEP 1: FILE SELECTION
             ========================================= */}
          {step === 1 && (
            <div className="space-y-5">
              <p className="text-slate-600 text-xs sm:text-sm leading-relaxed">
                Upload one or multiple prescriptions, medical orders, or test recommendation slips in a single submission. No account creation required.
              </p>

              {/* Hidden File Input */}
              <input
                ref={fileInputRef}
                type="file"
                multiple
                accept=".pdf,.jpg,.jpeg,.png,.webp,.doc,.docx"
                onChange={(e) => e.target.files && handleFilesAdd(Array.from(e.target.files))}
                className="hidden"
              />

              {selectedFiles.length > 0 ? (
                <div className="space-y-3">
                  <div className="flex items-center justify-between">
                    <span className="text-xs font-bold text-slate-700">
                      Selected Files ({selectedFiles.length})
                    </span>
                    <button
                      type="button"
                      onClick={() => fileInputRef.current?.click()}
                      className="inline-flex items-center gap-1 text-xs text-purple-700 font-bold hover:text-purple-900"
                    >
                      <Plus className="w-3.5 h-3.5" />
                      <span>Add More Files</span>
                    </button>
                  </div>

                  <div className="max-h-56 overflow-y-auto space-y-2 pr-1">
                    {selectedFiles.map((file, idx) => (
                      <div 
                        key={`${file.name}_${idx}`} 
                        className="flex items-center justify-between p-3 rounded-2xl bg-emerald-50/60 border border-emerald-200/70"
                      >
                        <div className="flex items-center gap-3 overflow-hidden">
                          <div className="w-9 h-9 rounded-xl bg-emerald-500 text-white flex items-center justify-center shrink-0">
                            <FileCheck className="w-5 h-5" />
                          </div>
                          <div className="overflow-hidden">
                            <div className="text-xs font-bold text-slate-900 truncate max-w-[200px] sm:max-w-[240px]">
                              {file.name}
                            </div>
                            <div className="text-[10px] text-slate-500">
                              {formatFileSize(file.size)} • {file.name.split('.').pop()?.toUpperCase()}
                            </div>
                          </div>
                        </div>

                        <button
                          type="button"
                          onClick={() => handleRemoveFile(idx)}
                          className="p-1.5 rounded-lg text-slate-400 hover:text-rose-600 hover:bg-rose-50 transition-colors"
                          title="Remove file"
                        >
                          <Trash2 className="w-4 h-4" />
                        </button>
                      </div>
                    ))}
                  </div>
                </div>
              ) : (
                /* Drag and Drop Zone */
                <div
                  onDragOver={handleDragOver}
                  onDragLeave={handleDragLeave}
                  onDrop={handleDrop}
                  onClick={() => fileInputRef.current?.click()}
                  className={`border-2 border-dashed rounded-3xl p-6 sm:p-8 text-center cursor-pointer transition-all ${
                    isDragOver 
                      ? 'border-purple-600 bg-purple-50/80 scale-[0.99]' 
                      : 'border-purple-200 hover:border-purple-400 bg-purple-50/30'
                  }`}
                >
                  <div className="space-y-3">
                    <div className="w-12 h-12 rounded-2xl bg-purple-100 text-purple-700 flex items-center justify-center mx-auto shadow-xs">
                      <Upload className="w-6 h-6" />
                    </div>
                    <div>
                      <span className="text-sm font-bold text-purple-900">Click to upload files</span>
                      <span className="text-sm text-slate-500"> or drag & drop</span>
                    </div>
                    <p className="text-[11px] text-slate-400">
                      Select multiple documents at once. Formats: PDF, JPG, PNG, WEBP, DOC, DOCX (Max 10 MB per file)
                    </p>
                  </div>
                </div>
              )}

              {/* Step 1 Action Button */}
              <button
                type="button"
                onClick={handleNextToDetails}
                disabled={selectedFiles.length === 0}
                className="w-full py-3.5 px-6 rounded-2xl bg-purple-700 hover:bg-purple-800 disabled:opacity-40 disabled:cursor-not-allowed text-white font-bold text-sm flex items-center justify-center gap-2 shadow-md transition-all touch-target"
              >
                <span>Continue to Patient Details ({selectedFiles.length} file{selectedFiles.length > 1 ? 's' : ''})</span>
                <ArrowRight className="w-4 h-4" />
              </button>
            </div>
          )}

          {/* =========================================
              STEP 2: PATIENT DETAILS FORM
             ========================================= */}
          {step === 2 && (
            <form onSubmit={handleSubmitPrescription} className="space-y-4">
              
              {/* Selected Files Summary Bar */}
              <div className="flex items-center justify-between p-3 rounded-2xl bg-purple-50 border border-purple-100 text-xs">
                <div className="flex items-center gap-2 overflow-hidden">
                  <FileText className="w-4 h-4 text-purple-700 shrink-0" />
                  <span className="font-semibold text-slate-900 truncate">
                    {selectedFiles.length === 1 
                      ? selectedFiles[0].name 
                      : `${selectedFiles.length} Prescription Documents Selected`}
                  </span>
                </div>
                <button
                  type="button"
                  onClick={() => setStep(1)}
                  className="text-purple-700 font-bold hover:underline shrink-0 text-[11px]"
                >
                  Edit Files
                </button>
              </div>

              {/* Full Name */}
              <div>
                <label className="block text-xs font-bold text-slate-700 mb-1">
                  Full Name <span className="text-rose-500">*</span>
                </label>
                <div className="relative">
                  <User className="w-4 h-4 text-slate-400 absolute left-3.5 top-1/2 -translate-y-1/2" />
                  <input
                    type="text"
                    required
                    value={fullName}
                    onChange={(e) => setFullName(e.target.value)}
                    placeholder="Enter patient's full name"
                    className="w-full pl-10 pr-4 py-2.5 rounded-xl border border-slate-200 text-xs font-medium text-slate-900 focus:ring-2 focus:ring-purple-600 focus:border-purple-600 outline-none"
                  />
                </div>
              </div>

              {/* Mobile Number with Country Code Dropdown */}
              <div>
                <label className="block text-xs font-bold text-slate-700 mb-1">
                  Mobile Phone Number <span className="text-rose-500">*</span>
                </label>
                <div className="flex gap-2">
                  <select
                    value={countryCode}
                    onChange={(e) => {
                      setCountryCode(e.target.value);
                      if (phone) {
                        const check = validateAndNormalizeInternationalPhone(phone, e.target.value);
                        setPhoneError(check.isValid ? '' : check.error);
                      }
                    }}
                    className="px-2.5 py-2.5 rounded-xl border border-slate-200 text-xs font-bold text-purple-900 bg-purple-50/80 focus:ring-2 focus:ring-purple-600 outline-none shrink-0 cursor-pointer"
                  >
                    {POPULAR_COUNTRY_CODES.map((c) => (
                      <option key={c.code} value={c.code}>
                        {c.flag} {c.code} ({c.country})
                      </option>
                    ))}
                  </select>

                  <div className="relative flex-1">
                    <Phone className="w-3.5 h-3.5 text-slate-400 absolute left-3.5 top-1/2 -translate-y-1/2" />
                    <input
                      type="tel"
                      required
                      value={phone}
                      onChange={handlePhoneChange}
                      placeholder={countryCode === '+91' ? '98765 43210' : 'Enter mobile number'}
                      className={`w-full pl-10 pr-4 py-2.5 rounded-xl border text-xs font-medium text-slate-900 focus:ring-2 focus:ring-purple-600 outline-none ${
                        phoneError ? 'border-rose-400 bg-rose-50/20' : 'border-slate-200'
                      }`}
                    />
                  </div>
                </div>
                {phoneError && <p className="text-[11px] text-rose-600 mt-1">{phoneError}</p>}
                <p className="text-[10px] text-slate-400 mt-1">International & Indian numbers supported for WhatsApp coordination.</p>
              </div>

              {/* City / Locality */}
              <div>
                <label className="block text-xs font-bold text-slate-700 mb-1">
                  City / Locality
                </label>
                <div className="relative">
                  <MapPin className="w-4 h-4 text-slate-400 absolute left-3.5 top-1/2 -translate-y-1/2" />
                  <input
                    type="text"
                    value={city}
                    onChange={(e) => setCity(e.target.value)}
                    placeholder="e.g. Bengaluru, Koramangala"
                    className="w-full pl-10 pr-4 py-2.5 rounded-xl border border-slate-200 text-xs font-medium text-slate-900 focus:ring-2 focus:ring-purple-600 outline-none"
                  />
                </div>
              </div>

              {/* Optional Email & Notes */}
              <div className="grid grid-cols-1 sm:grid-cols-2 gap-3">
                <div>
                  <label className="block text-xs font-bold text-slate-700 mb-1">
                    Email <span className="text-slate-400 font-normal">(Optional)</span>
                  </label>
                  <input
                    type="email"
                    value={email}
                    onChange={(e) => setEmail(e.target.value)}
                    placeholder="patient@example.com"
                    className="w-full px-3 py-2 rounded-xl border border-slate-200 text-xs text-slate-900 focus:ring-2 focus:ring-purple-600 outline-none"
                  />
                </div>
                <div>
                  <label className="block text-xs font-bold text-slate-700 mb-1">
                    Notes <span className="text-slate-400 font-normal">(Optional)</span>
                  </label>
                  <input
                    type="text"
                    value={notes}
                    onChange={(e) => setNotes(e.target.value)}
                    placeholder="Specific test or nursing requirement"
                    className="w-full px-3 py-2 rounded-xl border border-slate-200 text-xs text-slate-900 focus:ring-2 focus:ring-purple-600 outline-none"
                  />
                </div>
              </div>

              {/* Step 2 Action Buttons */}
              <div className="flex items-center gap-3 pt-2">
                <button
                  type="button"
                  onClick={() => setStep(1)}
                  disabled={isSubmitting}
                  className="px-4 py-3 rounded-2xl border border-slate-200 hover:bg-slate-50 text-slate-700 font-bold text-xs transition-colors"
                >
                  Back
                </button>

                <button
                  type="submit"
                  disabled={isSubmitting}
                  className="flex-1 py-3.5 px-6 rounded-2xl bg-purple-700 hover:bg-purple-800 disabled:opacity-50 text-white font-bold text-sm flex items-center justify-center gap-2 shadow-md transition-all touch-target"
                >
                  {isSubmitting ? (
                    <>
                      <Loader2 className="w-4 h-4 animate-spin text-white" />
                      <span>Registering Enquiry...</span>
                    </>
                  ) : (
                    <>
                      <span>Submit Prescription</span>
                      <ArrowRight className="w-4 h-4" />
                    </>
                  )}
                </button>
              </div>
            </form>
          )}

          {/* =========================================
              STEP 3: CONFIRMATION & WHATSAPP
             ========================================= */}
          {step === 3 && submissionResult && (
            <div className="space-y-5 text-center py-2 animate-in fade-in">
              
              {/* Success Badge */}
              <div className="w-16 h-16 rounded-full bg-emerald-100 text-emerald-600 border-4 border-emerald-50 flex items-center justify-center mx-auto shadow-md animate-bounce-subtle">
                <CheckCircle2 className="w-8 h-8" />
              </div>

              <div className="space-y-1">
                <h4 className="text-xl font-extrabold text-slate-900">Prescription Received!</h4>
                <p className="text-xs text-slate-600 max-w-sm mx-auto leading-relaxed">
                  {submissionResult.file_count && submissionResult.file_count > 1 
                    ? `All ${submissionResult.file_count} prescription documents have been securely uploaded.`
                    : 'Your prescription has been securely saved.'} Our care team will review and contact you on WhatsApp shortly.
                </p>
              </div>

              {/* Human Readable Enquiry ID Box */}
              <div className="bg-purple-50/80 border border-purple-200 rounded-2xl p-4 max-w-xs mx-auto space-y-1.5 shadow-xs">
                <div className="text-[10px] font-extrabold uppercase tracking-wider text-purple-700">
                  YOUR ENQUIRY ID
                </div>
                <div className="flex items-center justify-center gap-2">
                  <span className="text-lg font-black text-purple-950 font-mono tracking-wide">
                    {submissionResult.enquiry_code}
                  </span>
                  <button
                    onClick={handleCopyCode}
                    className="p-1.5 rounded-lg bg-white border border-purple-200 text-purple-700 hover:bg-purple-100 transition-colors"
                    title="Copy Enquiry ID"
                  >
                    {isCopied ? <Check className="w-3.5 h-3.5 text-emerald-600 stroke-[3]" /> : <Copy className="w-3.5 h-3.5" />}
                  </button>
                </div>
                {submissionResult.isDemoMode && (
                  <div className="text-[10px] font-bold text-amber-700 bg-amber-50 px-2 py-0.5 rounded-md border border-amber-200 inline-block">
                    DEMO / LOCAL MODE
                  </div>
                )}
              </div>

              {/* WhatsApp Call to Action */}
              <div className="space-y-3 pt-2">
                <button
                  type="button"
                  onClick={handleContinueWhatsApp}
                  className="w-full py-4 px-6 rounded-2xl bg-emerald-600 hover:bg-emerald-700 text-white font-extrabold text-sm flex items-center justify-center gap-3 shadow-lg shadow-emerald-600/25 active:scale-[0.98] transition-all touch-target"
                >
                  <MessageSquare className="w-5 h-5 fill-current" />
                  <span>Continue on WhatsApp</span>
                </button>

                <button
                  type="button"
                  onClick={() => {
                    setStep(1);
                    setSelectedFiles([]);
                    setErrorMessage('');
                  }}
                  className="text-xs text-purple-700 hover:text-purple-900 font-bold hover:underline block mx-auto"
                >
                  Submit Another Prescription
                </button>
              </div>

            </div>
          )}
        </div>

        {/* Footer Security Badge */}
        <div className="flex items-center justify-center gap-1.5 text-[11px] text-slate-500 pt-4 border-t border-slate-100 mt-4">
          <ShieldCheck className="w-4 h-4 text-purple-600 shrink-0" />
          <span>Private & Secure System of Record • Health Express</span>
        </div>

      </div>
    </div>
  );
}
