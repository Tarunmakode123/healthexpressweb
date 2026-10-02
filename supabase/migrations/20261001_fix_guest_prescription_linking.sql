-- ============================================================
-- HEALTH EXPRESS — SUPABASE SQL MIGRATION
-- PRODUCTION GUEST PRESCRIPTION CREATION & AUTHENTICATED LINKING RPCs
-- ============================================================

-- 1. Helper function: Extract 10-digit canonical Indian mobile number
create or replace function public.clean_phone_10(p_input text)
returns text language plpgsql immutable as $$
declare
  v_digits text;
begin
  if p_input is null or p_input = '' then
    return '';
  end if;
  v_digits := regexp_replace(p_input, '\D', '', 'g');
  if length(v_digits) < 10 then
    return v_digits;
  end if;
  return right(v_digits, 10);
end;
$$;

grant execute on function public.clean_phone_10(text) to public, authenticated, anon, service_role;

-- 2. SECURITY DEFINER RPC: ATOMIC GUEST PRESCRIPTION SUBMISSION
create or replace function public.submit_guest_prescription_secure(
  p_full_name text,
  p_phone_e164 text,
  p_city text default 'Bengaluru',
  p_email text default null,
  p_enquiry_code text default null,
  p_file_path text default null,
  p_file_name text default null,
  p_file_type text default null,
  p_file_size bigint default 0,
  p_notes text default null
)
returns jsonb language plpgsql security definer set search_path = public as $$
declare
  v_patient_id uuid;
  v_enquiry_id uuid := gen_random_uuid();
  v_prescription_id uuid := gen_random_uuid();
  v_clean_phone_10 text;
  v_current_user_id uuid := auth.uid();
  v_code text := coalesce(p_enquiry_code, 'HE-2026-' || upper(substring(md5(random()::text) from 1 for 6)));
begin
  v_clean_phone_10 := public.clean_phone_10(p_phone_e164);

  -- A. Find existing patient or create guest patient record
  if length(v_clean_phone_10) >= 10 then
    select id into v_patient_id
    from public.patients
    where public.clean_phone_10(phone_e164) = v_clean_phone_10
    order by created_at desc
    limit 1;
  end if;

  if v_patient_id is not null then
    update public.patients
    set full_name = coalesce(nullif(trim(p_full_name), ''), full_name),
        city = coalesce(nullif(trim(p_city), ''), city),
        email = coalesce(nullif(trim(p_email), ''), email),
        user_id = coalesce(user_id, v_current_user_id),
        updated_at = now()
    where id = v_patient_id;
  else
    insert into public.patients (
      id,
      user_id,
      full_name,
      phone_e164,
      city,
      email,
      is_verified
    ) values (
      gen_random_uuid(),
      v_current_user_id,
      coalesce(nullif(trim(p_full_name), ''), 'Guest Patient'),
      p_phone_e164,
      coalesce(nullif(trim(p_city), ''), 'Bengaluru'),
      nullif(trim(p_email), ''),
      false
    )
    returning id into v_patient_id;
  end if;

  -- B. Create Enquiry Record (upsert by enquiry_code)
  insert into public.enquiries (
    id,
    enquiry_code,
    patient_id,
    source,
    status,
    notes
  ) values (
    v_enquiry_id,
    v_code,
    v_patient_id,
    'website',
    'pending_review',
    nullif(trim(p_notes), '')
  )
  on conflict (enquiry_code) do update
    set patient_id = excluded.patient_id,
        notes = coalesce(excluded.notes, enquiries.notes)
  returning id into v_enquiry_id;

  -- C. Create Prescription Metadata Record
  if p_file_path is not null and trim(p_file_path) <> '' then
    insert into public.prescriptions (
      id,
      enquiry_id,
      patient_id,
      file_path,
      file_name,
      file_type,
      file_size,
      user_id
    ) values (
      v_prescription_id,
      v_enquiry_id,
      v_patient_id,
      p_file_path,
      coalesce(p_file_name, 'prescription_document'),
      coalesce(p_file_type, 'application/octet-stream'),
      coalesce(p_file_size, 0),
      v_current_user_id
    );
  end if;

  return jsonb_build_object(
    'success', true,
    'patient_id', v_patient_id,
    'enquiry_id', v_enquiry_id,
    'enquiry_code', v_code,
    'prescription_id', v_prescription_id
  );
end;
$$;

grant execute on function public.submit_guest_prescription_secure(text, text, text, text, text, text, text, text, bigint, text) to public, anon, authenticated, service_role;

-- 3. SECURITY DEFINER RPC: LINK GUEST RECORDS ON OTP LOGIN
drop function if exists public.link_guest_records_on_otp_login();

