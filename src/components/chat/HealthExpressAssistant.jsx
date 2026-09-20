import React, { useState, useEffect, useRef } from 'react';
import { useLocation, useNavigate } from 'react-router-dom';
import { 
  MessageSquare, X, Send, Sparkles, Phone, Upload, ArrowRight, 
  RotateCcw, ShieldCheck, CheckCircle2, ChevronDown, Activity 
} from 'lucide-react';
import { processUserMessage } from '../../services/chatbotEngine';
import { openWhatsApp, DEFAULT_MESSAGES } from '../../utils/whatsapp';
import { useAuth } from '../../context/AuthContext';

export default function HealthExpressAssistant() {
  const [isOpen, setIsOpen] = useState(false);
  const [messages, setMessages] = useState([]);
  const [inputQuery, setInputQuery] = useState('');
  const [isTyping, setIsTyping] = useState(false);

  const location = useLocation();
  const navigate = useNavigate();
  const { user, isLoggedIn } = useAuth();
  const messagesEndRef = useRef(null);

  // Initialize Welcome Message on Open
  useEffect(() => {
    if (isOpen && messages.length === 0) {
      const initialGreeting = {
        id: 1,
        sender: 'assistant',
        text: `Hi${user?.name ? ' ' + user.name.split(' ')[0] : ''}! 👋 I'm the **Health Express Assistant**.\n\nI can help you find diagnostic tests, understand home nursing services, check Bengaluru locality availability, or send your prescription to our team on WhatsApp.`,
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
  const handleSendMessage = (textToSend = inputQuery) => {
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

    // Simulate natural response latency (400ms - 800ms)
    setTimeout(() => {
      const response = processUserMessage(query, location.pathname, messages);
      const assistantMsg = {
        id: Date.now() + 1,
        sender: 'assistant',
        text: response.text,
        quickReplies: response.quickReplies,
        whatsappMsg: response.whatsappMsg
      };

      setMessages((prev) => [...prev, assistantMsg]);
      setIsTyping(false);
    }, 600);
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
    <div className="fixed z-50 bottom-4 right-4 sm:bottom-6 sm:right-6">
      
      {/* 1. Floating Assistant Trigger Button */}
      {!isOpen && (
        <button
          onClick={() => setIsOpen(true)}
          className="group relative px-4 py-3.5 sm:px-5 sm:py-4 rounded-full bg-purple-700 hover:bg-purple-800 text-white shadow-2xl shadow-purple-950/40 border border-purple-400/40 flex items-center gap-2.5 transition-all duration-300 hover:scale-105 active:scale-95"
          aria-label="Open Health Express Assistant"
        >
          <div className="relative">
            <MessageSquare className="w-5 h-5 sm:w-6 sm:h-6 text-white" />
            <span className="absolute -top-1 -right-1 w-2.5 h-2.5 rounded-full bg-emerald-400 border-2 border-purple-700 animate-ping"></span>
            <span className="absolute -top-1 -right-1 w-2.5 h-2.5 rounded-full bg-emerald-400 border-2 border-purple-700"></span>
          </div>

          <span className="hidden sm:inline text-xs font-extrabold tracking-wide text-white">
            Health Express Assistant
          </span>

          <span className="sm:hidden text-xs font-bold text-white">
            Assistant
          </span>
        </button>
      )}

      {/* 2. Chatbot Window (Mobile Bottom Sheet / Desktop Floating Box) */}
      {isOpen && (
        <div className="w-[92vw] sm:w-[390px] h-[82vh] sm:h-[600px] max-h-[700px] bg-white rounded-3xl shadow-2xl border border-purple-200/90 flex flex-col overflow-hidden animate-in fade-in slide-in-from-bottom-5 duration-200">
          
          {/* Header */}
          <div className="bg-gradient-to-r from-purple-900 via-purple-800 to-indigo-900 p-4 text-white flex items-center justify-between shadow-xs shrink-0">
            <div className="flex items-center gap-2.5">
              <div className="w-9 h-9 rounded-2xl bg-white p-1 flex items-center justify-center shadow-xs">
                <img src="/logo.png" alt="Health Express Logo" className="w-full h-full object-contain" />
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
                  Here to help you find healthcare services
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
          <div className="flex-1 p-4 overflow-y-auto space-y-4 bg-slate-50/40 text-xs">
            {messages.map((msg) => (
              <div
                key={msg.id}
                className={`flex flex-col ${msg.sender === 'user' ? 'items-end' : 'items-start'} space-y-2`}
              >
                <div
                  className={`max-w-[88%] p-3.5 rounded-2xl text-xs leading-relaxed shadow-xs ${
                    msg.sender === 'user'
                      ? 'bg-purple-700 text-white rounded-br-xs font-medium'
                      : 'bg-white text-slate-800 border border-purple-100 rounded-bl-xs'
                  }`}
                >
                  <p className="whitespace-pre-line">{msg.text}</p>
                </div>

                {/* Direct WhatsApp Callout Banner inside Assistant Msg */}
                {msg.whatsappMsg && (
                  <button
                    onClick={() => openWhatsApp(msg.whatsappMsg)}
                    className="max-w-[88%] p-2.5 rounded-xl bg-emerald-50 hover:bg-emerald-100 border border-emerald-200 text-emerald-900 text-[11px] font-bold flex items-center justify-between gap-2 shadow-xs transition-colors"
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
                        className="px-3 py-1.5 rounded-xl bg-white hover:bg-purple-50 text-purple-900 border border-purple-200 text-[11px] font-bold shadow-xs hover:border-purple-300 transition-all text-left"
                      >
                        {reply.label}
                      </button>
                    ))}
                  </div>
                )}
              </div>
            ))}

            {/* Typing Indicator */}
            {isTyping && (
              <div className="flex items-center gap-2 text-slate-400 text-xs font-medium italic pt-1">
                <div className="flex items-center gap-1">
                  <span className="w-1.5 h-1.5 rounded-full bg-purple-600 animate-bounce"></span>
                  <span className="w-1.5 h-1.5 rounded-full bg-purple-600 animate-bounce [animation-delay:0.2s]"></span>
                  <span className="w-1.5 h-1.5 rounded-full bg-purple-600 animate-bounce [animation-delay:0.4s]"></span>
                </div>
                <span>Health Express Assistant is typing...</span>
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
                className="p-2.5 rounded-xl bg-purple-700 hover:bg-purple-800 disabled:opacity-40 text-white font-bold transition-colors shrink-0"
              >
                <Send className="w-4 h-4" />
              </button>
            </form>

            <div className="flex items-center justify-between text-[10px] text-slate-400 px-1 pt-0.5">
              <span>Healthcare Service Assistant</span>
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
