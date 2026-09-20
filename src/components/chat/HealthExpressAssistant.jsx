import React, { useState, useEffect, useRef } from 'react';
import { useLocation, useNavigate } from 'react-router-dom';
import { 
  MessageSquare, X, Send, Sparkles, Phone, Upload, ArrowRight, 
  RotateCcw, ShieldCheck, CheckCircle2, ChevronDown, Activity, ChevronRight
} from 'lucide-react';
import { processUserMessageAsync } from '../../services/chatbotEngine';
import { openWhatsApp, DEFAULT_MESSAGES } from '../../utils/whatsapp';
import { useAuth } from '../../context/AuthContext';

export default function HealthExpressAssistant() {
  const [isOpen, setIsOpen] = useState(false);
  const [messages, setMessages] = useState([]);
  const [inputQuery, setInputQuery] = useState('');
  const [isTyping, setIsTyping] = useState(false);
  const [tooltipIndex, setTooltipIndex] = useState(0);
  const [isTooltipDismissed, setIsTooltipDismissed] = useState(false);

  const location = useLocation();
  const navigate = useNavigate();
  const { user } = useAuth();
  const messagesEndRef = useRef(null);

  const tooltipPrompts = [
    "💬 Need help with prescriptions?",
    "🧪 Find lab tests in Bengaluru",
    "🏡 Ask about Home Nursing Care",
    "⚡ Instant Care Manager Support"
  ];

  // Rotate speech tooltip prompts every 6 seconds
  useEffect(() => {
    const timer = setInterval(() => {
      setTooltipIndex((prev) => (prev + 1) % tooltipPrompts.length);
    }, 6000);
    return () => clearInterval(timer);
  }, []);

  // Initialize Welcome Message on Open
  useEffect(() => {
    if (isOpen && messages.length === 0) {
      const initialGreeting = {
        id: 1,
        sender: 'assistant',
        text: `Namaste${user?.name ? ' ' + user.name.split(' ')[0] : ''}! 👋 I'm **Priya**, your Health Express Care Assistant.\n\nI can help you find diagnostic tests, explain home nursing care, verify Bengaluru locality availability, or send your prescription to our team on WhatsApp.`,
        quickReplies: [
          { label: "📄 Send / Upload Prescription", action: "whatsapp_prescription" },
          { label: "🧪 Find a Test (CBC, Thyroid...)", action: "explore_tests" },
          { label: "🏡 Home Healthcare Nursing", action: "whatsapp_service_nursing" },
          { label: "📍 Bengaluru Locality Coverage", action: "whatsapp_locality" },
          { label: "💬 Talk on WhatsApp", action: "whatsapp_general" }
        ]
      };
      setMessages([initialGreeting]);
    }
  }, [isOpen, user]);

  // Scroll message container to bottom
  useEffect(() => {
    messagesEndRef.current?.scrollIntoView({ behavior: 'smooth' });
  }, [messages, isTyping]);

  // Process user input
  const handleSendMessage = async (textToSend = inputQuery) => {
    const query = textToSend.trim();
    if (!query) return;

    // Append User Message
    const userMsg = {
      id: Date.now(),
      sender: 'user',
      text: query
    };

    setMessages((prev) => [...prev, userMsg]);
    setInputQuery('');
    setIsTyping(true);

    try {
      const response = await processUserMessageAsync(query, location.pathname, messages);
      const assistantMsg = {
        id: Date.now() + 1,
        sender: 'assistant',
        text: response.text,
        quickReplies: response.quickReplies,
        whatsappMsg: response.whatsappMsg
      };

      setMessages((prev) => [...prev, assistantMsg]);
    } catch (e) {
      console.error("Chatbot processing error:", e);
    } finally {
      setIsTyping(false);
    }
  };

  // Handle Quick Reply Actions
  const handleQuickAction = (reply) => {
    const { label, action } = reply;

    if (action === 'whatsapp_prescription') {
      openWhatsApp("Namaste Health Express! I would like to send my prescription for service coordination.");
      return;
    }

    if (action === 'whatsapp_general') {
      openWhatsApp(DEFAULT_MESSAGES.general);
      return;
    }

    if (action === 'whatsapp_service_nursing') {
      openWhatsApp("Namaste Health Express! I am interested in Home Healthcare Nursing in Bengaluru.");
      return;
    }

    if (action === 'whatsapp_locality') {
      openWhatsApp("Namaste Health Express! I would like to check service availability in my area in Bengaluru.");
      return;
    }

    if (action === 'nav_services') {
      navigate('/services');
      setIsOpen(false);
      return;
    }

    if (action.startsWith('whatsapp_test_')) {
      const testId = action.replace('whatsapp_test_', '');
      openWhatsApp(`Namaste Health Express! I am interested in the ${testId.toUpperCase()} test. Please share options and home collection slots.`);
      return;
    }

    // Default: Send chip text into chat flow
    handleSendMessage(label);
  };

  return (
    <div className="fixed z-50 bottom-4 right-4 sm:bottom-6 sm:right-6 flex flex-col items-end">
      
      {/* Dynamic Floating Speech Teaser Tooltip */}
      {!isOpen && !isTooltipDismissed && (
        <div className="mb-3 animate-bounce-subtle flex items-center gap-2">
          <div 
            onClick={() => setIsOpen(true)}
            className="cursor-pointer bg-white text-slate-900 border border-purple-200/80 shadow-xl px-4 py-2 rounded-2xl text-xs font-bold flex items-center gap-2 hover:bg-purple-50 transition-all hover:scale-105"
          >
            <span className="w-2 h-2 rounded-full bg-purple-600 animate-ping"></span>
            <span>{tooltipPrompts[tooltipIndex]}</span>
          </div>
          <button
            onClick={() => setIsTooltipDismissed(true)}
            className="w-5 h-5 rounded-full bg-slate-200 hover:bg-slate-300 text-slate-600 flex items-center justify-center text-[10px] shadow-xs"
            aria-label="Dismiss message tip"
          >
            ✕
          </button>
        </div>
      )}

      {/* 1. Floating Circular Avatar Trigger Button Only */}
      {!isOpen && (
        <button
          onClick={() => setIsOpen(true)}
          className="group relative w-14 h-14 sm:w-16 sm:h-16 rounded-full overflow-hidden border-2 border-white shadow-2xl shadow-purple-950/50 ring-4 ring-purple-400/40 animate-pulse-glow transition-transform duration-300 hover:scale-110 active:scale-95 cursor-pointer shrink-0"
          aria-label="Open Health Express Assistant"
        >
          <img 
            src="/assistant_avatar.jpg" 
            alt="Priya - Health Express Care Assistant Avatar"
            className="w-full h-full object-cover object-center group-hover:scale-110 transition-transform duration-300" 
          />
          <span className="absolute bottom-1 right-1 w-3.5 h-3.5 rounded-full bg-emerald-500 border-2 border-white"></span>
        </button>
      )}

      {/* 2. Chatbot Window (Mobile Bottom Sheet / Desktop Floating Box) */}
      {isOpen && (
        <div className="w-[92vw] sm:w-[410px] h-[84vh] sm:h-[620px] max-h-[720px] bg-white rounded-3xl shadow-2xl border border-purple-200/90 flex flex-col overflow-hidden animate-in fade-in slide-in-from-bottom-5 duration-200">
          
          {/* Header */}
          <div className="bg-gradient-to-r from-purple-900 via-purple-800 to-indigo-900 p-4 text-white flex items-center justify-between shadow-md shrink-0">
            <div className="flex items-center gap-3">
              <div className="relative w-11 h-11 rounded-full overflow-hidden border-2 border-white/90 shadow-md shrink-0">
                <img src="/assistant_avatar.jpg" alt="Priya Care Assistant" className="w-full h-full object-cover" />
                <span className="absolute bottom-0 right-0 w-3 h-3 rounded-full bg-emerald-400 border-2 border-purple-900"></span>
              </div>

              <div>
                <div className="text-xs font-extrabold text-white flex items-center gap-1.5">
                  <span>Health Express Assistant</span>
                  <span className="text-[10px] font-bold px-2 py-0.5 rounded-full bg-emerald-500/20 text-emerald-300 border border-emerald-400/30 flex items-center gap-1">
                    <span className="w-1.5 h-1.5 rounded-full bg-emerald-400 animate-pulse"></span>
                    Online
                  </span>
                </div>
                <div className="text-[10px] text-purple-200">
                  Care Coordinator · Priya
                </div>
              </div>
            </div>

            <button
              onClick={() => setIsOpen(false)}
              className="p-1.5 text-purple-200 hover:text-white hover:bg-white/10 rounded-xl transition-colors"
              aria-label="Close Assistant"
            >
              <X className="w-5 h-5" />
            </button>
          </div>

          {/* Message History Body */}
          <div className="flex-1 p-4 overflow-y-auto space-y-4 bg-slate-50/50 text-xs">
            {messages.map((msg) => (
              <div
                key={msg.id}
                className={`flex flex-col ${msg.sender === 'user' ? 'items-end' : 'items-start'} space-y-2`}
              >
                <div className="flex items-start gap-2 max-w-[90%]">
                  {msg.sender === 'assistant' && (
                    <div className="w-7 h-7 rounded-full overflow-hidden border border-purple-200 shrink-0 mt-0.5 shadow-xs">
                      <img src="/assistant_avatar.jpg" alt="Avatar" className="w-full h-full object-cover" />
                    </div>
                  )}

                  <div
                    className={`p-3.5 rounded-2xl text-xs leading-relaxed shadow-xs ${
                      msg.sender === 'user'
                        ? 'bg-purple-700 text-white rounded-br-xs font-medium ml-auto'
                        : 'bg-white text-slate-800 border border-purple-100 rounded-bl-xs'
                    }`}
                  >
                    <p className="whitespace-pre-line">{msg.text}</p>
                  </div>
                </div>

                {/* Direct WhatsApp Callout Banner inside Assistant Msg */}
                {msg.whatsappMsg && (
                  <button
                    onClick={() => openWhatsApp(msg.whatsappMsg)}
                    className="max-w-[88%] p-2.5 rounded-xl bg-emerald-50 hover:bg-emerald-100 border border-emerald-200 text-emerald-900 text-[11px] font-bold flex items-center justify-between gap-2 shadow-xs transition-all hover:scale-[1.01]"
                  >
                    <span className="flex items-center gap-1.5">
                      <MessageSquare className="w-3.5 h-3.5 text-emerald-600 fill-emerald-600/20" />
                      <span>Send Request on WhatsApp</span>
                    </span>
                    <ArrowRight className="w-3.5 h-3.5 text-emerald-700" />
                  </button>
                )}

                {/* Quick Action Chips */}
                {msg.quickReplies && msg.quickReplies.length > 0 && (
                  <div className="flex flex-wrap gap-1.5 pt-1 max-w-[95%]">
                    {msg.quickReplies.map((reply, idx) => (
                      <button
                        key={idx}
                        onClick={() => handleQuickAction(reply)}
                        className="px-3 py-1.5 rounded-xl bg-white hover:bg-purple-50 text-purple-900 border border-purple-200 text-[11px] font-bold shadow-xs hover:border-purple-300 transition-all text-left flex items-center gap-1"
                      >
                        <span>{reply.label}</span>
                        <ChevronRight className="w-3 h-3 text-purple-400" />
                      </button>
                    ))}
                  </div>
                )}
              </div>
            ))}

            {/* Typing Indicator */}
            {isTyping && (
              <div className="flex items-center gap-2 text-slate-400 text-xs font-medium italic pt-1 pl-8">
                <div className="flex items-center gap-1">
                  <span className="w-1.5 h-1.5 rounded-full bg-purple-600 animate-bounce"></span>
                  <span className="w-1.5 h-1.5 rounded-full bg-purple-600 animate-bounce [animation-delay:0.2s]"></span>
                  <span className="w-1.5 h-1.5 rounded-full bg-purple-600 animate-bounce [animation-delay:0.4s]"></span>
                </div>
                <span>Priya is typing...</span>
              </div>
            )}

            <div ref={messagesEndRef} />
          </div>

          {/* Footer Input Bar */}
          <div className="p-3 bg-white border-t border-purple-100 shrink-0 space-y-2">
            <form
              onSubmit={(e) => {
                e.preventDefault();
                handleSendMessage();
              }}
              className="flex items-center gap-2"
            >
              <input
                type="text"
                value={inputQuery}
                onChange={(e) => setInputQuery(e.target.value)}
                placeholder="Ask about tests, services, prescriptions..."
                className="flex-1 px-3.5 py-2.5 rounded-xl bg-slate-50 border border-slate-200 text-xs font-medium text-slate-900 placeholder:text-slate-400 focus:outline-none focus:ring-2 focus:ring-purple-600 focus:bg-white"
              />
              <button
                type="submit"
                disabled={!inputQuery.trim()}
                className="p-2.5 rounded-xl bg-purple-700 hover:bg-purple-800 disabled:opacity-40 text-white font-bold transition-colors shrink-0 shadow-xs"
              >
                <Send className="w-4 h-4" />
              </button>
            </form>

            <div className="flex items-center justify-between text-[10px] text-slate-400 px-1 pt-0.5">
              <span className="flex items-center gap-1">
                <ShieldCheck className="w-3 h-3 text-purple-600" />
                <span>Health Express Assistant</span>
              </span>
              <button
                onClick={() => setMessages([])}
                className="hover:text-purple-700 font-medium flex items-center gap-1"
              >
                <RotateCcw className="w-3 h-3" />
                <span>Reset Chat</span>
              </button>
            </div>
          </div>

        </div>
      )}

    </div>
  );
}
