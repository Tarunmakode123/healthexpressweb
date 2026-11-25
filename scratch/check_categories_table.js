import { createClient } from '@supabase/supabase-js';

const SUPABASE_URL = 'https://fqjwivngayvhszahffly.supabase.co';
const SUPABASE_ANON_KEY = 'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJpc3MiOiJzdXBhYmFzZSIsInJlZiI6ImZxandpdm5nYXl2aHN6YWhmZmx5Iiwicm9sZSI6ImFub24iLCJpYXQiOjE3NDAxNjg0MjUsImV4cCI6MjA1NTc0NDQyNX0.F_rA2JbYvNl_iS_Zl_Oq7xN613M_P-1-B8sFkZfJ3lI';

const supabase = createClient(SUPABASE_URL, SUPABASE_ANON_KEY);

async function checkAndSeedCategories() {
  console.log('Checking public.categories table in Supabase production...');

  const { data, count, error } = await supabase
    .from('categories')
    .select('*', { count: 'exact' });

  if (error) {
    console.log('Table public.categories status:', error.message);
  } else {
    console.log('public.categories table exists! Current row count:', count);
    console.log('Categories:', data);
  }
}

checkAndSeedCategories();
