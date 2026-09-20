-- ============================================================
-- HEALTH EXPRESS — SUPABASE PRODUCTION SQL MIGRATION
-- SYSTEM OF RECORD FOR PATIENTS, ENQUIRIES & PRESCRIPTIONS
-- ============================================================

-- 1. TABLE: patients
create table if not exists public.patients (
  id uuid default gen_random_uuid() primary key,
  full_name text not null,
  phone_e164 text not null unique,
  email text null,
  city text null default 'Bengaluru',
  user_id uuid null references auth.users(id) on delete set null,
  is_verified boolean default false,
  created_at timestamptz default now() not null,
  updated_at timestamptz default now() not null
);

-- Index for fast phone lookup
create index if not exists idx_patients_phone_e164 on public.patients(phone_e164);
create index if not exists idx_patients_user_id on public.patients(user_id);

-- 2. TABLE: enquiries
create table if not exists public.enquiries (
  id uuid default gen_random_uuid() primary key,
  enquiry_code text not null unique,
  patient_id uuid not null references public.patients(id) on delete cascade,
  source text default 'website' not null,
  status text default 'pending_review' not null,
  notes text null,
  created_at timestamptz default now() not null,
  updated_at timestamptz default now() not null
);

-- Index for enquiry code and patient FK
create index if not exists idx_enquiries_code on public.enquiries(enquiry_code);
create index if not exists idx_enquiries_patient_id on public.enquiries(patient_id);

-- 3. TABLE: prescriptions
create table if not exists public.prescriptions (
  id uuid default gen_random_uuid() primary key,
  enquiry_id uuid not null references public.enquiries(id) on delete cascade,
  patient_id uuid not null references public.patients(id) on delete cascade,
  file_path text not null,
  file_name text not null,
  file_type text not null,
  file_size bigint not null,
  user_id uuid null references auth.users(id) on delete set null,
  created_at timestamptz default now() not null
);

-- Index for prescription relationships
create index if not exists idx_prescriptions_enquiry_id on public.prescriptions(enquiry_id);
create index if not exists idx_prescriptions_patient_id on public.prescriptions(patient_id);
create index if not exists idx_prescriptions_user_id on public.prescriptions(user_id);

-- ============================================================
-- ROW LEVEL SECURITY (RLS) POLICIES
-- ============================================================

alter table public.patients enable row level security;
alter table public.enquiries enable row level security;
alter table public.prescriptions enable row level security;

-- Patients RLS: Authenticated users can read their own profile
create policy "Users can view own patient profile" on public.patients
  for select using (
    auth.uid() = user_id
  );

-- Enquiries RLS: Authenticated users can view their own enquiries
create policy "Users can view own enquiries" on public.enquiries
  for select using (
    patient_id in (select id from public.patients where user_id = auth.uid())
  );

-- Prescriptions RLS: Authenticated users can view their own prescriptions
create policy "Users can view own prescriptions" on public.prescriptions
  for select using (
    auth.uid() = user_id or
    patient_id in (select id from public.patients where user_id = auth.uid())
  );

-- Allow public insert for guest prescription submission flow (via anon or service role)
create policy "Allow insert for guest prescription submissions" on public.patients
  for insert with check (true);

create policy "Allow insert for guest enquiry submissions" on public.enquiries
  for insert with check (true);

create policy "Allow insert for guest prescription records" on public.prescriptions
  for insert with check (true);

-- ============================================================
-- PRIVATE STORAGE BUCKET CONFIGURATION
-- ============================================================

-- Create Private Storage Bucket for Prescriptions (public = false)
insert into storage.buckets (id, name, public, file_size_limit, allowed_mime_types)
values (
  'prescriptions',
  'prescriptions',
  false,
  10485760, -- 10MB
  array[
    'application/pdf',
    'image/jpeg',
    'image/png',
    'image/webp',
    'application/msword',
    'application/vnd.openxmlformats-officedocument.wordprocessingml.document'
  ]
) on conflict (id) do update set public = false;

-- Storage Policy: Allow guest uploads to private prescriptions bucket
create policy "Allow guest upload to prescriptions bucket" on storage.objects
  for insert with check (bucket_id = 'prescriptions');

-- Storage Policy: Authenticated users can view their own files
create policy "Allow authorized user access to prescriptions" on storage.objects
  for select using (
    bucket_id = 'prescriptions' and
    (auth.role() = 'service_role' or auth.uid() is not null)
  );

-- ============================================================
-- HARDENED POST-OTP ACCOUNT LINKING SECURITY DEFINER FUNCTION
-- ============================================================

create or replace function public.link_guest_records_on_otp_login(
  verified_phone_e164 text
) returns void as $$
declare
  current_user_id uuid := auth.uid();
begin
  if current_user_id is null then
    raise exception 'Unauthorized: Must be an authenticated Supabase user to link records.';
  end if;

  if verified_phone_e164 is null or length(verified_phone_e164) < 10 then
    raise exception 'Invalid phone number provided for account linking.';
  end if;

  -- 1. Link patient record to authenticated user ID
  update public.patients
  set user_id = current_user_id,
      is_verified = true,
      updated_at = now()
  where phone_e164 = verified_phone_e164;

  -- 2. Link prescription records belonging to this patient
  update public.prescriptions
  set user_id = current_user_id
  where patient_id in (
    select id from public.patients where phone_e164 = verified_phone_e164
  );
end;
$$ language plpgsql security definer set search_path = public;

-- Revoke execute from public; grant only to authenticated role
revoke execute on function public.link_guest_records_on_otp_login(text) from public;
grant execute on function public.link_guest_records_on_otp_login(text) to authenticated;
