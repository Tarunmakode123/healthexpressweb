-- ============================================================
-- HEALTH EXPRESS — SUPABASE SQL MIGRATION
-- FIX GUEST PRESCRIPTION TO AUTHENTICATED USER LINKING
-- ============================================================

create or replace function public.link_guest_records_on_otp_login()
returns void as $$
declare
  current_user_id uuid := auth.uid();
  user_phone text;
  user_email text;
  user_phone_clean text := '';
  primary_patient_id uuid;
begin
  -- 1. Require authenticated Supabase session
  if current_user_id is null then
    raise exception 'Unauthorized: Must be an authenticated Supabase user to link records.';
  end if;

  -- 2. Extract phone and email directly from auth.users for auth.uid()
  select 
    coalesce(phone, raw_user_meta_data->>'phone', raw_user_meta_data->>'phone_e164', ''),
    coalesce(email, raw_user_meta_data->>'email', '')
  into user_phone, user_email
  from auth.users
  where id = current_user_id;

  user_phone := coalesce(trim(user_phone), '');
  user_email := coalesce(trim(user_email), '');

  -- Extract clean numeric digits for phone matching
  user_phone_clean := regexp_replace(user_phone, '\D', '', 'g');

  -- 3. Locate or create primary patient profile for auth.uid()
  select id into primary_patient_id
  from public.patients
  where user_id = current_user_id
  order by created_at asc
  limit 1;

  -- If no patient record has user_id set yet, find matching guest patient or create one
  if primary_patient_id is null then
    -- Try matching guest patient by 10-digit phone suffix or email
    if length(user_phone_clean) >= 10 then
      select id into primary_patient_id
      from public.patients
      where (user_id is null or user_id = current_user_id)
        and right(regexp_replace(phone_e164, '\D', '', 'g'), 10) = right(user_phone_clean, 10)
      order by created_at asc
      limit 1;
    end if;

    if primary_patient_id is null and user_email <> '' then
      select id into primary_patient_id
      from public.patients
      where (user_id is null or user_id = current_user_id)
        and lower(trim(email)) = lower(user_email)
      order by created_at asc
      limit 1;
    end if;

    -- If found a guest patient, update it to be the primary patient
    if primary_patient_id is not null then
      update public.patients
      set user_id = current_user_id,
          is_verified = true,
          updated_at = now()
      where id = primary_patient_id;
    else
      -- Insert a new primary patient record if none exists
      insert into public.patients (id, user_id, full_name, phone_e164, email, is_verified)
      values (
        gen_random_uuid(),
        current_user_id,
        coalesce((select raw_user_meta_data->>'full_name' from auth.users where id = current_user_id), 'Patient'),
        case when user_phone <> '' then user_phone else null end,
        case when user_email <> '' then user_email else null end,
        true
      )
      returning id into primary_patient_id;
    end if;
  end if;

  -- 4. Update all guest patient records matching phone/email to point user_id to current_user_id
  update public.patients
  set user_id = current_user_id,
      is_verified = true,
      updated_at = now()
  where (
    (length(user_phone_clean) >= 10 and right(regexp_replace(phone_e164, '\D', '', 'g'), 10) = right(user_phone_clean, 10))
    or (user_email <> '' and lower(trim(email)) = lower(user_email))
    or user_id = current_user_id
  ) and (user_id is null or user_id = current_user_id);

  -- 5. LINK ALL PRESCRIPTIONS belonging to this user or any linked patient records
  update public.prescriptions
  set user_id = current_user_id,
      patient_id = primary_patient_id
  where (
    user_id = current_user_id
    or patient_id in (
      select id from public.patients
      where user_id = current_user_id
         or (length(user_phone_clean) >= 10 and right(regexp_replace(phone_e164, '\D', '', 'g'), 10) = right(user_phone_clean, 10))
         or (user_email <> '' and lower(trim(email)) = lower(user_email))
    )
  );

  -- 6. LINK ALL ENQUIRIES belonging to this user or any linked patient records
  update public.enquiries
  set patient_id = primary_patient_id
  where patient_id in (
    select id from public.patients
    where user_id = current_user_id
       or (length(user_phone_clean) >= 10 and right(regexp_replace(phone_e164, '\D', '', 'g'), 10) = right(user_phone_clean, 10))
       or (user_email <> '' and lower(trim(email)) = lower(user_email))
  );

  -- 7. LINK ALL ORDERS belonging to this user or any linked patient records
  update public.orders
  set user_id = current_user_id,
      patient_id = primary_patient_id
  where (
    user_id = current_user_id
    or patient_id in (
      select id from public.patients
      where user_id = current_user_id
         or (length(user_phone_clean) >= 10 and right(regexp_replace(phone_e164, '\D', '', 'g'), 10) = right(user_phone_clean, 10))
         or (user_email <> '' and lower(trim(email)) = lower(user_email))
    )
  );

  -- 8. LINK ALL ANALYTICS EVENTS
  update public.analytics_events
  set user_id = current_user_id,
      patient_id = primary_patient_id
  where user_id is null
    and (
      patient_id = primary_patient_id
      or patient_id in (
        select id from public.patients
        where user_id = current_user_id
           or (length(user_phone_clean) >= 10 and right(regexp_replace(phone_e164, '\D', '', 'g'), 10) = right(user_phone_clean, 10))
      )
    );
end;
$$ language plpgsql security definer set search_path = public;

revoke execute on function public.link_guest_records_on_otp_login() from public, anon;
grant execute on function public.link_guest_records_on_otp_login() to authenticated;
