import React from 'react';
import { Link } from 'react-router-dom';
import { Heart, Shield, Sparkles, Users, ArrowRight, UserCheck, CheckCircle2, MessageSquare } from 'lucide-react';
import { openWhatsApp, DEFAULT_MESSAGES } from '../utils/whatsapp';

export default function AboutPage({ onOpenUploadModal }) {
  return (
    <div className="py-12 md:py-20 bg-white">
      <div className="max-w-4xl mx-auto px-4 sm:px-6 lg:px-8 space-y-16">
        
        {/* Header Section */}
        <div className="text-center space-y-4">
          <div className="inline-block px-3.5 py-1 rounded-full bg-purple-100 text-purple-800 text-xs font-bold uppercase tracking-wider">
            About Health Express
          </div>
          <h1 className="text-3xl sm:text-5xl font-extrabold text-slate-900 tracking-tight">
            Healthcare is personal. So are we.
          </h1>
          <p className="text-base sm:text-lg text-slate-600 leading-relaxed max-w-2xl mx-auto">
            Behind every appointment, diagnostic test, prescription or care decision is a person — and often, a family that cares deeply about them.
          </p>
          <div className="p-6 bg-purple-50/60 rounded-3xl border border-purple-100/80 text-sm sm:text-base text-slate-700 leading-relaxed space-y-3">
            <p>
              At Health Express, we believe healthcare should bring you peace of mind, not more things to worry about.
            </p>
            <p className="font-semibold text-purple-900">
              We’re building a simpler way for you and your family to find, access and coordinate healthcare — starting with diagnostics and home nursing, and growing toward a more connected healthcare experience.
            </p>
            <p className="text-xs text-purple-800 font-bold uppercase tracking-wider pt-1">
              Your health matters. Your family matters. And your peace of mind matters to us.
            </p>
          </div>
        </div>

        {/* Why We Exist */}
        <div className="space-y-4 border-t border-slate-100 pt-12">
          <div className="text-xs font-extrabold uppercase tracking-wider text-purple-700">
            WHY WE EXIST
          </div>
          <h2 className="text-2xl sm:text-3xl font-extrabold text-slate-900">
            Healthcare shouldn't feel like a second job.
          </h2>
          <p className="text-sm sm:text-base text-slate-600 leading-relaxed">
            Finding the right provider. Comparing options. Scheduling a home visit. Keeping track of reports. Coordinating care for your parents while managing your own health.
          </p>
          <p className="text-sm sm:text-base text-slate-600 leading-relaxed">
            Healthcare can become fragmented across hospitals, laboratories, clinics, phone calls, WhatsApp conversations and paper reports.
          </p>
          <div className="bg-slate-900 text-white p-6 rounded-2xl space-y-2">
            <h4 className="text-sm font-bold text-purple-300">Our goal is simple:</h4>
            <p className="text-xs sm:text-sm text-slate-200">
              Make healthcare easier to find, easier to coordinate and easier to manage — for you and the people you love.
            </p>
          </div>
        </div>

        {/* What We Do */}
        <div className="space-y-6 border-t border-slate-100 pt-12">
          <div className="text-xs font-extrabold uppercase tracking-wider text-purple-700">
            WHAT WE DO
          </div>
          <h2 className="text-2xl sm:text-3xl font-extrabold text-slate-900">
            One place to help you manage healthcare.
          </h2>
          <p className="text-sm text-slate-600 leading-relaxed">
            Health Express connects people with healthcare services and trusted providers, helping simplify the journey from finding care to coordinating it.
          </p>

          <div className="grid grid-cols-1 sm:grid-cols-2 gap-6 pt-2">
            <div className="p-6 bg-purple-50/40 rounded-3xl border border-purple-100 space-y-2">
              <h3 className="text-lg font-bold text-slate-900">Diagnostics</h3>
              <p className="text-xs text-slate-600 leading-relaxed">
                Access diagnostic tests from trusted providers, with convenient options including home sample collection and digital reports.
              </p>
            </div>

            <div className="p-6 bg-purple-50/40 rounded-3xl border border-purple-100 space-y-2">
              <h3 className="text-lg font-bold text-slate-900">Home Nursing</h3>
              <p className="text-xs text-slate-600 leading-relaxed">
                Find and coordinate professional nursing support for care that can be delivered in the comfort of home.
              </p>
            </div>
          </div>

          <div className="p-6 bg-slate-50 rounded-3xl border border-slate-200 flex flex-col sm:flex-row items-start sm:items-center justify-between gap-4">
            <div>
              <h4 className="text-sm font-bold text-slate-900">More care, over time</h4>
              <p className="text-xs text-slate-600 mt-0.5">
                We're building toward a broader healthcare experience that brings more services, information and coordination into one place.
              </p>
            </div>
            <Link
              to="/services"
              className="px-5 py-2.5 rounded-xl bg-purple-700 hover:bg-purple-800 text-white text-xs font-bold shrink-0 transition-colors inline-flex items-center gap-1.5"
            >
              <span>Explore Services</span>
              <ArrowRight className="w-3.5 h-3.5" />
            </Link>
          </div>
        </div>

        {/* Built Around Families */}
        <div className="space-y-4 border-t border-slate-100 pt-12">
          <div className="text-xs font-extrabold uppercase tracking-wider text-purple-700">
            BUILT AROUND FAMILIES
          </div>
          <h2 className="text-2xl sm:text-3xl font-extrabold text-slate-900">
            Healthcare doesn't stop with you.
          </h2>
          <p className="text-sm sm:text-base text-slate-600 leading-relaxed">
            Your healthcare needs are connected to the people around you. A test for yourself. Care for a parent. A health check for your partner. Support for someone recovering at home.
          </p>
          <p className="text-sm sm:text-base text-slate-600 leading-relaxed">
            That's why Health Express is designed with the whole family in mind. Our vision is to make it easier to understand, coordinate and manage healthcare across the people who matter most to you.
          </p>
          <div className="p-4 rounded-xl bg-purple-100/70 text-purple-900 text-xs font-bold uppercase tracking-wider text-center">
            One place. One family. Less to manage.
          </div>
        </div>

        {/* Our Belief */}
        <div className="space-y-4 border-t border-slate-100 pt-12">
          <div className="text-xs font-extrabold uppercase tracking-wider text-purple-700">
            OUR BELIEF
          </div>
          <h2 className="text-2xl sm:text-3xl font-extrabold text-slate-900">
            Technology should make healthcare feel more human.
          </h2>
          <p className="text-sm sm:text-base text-slate-600 leading-relaxed">
            Healthcare technology often focuses on making systems more efficient. We believe it should also make people's lives simpler.
          </p>
          <p className="text-sm sm:text-base text-slate-600 leading-relaxed">
            Technology should help you spend less time searching, calling, comparing and coordinating — and more time focusing on your health and your family. That's the experience we're working to build.
          </p>
        </div>

        {/* Founder's Letter */}
        <div className="bg-gradient-to-br from-purple-900 via-purple-800 to-indigo-950 text-white rounded-3xl p-8 sm:p-10 space-y-6 shadow-xl border border-purple-700">
          <div className="text-xs font-extrabold uppercase tracking-widest text-purple-300">
            A NOTE FROM OUR FOUNDER
          </div>

          <h3 className="text-xl sm:text-2xl font-extrabold text-white leading-tight">
            “I wanted healthcare to feel a little less complicated.”
          </h3>

          <div className="space-y-4 text-xs sm:text-sm text-purple-100 leading-relaxed">
            <p>
              Healthcare is deeply personal. Behind every appointment, test or care decision is someone who needs help — and often a family trying to make the right decision for someone they love.
            </p>
            <p>
              I started Health Express with a simple belief: getting the right healthcare should be easier.
            </p>
            <p>
              We’re building Health Express to be a place you can turn to when you need to find, coordinate and manage healthcare for yourself or your family.
            </p>
            <p>
              We may start with diagnostics and home nursing, but our ambition is much bigger — to make healthcare simpler to navigate throughout the different stages of life.
            </p>
            <p className="font-semibold text-white pt-1">
              Your health matters. Your family matters. And your peace of mind matters to us.
            </p>
          </div>

          <div className="pt-4 border-t border-purple-700/60 flex items-center justify-between">
            <div>
              <div className="text-base font-bold text-white">Neha Bhansali</div>
              <div className="text-xs text-purple-300">Founder, Health Express</div>
            </div>
            <div className="w-12 h-12 rounded-full bg-purple-700 border-2 border-purple-400 text-white flex items-center justify-center font-bold text-lg">
              NB
            </div>
          </div>
        </div>

        {/* What Matters to Us (4 Principles) */}
        <div className="space-y-6 border-t border-slate-100 pt-12">
          <div className="text-xs font-extrabold uppercase tracking-wider text-purple-700">
            WHAT MATTERS TO US
          </div>
          <h2 className="text-2xl sm:text-3xl font-extrabold text-slate-900">
            Core Principles
          </h2>

          <div className="grid grid-cols-1 sm:grid-cols-2 gap-6">
            <div className="p-6 bg-slate-50 rounded-2xl border border-slate-100 space-y-2">
              <div className="w-9 h-9 rounded-xl bg-purple-100 text-purple-700 flex items-center justify-center">
                <Users className="w-5 h-5" />
              </div>
              <h4 className="text-base font-bold text-slate-900">People First</h4>
              <p className="text-xs text-slate-600 leading-relaxed">
                Every healthcare journey starts with a person, not a transaction.
              </p>
            </div>

            <div className="p-6 bg-slate-50 rounded-2xl border border-slate-100 space-y-2">
              <div className="w-9 h-9 rounded-xl bg-purple-100 text-purple-700 flex items-center justify-center">
                <Shield className="w-5 h-5" />
              </div>
              <h4 className="text-base font-bold text-slate-900">Trust</h4>
              <p className="text-xs text-slate-600 leading-relaxed">
                Healthcare decisions deserve transparency, responsible information and trusted providers.
              </p>
            </div>

            <div className="p-6 bg-slate-50 rounded-2xl border border-slate-100 space-y-2">
              <div className="w-9 h-9 rounded-xl bg-purple-100 text-purple-700 flex items-center justify-center">
                <Sparkles className="w-5 h-5" />
              </div>
              <h4 className="text-base font-bold text-slate-900">Simplicity</h4>
              <p className="text-xs text-slate-600 leading-relaxed">
                We remove unnecessary complexity wherever technology can help.
              </p>
            </div>

            <div className="p-6 bg-slate-50 rounded-2xl border border-slate-100 space-y-2">
              <div className="w-9 h-9 rounded-xl bg-purple-100 text-purple-700 flex items-center justify-center">
                <Heart className="w-5 h-5" />
              </div>
              <h4 className="text-base font-bold text-slate-900">Care</h4>
              <p className="text-xs text-slate-600 leading-relaxed">
                We think beyond the individual to the families and caregivers who support them.
              </p>
            </div>
          </div>
        </div>

        {/* Our Approach */}
        <div className="space-y-4 border-t border-slate-100 pt-12">
          <div className="text-xs font-extrabold uppercase tracking-wider text-purple-700">
            OUR APPROACH
          </div>
          <h2 className="text-2xl sm:text-3xl font-extrabold text-slate-900">
            We don't believe you should have to figure it all out yourself.
          </h2>
          <p className="text-sm sm:text-base text-slate-600 leading-relaxed">
            Healthcare can involve many people, providers and decisions. Our role is to help make that journey easier to navigate.
          </p>
          <div className="grid grid-cols-1 md:grid-cols-3 gap-4 pt-2">
            <div className="p-4 bg-purple-50 rounded-2xl border border-purple-100 text-xs font-semibold text-purple-900">
              1. You tell us what you need.
            </div>
            <div className="p-4 bg-purple-50 rounded-2xl border border-purple-100 text-xs font-semibold text-purple-900">
              2. We help you find the right options.
            </div>
            <div className="p-4 bg-purple-50 rounded-2xl border border-purple-100 text-xs font-semibold text-purple-900">
              3. You decide what works for you.
            </div>
          </div>
        </div>

        {/* Growing With You */}
        <div className="space-y-4 border-t border-slate-100 pt-12">
          <div className="text-xs font-extrabold uppercase tracking-wider text-purple-700">
            GROWING WITH YOU
          </div>
          <h2 className="text-2xl sm:text-3xl font-extrabold text-slate-900">
            Today, we're starting with the essentials.
          </h2>
          <p className="text-sm sm:text-base text-slate-600 leading-relaxed">
            Health Express is beginning with two areas where people frequently need convenient, reliable access to care: <span className="font-bold text-slate-900">Diagnostics</span> & <span className="font-bold text-slate-900">Home Nursing</span>.
          </p>
          <p className="text-sm sm:text-base text-slate-600 leading-relaxed">
            As we grow, we'll continue expanding the healthcare services and tools available through the platform. Our long-term vision is to become a trusted health management layer for individuals and families — helping people stay on top of their healthcare throughout life.
          </p>
        </div>

        {/* Our Promise & Final Action */}
        <div className="bg-purple-50 p-8 sm:p-12 rounded-3xl border border-purple-200 text-center space-y-6">
          <div className="space-y-2">
            <div className="text-xs font-extrabold uppercase tracking-wider text-purple-700">
              OUR PROMISE
            </div>
            <h3 className="text-2xl sm:text-3xl font-extrabold text-slate-900">
              Less searching. Less coordinating. More peace of mind.
            </h3>
            <p className="text-xs sm:text-sm text-slate-600 max-w-xl mx-auto">
              We can't make every healthcare decision simple. But we can make the journey easier to navigate. And that's what we're here to do.
            </p>
          </div>

          <div className="text-sm font-bold text-purple-900">
            Health Express — Your personal health manager, for you and your family.
          </div>

          <div className="flex flex-col sm:flex-row items-center justify-center gap-4 pt-2">
            <Link
              to="/services"
              className="w-full sm:w-auto px-7 py-3.5 rounded-2xl bg-purple-700 hover:bg-purple-800 text-white font-bold text-xs shadow-md transition-colors"
            >
              Explore Services
            </Link>

            <button
              onClick={() => openWhatsApp(DEFAULT_MESSAGES.general)}
              className="w-full sm:w-auto px-7 py-3.5 rounded-2xl bg-emerald-600 hover:bg-emerald-700 text-white font-bold text-xs shadow-md transition-colors flex items-center justify-center gap-2"
            >
              <MessageSquare className="w-4 h-4 fill-current" />
              <span>Get Started via WhatsApp</span>
            </button>
          </div>
        </div>

      </div>
    </div>
  );
}
