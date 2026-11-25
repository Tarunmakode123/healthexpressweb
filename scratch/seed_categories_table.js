import { createClient } from '@supabase/supabase-js';

const SUPABASE_URL = 'https://fqjwivngayvhszahffly.supabase.co';
const SUPABASE_ANON_KEY = 'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJpc3MiOiJzdXBhYmFzZSIsInJlZiI6ImZxandpdm5nYXl2aHN6YWhmZmx5Iiwicm9sZSI6ImFub24iLCJpYXQiOjE3NDAxNjg0MjUsImV4cCI6MjA1NTc0NDQyNX0.F_rA2JbYvNl_iS_Zl_Oq7xN613M_P-1-B8sFkZfJ3lI';

const supabase = createClient(SUPABASE_URL, SUPABASE_ANON_KEY);

const INITIAL_CATEGORIES = [
  {
    slug: 'lab-tests',
    name: 'Lab Tests',
    description: 'Diagnostic blood tests, urine tests, pathology, and clinical lab investigations.',
    icon: 'FlaskConical',
    display_order: 1,
    active: true
  },
  {
    slug: 'imaging',
    name: 'Imaging & Radiology',
    description: 'X-Rays, MRI, CT Scans, Ultrasound, and diagnostic imaging services.',
    icon: 'Scan',
    display_order: 2,
    active: true
  },
  {
    slug: 'health-packages',
    name: 'Health Packages',
    description: 'Full body health checkups, preventive health screens, and wellness packages.',
    icon: 'ShieldCheck',
    display_order: 3,
    active: true
  },
  {
    slug: 'genetics',
    name: 'Genomics & Genetics',
    description: 'DNA testing, genetic wellness, pharmacogenomics, and hereditary risk profiling.',
    icon: 'Dna',
    display_order: 4,
    active: true
  },
  {
    slug: 'home-nursing',
    name: 'Home Nursing',
    description: 'Professional home nursing care, post-surgical care, IV infusions, and elderly support.',
    icon: 'Home',
    display_order: 5,
    active: true
  }
];

async function seedCategories() {
  console.log('Seeding initial categories into public.categories...');
  for (const cat of INITIAL_CATEGORIES) {
    const { data, error } = await supabase
      .from('categories')
      .upsert(cat, { onConflict: 'slug' })
      .select();

    if (error) {
      console.error(`Error upserting category "${cat.slug}":`, error.message);
    } else {
      console.log(`✓ Upserted category "${cat.slug}":`, data[0]?.name);
    }
  }
}

seedCategories();
