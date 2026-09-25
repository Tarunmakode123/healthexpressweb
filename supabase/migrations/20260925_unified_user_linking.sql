-- ============================================================
-- HEALTH EXPRESS — SUPABASE SQL MIGRATION
-- HARDENED UNIFIED USER ACCOUNT LINKING (PATIENTS, PRESCRIPTIONS & ORDERS)
-- ============================================================

create or replace function public.link_guest_records_on_otp_login(
  verified_phone_e164 text
) returns void as $$
declare
  current_user_id uuid := auth.uid();
begin
  -- 1. Require authenticated Supabase session
  if current_user_id is null then
    raise exception 'Unauthorized: Must be an authenticated Supabase user to link records.';
  end if;

  if verified_phone_e164 is null or length(verified_phone_e164) < 10 then
    raise exception 'Invalid phone number provided for account linking.';
  end if;

  -- 2. Link patient record to authenticated user ID (ONLY if user_id IS NULL or equals current_user_id)
  update public.patients
  set user_id = current_user_id,
      is_verified = true,
      updated_at = now()
  where phone_e164 = verified_phone_e164
    and (user_id is null or user_id = current_user_id);

  -- 3. Link prescription records belonging to this patient (ONLY if prescription user_id IS NULL)
  update public.prescriptions
  set user_id = current_user_id
  where patient_id in (
    select id from public.patients where phone_e164 = verified_phone_e164
  ) and user_id is null;

  -- 4. Link order records belonging to this patient (ONLY if order user_id IS NULL)
  update public.orders
  set user_id = current_user_id
  where patient_id in (
    select id from public.patients where phone_e164 = verified_phone_e164
  ) and user_id is null;
end;
$$ language plpgsql security definer set search_path = public;

-- Revoke from public & anon; grant strictly to authenticated role
revoke execute on function public.link_guest_records_on_otp_login(text) from public, anon;
grant execute on function public.link_guest_records_on_otp_login(text) to authenticated;