create or replace function public.link_guest_records_on_otp_login()
returns jsonb as $$
declare
  current_user_id uuid := auth.uid();
  user_phone text;
  user_phone_10 text := '';
  primary_patient_id uuid;
  linked_patient_count int := 0;
  linked_prescription_count int := 0;
begin
  if current_user_id is null then
    return jsonb_build_object(
      'success', false,
      'reason', 'unauthenticated',
      'linked_patient_count', 0,
      'linked_prescription_count', 0
    );
  end if;

  select coalesce(
    phone,
    raw_user_meta_data->>'phone',
    raw_user_meta_data->>'phone_e164',
    raw_user_meta_data->>'phone_number',
    ''
  )
  into user_phone
  from auth.users
  where id = current_user_id;

  user_phone_10 := public.clean_phone_10(user_phone);

  select id into primary_patient_id
  from public.patients
  where user_id = current_user_id
  order by created_at asc
  limit 1;

  if primary_patient_id is null then
    if length(user_phone_10) >= 10 then
      select id into primary_patient_id
      from public.patients
      where user_id is null
        and public.clean_phone_10(phone_e164) = user_phone_10
      order by created_at asc
      limit 1;
    end if;

    if primary_patient_id is null then
      select id into primary_patient_id
      from public.patients
      where user_id is null
      order by created_at desc
      limit 1;
    end if;

    if primary_patient_id is not null then
      update public.patients
      set user_id = current_user_id,
          is_verified = true,
          updated_at = now()
      where id = primary_patient_id;
    else
      insert into public.patients (id, user_id, full_name, phone_e164, is_verified)
      values (
        gen_random_uuid(),
        current_user_id,
        coalesce((select raw_user_meta_data->>'full_name' from auth.users where id = current_user_id), 'Patient'),
        user_phone,
        true
      )
      returning id into primary_patient_id;
    end if;
  end if;

  update public.patients
  set user_id = current_user_id,
      is_verified = true,
      updated_at = now()
  where user_id is null
    and (
      (length(user_phone_10) >= 10 and public.clean_phone_10(phone_e164) = user_phone_10)
      or id = primary_patient_id
    );

  get diagnostics linked_patient_count = row_count;

  update public.prescriptions
  set user_id = current_user_id,
      patient_id = primary_patient_id
  where (user_id is null or user_id = current_user_id)
    and patient_id in (
      select id from public.patients where user_id = current_user_id
    );

  get diagnostics linked_prescription_count = row_count;

  update public.enquiries
  set patient_id = primary_patient_id
  where patient_id in (
    select id from public.patients where user_id = current_user_id
  );

  return jsonb_build_object(
    'success', true,
    'linked_patient_count', linked_patient_count,
    'linked_prescription_count', linked_prescription_count,
    'primary_patient_id', primary_patient_id
  );
end;
$$ language plpgsql security definer set search_path = public;

grant execute on function public.link_guest_records_on_otp_login() to authenticated, anon, service_role;

-- 4. STRICT OWNERSHIP ROW LEVEL SECURITY (RLS) POLICIES
alter table public.patients enable row level security;
alter table public.enquiries enable row level security;
alter table public.prescriptions enable row level security;

drop policy if exists "Users can view own patient profile" on public.patients;
create policy "Users can view own patient profile" on public.patients
  for select using (
    public.check_is_admin() = true or
    (auth.uid() is not null and auth.uid() = user_id)
  );

drop policy if exists "Users can update own patient profile" on public.patients;
create policy "Users can update own patient profile" on public.patients
  for update using (
    public.check_is_admin() = true or
    (auth.uid() is not null and auth.uid() = user_id)
  );

drop policy if exists "Users can view own prescriptions" on public.prescriptions;
create policy "Users can view own prescriptions" on public.prescriptions
  for select using (
    public.check_is_admin() = true or
    auth.uid() = user_id or
    patient_id in (select id from public.patients where user_id = auth.uid())
  );

drop policy if exists "Users can view own enquiries" on public.enquiries;
create policy "Users can view own enquiries" on public.enquiries
  for select using (
    public.check_is_admin() = true or
    patient_id in (select id from public.patients where user_id = auth.uid())
  );

-- 5. ONE-TIME DATABASE BACKFILL FOR UNLINKED RECORDS
do $$
declare
  r record;
begin
  for r in select id, phone_e164 from public.patients where user_id is null and phone_e164 is not null loop
    update public.patients p
    set user_id = u.id, is_verified = true
    from auth.users u
    where p.id = r.id
      and public.clean_phone_10(u.phone) = public.clean_phone_10(r.phone_e164)
      and length(public.clean_phone_10(r.phone_e164)) >= 10;
  end loop;

  update public.prescriptions p
  set user_id = pat.user_id
  from public.patients pat
  where p.patient_id = pat.id
    and p.user_id is null
    and pat.user_id is not null;
end $$;
