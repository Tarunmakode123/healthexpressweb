-- ============================================================
-- HEALTH EXPRESS — SUPABASE SQL MIGRATION
-- HARDEN PATIENTS TABLE AGAINST PRIVILEGE ESCALATION
-- ============================================================

-- 1. Create a defensive trigger function preventing regular users from elevating to is_admin
create or replace function public.prevent_patient_privilege_escalation()
returns trigger as $$
declare
  v_is_admin boolean := false;
  v_user_email text := '';
begin
  -- If is_admin is not being altered, allow update to proceed
  if (old.is_admin is not distinct from new.is_admin) and (old.user_id is not distinct from new.user_id) then
    return new;
  end if;

  -- Check if current authenticated actor is verified admin
  v_is_admin := public.check_is_admin();

  -- Fallback check for primary admin email
  if auth.uid() is not null then
    select email into v_user_email from auth.users where id = auth.uid();
  end if;

  if v_is_admin is true or lower(coalesce(v_user_email, '')) = 'admin@healthexpress.in' then
    return new;
  end if;

  -- Block unauthorized elevation of is_admin
  if (old.is_admin is distinct from new.is_admin) then
    raise exception 'Forbidden: Unauthorized attempt to alter administrative privileges on patient account.';
  end if;

  -- Block unauthorized re-linking of user_id once already linked
  if (old.user_id is not null and new.user_id is distinct from old.user_id) then
    raise exception 'Forbidden: Patient account is already linked to an authenticated user.';
  end if;

  return new;
end;
$$ language plpgsql security definer set search_path = public;

-- Attach trigger to public.patients table
drop trigger if exists trg_prevent_patient_privilege_escalation on public.patients;
create trigger trg_prevent_patient_privilege_escalation
  before update on public.patients
  for each row execute function public.prevent_patient_privilege_escalation();

-- 2. HARDEN RLS UPDATE POLICY WITH DEFENSIVE 'WITH CHECK' CONSTRAINT
drop policy if exists "Users can update own patient profile" on public.patients;
create policy "Users can update own patient profile" on public.patients
  for update
  using (
    public.check_is_admin() = true or
    (auth.uid() is not null and auth.uid() = user_id)
  )
  with check (
    public.check_is_admin() = true or
    (auth.uid() is not null and auth.uid() = user_id and coalesce(is_admin, false) is false)
  );

-- 3. AUDIT COMMENT FOR SECURITY COMPLIANCE
comment on table public.patients is 'HealthExpress Patient records protected against privilege escalation via trg_prevent_patient_privilege_escalation and strict RLS WITH CHECK.';
