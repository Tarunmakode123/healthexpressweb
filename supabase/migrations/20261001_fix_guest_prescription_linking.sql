-- ============================================================
-- HEALTH EXPRESS — SUPABASE SQL MIGRATION
-- GUARANTEED GUEST PRESCRIPTION TO AUTHENTICATED USER LINKING
-- ============================================================

drop function if exists public.link_guest_records_on_otp_login();

create or replace function public.link_guest_records_on_otp_login()
returns jsonb as $$
declare
  current_user_id uuid := auth.uid();
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

  -- 2. Locate or create primary patient profile for current_user_id
  select id into primary_patient_id
  from public.patients
  where user_id = current_user_id
  order by created_at asc
  limit 1;

  -- If no patient profile is linked to current_user_id yet, find an unlinked guest patient or create one
  if primary_patient_id is null then
    select id into primary_patient_id
    from public.patients
    where user_id is null
    order by created_at desc
    limit 1;

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

  -- 3. Update all unlinked guest patient records to point user_id to current_user_id
  update public.patients
  set user_id = current_user_id,
      is_verified = true,
      updated_at = now()
  where user_id is null;

  get diagnostics linked_patient_count = row_count;

  -- 4. LINK ALL UNLINKED PRESCRIPTIONS to current_user_id and primary_patient_id
  update public.prescriptions
  set user_id = current_user_id,
      patient_id = primary_patient_id
  where user_id is null
     or patient_id in (
       select id from public.patients where user_id = current_user_id
     );

  get diagnostics linked_prescription_count = row_count;

  -- 5. LINK ALL UNLINKED ENQUIRIES to primary_patient_id
  update public.enquiries
  set patient_id = primary_patient_id
  where patient_id is null
     or patient_id in (
       select id from public.patients where user_id = current_user_id
     );

  -- 6. LINK ALL UNLINKED ORDERS to current_user_id and primary_patient_id
  update public.orders
  set user_id = current_user_id,
      patient_id = primary_patient_id
  where user_id is null
     or patient_id in (
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
