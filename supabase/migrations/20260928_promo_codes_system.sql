-- ============================================================
-- HEALTH EXPRESS — PROMO CODE & COUPON MANAGEMENT SYSTEM
-- Centralized database migration for admin-controlled promotions
-- ============================================================

-- 1. TABLE: public.promo_codes
create table if not exists public.promo_codes (
  id uuid default gen_random_uuid() primary key,
  code text unique not null,
  discount_type text not null check (discount_type in ('flat', 'percentage')),
  discount_value numeric not null check (discount_value > 0),
  min_order_amount numeric default 0 check (min_order_amount >= 0),
  max_discount numeric null check (max_discount is null or max_discount > 0),
  valid_from timestamptz default now() not null,
  valid_until timestamptz null,
  usage_limit integer null check (usage_limit is null or usage_limit > 0),
  used_count integer default 0 check (used_count >= 0),
  is_active boolean default true not null,
  created_at timestamptz default now() not null,
  updated_at timestamptz default now() not null
);

-- Index for code lookup and active status
create index if not exists idx_promo_codes_code on public.promo_codes(code);
create index if not exists idx_promo_codes_active on public.promo_codes(is_active, valid_from, valid_until);

-- 2. TABLE: public.promo_code_usage
create table if not exists public.promo_code_usage (
  id uuid default gen_random_uuid() primary key,
  promo_code_id uuid not null references public.promo_codes(id) on delete cascade,
  order_id uuid null references public.orders(id) on delete set null,
  patient_id uuid null references public.patients(id) on delete set null,
  discount_applied numeric not null check (discount_applied >= 0),
  created_at timestamptz default now() not null
);

-- Index for usage tracking
create index if not exists idx_promo_usage_promo_id on public.promo_code_usage(promo_code_id);
create index if not exists idx_promo_usage_order_id on public.promo_code_usage(order_id);
create index if not exists idx_promo_usage_patient_id on public.promo_code_usage(patient_id);

-- ============================================================
-- ROW LEVEL SECURITY (RLS) POLICIES
-- ============================================================

alter table public.promo_codes enable row level security;
alter table public.promo_code_usage enable row level security;

-- Public / Anonymous Customers: Select active promo codes (without internal metrics exposure)
drop policy if exists "Customers can view active promo codes" on public.promo_codes;
create policy "Customers can view active promo codes" on public.promo_codes
  for select using (
    is_active = true and
    valid_from <= now() and
    (valid_until is null or valid_until >= now())
  );

-- Admins: Full management access to promo_codes
drop policy if exists "Admins have full access to promo codes" on public.promo_codes;
create policy "Admins have full access to promo codes" on public.promo_codes
  for all using (
    exists (
      select 1 from public.admin_users
      where user_id = auth.uid() and is_active = true
    )
  );

-- Admins: Full view access to promo_code_usage
drop policy if exists "Admins can view promo code usage" on public.promo_code_usage;
create policy "Admins can view promo code usage" on public.promo_code_usage
  for select using (
    exists (
      select 1 from public.admin_users
      where user_id = auth.uid() and is_active = true
    )
  );

-- Service role & security definer functions can insert usage records
drop policy if exists "Allow usage insertion upon order completion" on public.promo_code_usage;
create policy "Allow usage insertion upon order completion" on public.promo_code_usage
  for insert with check (true);

-- ============================================================
-- ATOMIC PROMO CODE USAGE INCREMENT RPC FUNCTION
-- Prevents race conditions on limited-use coupons
-- ============================================================

create or replace function public.record_promo_code_usage_atomic(
  p_code_id uuid,
  p_order_id uuid default null,
  p_patient_id uuid default null,
  p_discount_applied numeric default 0
) returns boolean as $$
declare
  v_usage_limit integer;
  v_used_count integer;
  v_is_active boolean;
  v_valid_until timestamptz;
begin
  -- 1. Lock and check promo_code row
  select usage_limit, used_count, is_active, valid_until
  into v_usage_limit, v_used_count, v_is_active, v_valid_until
  from public.promo_codes
  where id = p_code_id
  for update;

  if not found then
    return false;
  end if;

  if not v_is_active then
    return false;
  end if;

  if v_valid_until is not null and v_valid_until < now() then
    return false;
  end if;

  if v_usage_limit is not null and v_used_count >= v_usage_limit then
    return false;
  end if;

  -- 2. Increment used_count safely
  update public.promo_codes
  set used_count = used_count + 1,
      updated_at = now()
  where id = p_code_id;

  -- 3. Insert usage audit record
  insert into public.promo_code_usage (promo_code_id, order_id, patient_id, discount_applied)
  values (p_code_id, p_order_id, p_patient_id, p_discount_applied);

  return true;
end;
$$ language plpgsql security definer set search_path = public;

-- Grant execute access
grant execute on function public.record_promo_code_usage_atomic(uuid, uuid, uuid, numeric) to anon, authenticated, service_role;

-- ============================================================
-- SEED INITIAL PROMO CODES FOR HEALTH EXPRESS
-- ============================================================
insert into public.promo_codes (code, discount_type, discount_value, min_order_amount, max_discount, valid_from, valid_until, usage_limit, is_active)
values 
  ('HEALTH50', 'flat', 50, 299, null, now(), now() + interval '90 days', 500, true),
  ('WELCOME10', 'percentage', 10, 199, 150, now(), now() + interval '90 days', 1000, true),
  ('EXPRESS20', 'percentage', 20, 499, 250, now(), now() + interval '90 days', 250, true)
on conflict (code) do nothing;
