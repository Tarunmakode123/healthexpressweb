-- ============================================================
-- HEALTH EXPRESS — SUPABASE SQL MIGRATION
-- FIX GUEST PRESCRIPTION TO AUTHENTICATED USER LINKING (JSONB RETURN + 10-DIGIT NORMALIZATION)
-- ============================================================

drop function if exists public.link_guest_records_on_otp_login();

create or replace function public.link_guest_records_on_otp_login()
returns jsonb as $$
declare
  current_user_id uuid := auth.uid();
  user_phone text;
  user_email text;
  user_phone_clean_10 text := '';
  primary_patient_id uuid;
  linked_patient_count int := 0;
  linked_prescription_count int := 0;
begin
  -- 1. Require authenticated Supabase session
  if current_user_id is null then
    return jsonb_build_object(
      'success', false,
      'reason', 'unauthenticated',
      'linked_patient_count', 0,
      'linked_prescription_count', 0
    );
  end if;

  -- 2. Extract phone and email directly from auth.users row with metadata fallbacks
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

  -- Extract clean 10-digit national phone string for matching
  if length(user_phone) > 0 then
    user_phone_clean_10 := right(regexp_replace(user_phone, '\D', '', 'g'), 10);
  end if;

  -- 3. Locate or create primary patient profile for current_user_id
  select id into primary_patient_id
  from public.patients
  where user_id = current_user_id
  order by created_at asc
  limit 1;

  -- If no patient record has user_id set yet, find matching guest patient or create one
  if primary_patient_id is null then
    if length(user_phone_clean_10) = 10 then
      select id into primary_patient_id
      from public.patients
      where (user_id is null or user_id = current_user_id)
        and right(regexp_replace(coalesce(phone_e164, ''), '\D', '', 'g'), 10) = user_phone_clean_10
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

    -- If found a guest patient, update it to be the primary patient profile
    if primary_patient_id is not null then
      update public.patients
      set user_id = current_user_id,
          is_verified = true,
          updated_at = now()
      where id = primary_patient_id
        and (user_id is null or user_id = current_user_id);
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
  -- MUST ONLY TOUCH RECORDS WHERE user_id IS NULL OR user_id = current_user_id (Never overwrite another user's patient)
  update public.patients
  set user_id = current_user_id,
      is_verified = true,
      updated_at = now()
  where (user_id is null or user_id = current_user_id)
    and (
      (length(user_phone_clean_10) = 10 and right(regexp_replace(coalesce(phone_e164, ''), '\D', '', 'g'), 10) = user_phone_clean_10)
      or (user_email <> '' and lower(trim(coalesce(email, ''))) = lower(user_email))
    );

  get diagnostics linked_patient_count = row_count;

  -- 5. LINK ALL PRESCRIPTIONS belonging to this user or any linked patient records
  update public.prescriptions
  set user_id = current_user_id,
      patient_id = coalesce(patient_id, primary_patient_id)
  where (user_id is null or user_id = current_user_id)
    and (
      patient_id in (
        select id from public.patients
        where user_id = current_user_id
           or (length(user_phone_clean_10) = 10 and right(regexp_replace(coalesce(phone_e164, ''), '\D', '', 'g'), 10) = user_phone_clean_10)
           or (user_email <> '' and lower(trim(coalesce(email, ''))) = lower(user_email))
      )
      or enquiry_id in (
        select e.id from public.enquiries e
        join public.patients p on e.patient_id = p.id
        where p.user_id = current_user_id
           or (length(user_phone_clean_10) = 10 and right(regexp_replace(coalesce(p.phone_e164, ''), '\D', '', 'g'), 10) = user_phone_clean_10)
      )
    );

  get diagnostics linked_prescription_count = row_count;

  -- 6. LINK ALL ENQUIRIES belonging to linked patient records
  update public.enquiries
  set patient_id = primary_patient_id
  where patient_id in (
    select id from public.patients
    where user_id = current_user_id
       or (length(user_phone_clean_10) = 10 and right(regexp_replace(coalesce(phone_e164, ''), '\D', '', 'g'), 10) = user_phone_clean_10)
  );

  -- 7. LINK ALL ORDERS belonging to linked patient records
  update public.orders
  set user_id = current_user_id,
      patient_id = primary_patient_id
  where (user_id is null or user_id = current_user_id)
    and patient_id in (
      select id from public.patients
      where user_id = current_user_id
         or (length(user_phone_clean_10) = 10 and right(regexp_replace(coalesce(phone_e164, ''), '\D', '', 'g'), 10) = user_phone_clean_10)
    );

  return jsonb_build_object(
    'success', true,
    'normalized_phone', case when length(user_phone_clean_10) = 10 then 'XXXXXX' || right(user_phone_clean_10, 4) else '' end,
    'linked_patient_count', linked_patient_count,
    'linked_prescription_count', linked_prescription_count,
    'primary_patient_id', primary_patient_id
  );
end;
$$ language plpgsql security definer set search_path = public;

revoke execute on function public.link_guest_records_on_otp_login() from public, anon;
grant execute on function public.link_guest_records_on_otp_login() to authenticated;
