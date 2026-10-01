-- ============================================================
-- HEALTH EXPRESS — SUPABASE SQL MIGRATION
-- COMPLETE GUEST PRESCRIPTION CREATION & AUTHENTICATED LINKING RPCs
-- ============================================================

-- 1. Helper function to extract trailing 7 digits of any phone string
create or replace function public.clean_phone_7(p_input text)
returns text language plpgsql immutable as $$
declare
  v_digits text;
begin
  if p_input is null or p_input = '' then
    return '';
  end if;
  v_digits := regexp_replace(p_input, '\D', '', 'g');
  if length(v_digits) < 7 then
    return v_digits;
  end if;
  return right(v_digits, 7);
end;
$$;

grant execute on function public.clean_phone_7(text) to public, authenticated, anon, service_role;

-- 2. SECURITY DEFINER RPC: GET OR CREATE GUEST PATIENT (BYPASSES GUEST RLS)
create or replace function public.get_or_create_guest_patient(
  p_full_name text,
  p_phone_e164 text,
  p_city text default 'Bengaluru',
  p_email text default null
)
returns uuid language plpgsql security definer set search_path = public as $$
declare
  v_patient_id uuid;
  v_clean_phone_7 text;
begin
  v_clean_phone_7 := public.clean_phone_7(p_phone_e164);

  -- A. Try matching existing guest or authenticated patient by clean 7-digit phone suffix
  if length(v_clean_phone_7) >= 5 then
    select id into v_patient_id
    from public.patients
    where public.clean_phone_7(phone_e164) = v_clean_phone_7
    order by created_at desc
    limit 1;
  end if;

  -- B. Fallback match by email
  if v_patient_id is null and p_email is not null and trim(p_email) <> '' then
    select id into v_patient_id
    from public.patients
    where lower(trim(coalesce(email, ''))) = lower(trim(p_email))
    order by created_at desc
    limit 1;
  end if;

  -- C. If patient record found, update details if needed
  if v_patient_id is not null then
    update public.patients
    set full_name = coalesce(nullif(trim(p_full_name), ''), full_name),
        city = coalesce(nullif(trim(p_city), ''), city),
        email = coalesce(nullif(trim(p_email), ''), email),
        updated_at = now()
    where id = v_patient_id;
  else
    -- D. Insert new guest patient record
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
      null,
      coalesce(nullif(trim(p_full_name), ''), 'Guest Patient'),
      p_phone_e164,
      coalesce(nullif(trim(p_city), ''), 'Bengaluru'),
      nullif(trim(p_email), ''),
      false
    )
    returning id into v_patient_id;
  end if;

  return v_patient_id;
end;
$$;

grant execute on function public.get_or_create_guest_patient(text, text, text, text) to public, anon, authenticated, service_role;

-- 3. SECURITY DEFINER RPC: LINK GUEST RECORDS ON OTP LOGIN
drop function if exists public.link_guest_records_on_otp_login();

create or replace function public.link_guest_records_on_otp_login()
returns jsonb as $$
declare
  current_user_id uuid := auth.uid();
  user_phone text;
  user_email text;
  user_phone_digits text := '';
  user_phone_clean_7 text := '';
  primary_patient_id uuid;
  linked_patient_count int := 0;
  linked_prescription_count int := 0;
begin
  -- A. Require authenticated Supabase session
  if current_user_id is null then
    return jsonb_build_object(
      'success', false,
      'reason', 'unauthenticated',
      'linked_patient_count', 0,
      'linked_prescription_count', 0
    );
  end if;

  -- B. Extract phone and email directly from auth.users row with metadata fallbacks
  select 
    coalesce(
      phone,
      raw_user_meta_data->>'phone',
      raw_user_meta_data->>'phone_e164',
      raw_user_meta_data->>'phone_number',
      ''
    ),
    coalesce(email, raw_user_meta_data->>'email', '')
  into user_phone, user_email
  from auth.users
  where id = current_user_id;

  user_phone := coalesce(trim(user_phone), '');
  user_email := coalesce(trim(user_email), '');

  user_phone_digits := regexp_replace(user_phone, '\D', '', 'g');
  user_phone_clean_7 := public.clean_phone_7(user_phone);

  -- C. Locate or create primary patient profile for current_user_id
  select id into primary_patient_id
  from public.patients
  where user_id = current_user_id
  order by created_at asc
  limit 1;

  -- If no patient profile is linked to current_user_id yet, find matching guest patient or create one
  if primary_patient_id is null then
    if length(user_phone_clean_7) >= 5 then
      select id into primary_patient_id
      from public.patients
      where (user_id is null or user_id = current_user_id)
        and (
          public.clean_phone_7(phone_e164) = user_phone_clean_7
          or regexp_replace(coalesce(phone_e164, ''), '\D', '', 'g') like '%' || right(user_phone_digits, 5) || '%'
        )
      order by created_at asc
      limit 1;
    end if;

    if primary_patient_id is null and user_email <> '' then
      select id into primary_patient_id
      from public.patients
      where (user_id is null or user_id = current_user_id)
        and lower(trim(coalesce(email, ''))) = lower(user_email)
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
      insert into public.patients (id, user_id, full_name, is_verified)
      values (
        gen_random_uuid(),
        current_user_id,
        coalesce((select raw_user_meta_data->>'full_name' from auth.users where id = current_user_id), 'Patient'),
        true
      )
      returning id into primary_patient_id;
    end if;
  end if;

  -- D. Update guest patient records to point user_id to current_user_id
  update public.patients
  set user_id = current_user_id,
      is_verified = true,
      updated_at = now()
  where (user_id is null or user_id = current_user_id)
    and (
      (length(user_phone_clean_7) >= 5 and public.clean_phone_7(phone_e164) = user_phone_clean_7)
      or (length(user_phone_digits) >= 5 and regexp_replace(coalesce(phone_e164, ''), '\D', '', 'g') like '%' || right(user_phone_digits, 5) || '%')
      or (user_email <> '' and lower(trim(coalesce(email, ''))) = lower(user_email))
      or created_at > (now() - interval '24 hours')
    );

  get diagnostics linked_patient_count = row_count;

  -- E. LINK ALL PRESCRIPTIONS belonging to this user or any linked patient records
  update public.prescriptions
  set user_id = current_user_id,
      patient_id = primary_patient_id
  where (user_id is null or user_id = current_user_id)
    and (
      patient_id in (
        select id from public.patients where user_id = current_user_id
      )
      or enquiry_id in (
        select e.id from public.enquiries e
        join public.patients p on e.patient_id = p.id
        where p.user_id = current_user_id
      )
      or created_at > (now() - interval '24 hours')
    );

  get diagnostics linked_prescription_count = row_count;

  -- F. LINK ALL ENQUIRIES belonging to linked patient records
  update public.enquiries
  set patient_id = primary_patient_id
  where patient_id in (
    select id from public.patients
    where user_id = current_user_id
  );

  -- G. LINK ALL ORDERS belonging to linked patient records
  update public.orders
  set user_id = current_user_id,
      patient_id = primary_patient_id
  where (user_id is null or user_id = current_user_id)
    and patient_id in (
      select id from public.patients
      where user_id = current_user_id
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
