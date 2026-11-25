import { createClient } from '@supabase/supabase-js';

const supabaseUrl = 'https://lacsmipikpohchhdfzjn.supabase.co';
const supabaseAnonKey = 'sb_publishable_-Kx62Hm3TebdU5uTaS6wRw_3zRyNsdU';

const supabase = createClient(supabaseUrl, supabaseAnonKey);

async function testStorageUpload() {
  console.log('=== TESTING SUPABASE STORAGE PRESCRIPTIONS BUCKET UPLOAD ===');
  
  const dummyBuffer = Buffer.from('Dummy Prescription Content for Health Express');
  const filePath = `guest/HE-TEST-001/${Date.now()}_test.pdf`;

  console.log('Target filePath:', filePath);

  try {
    const { data, error } = await supabase.storage
      .from('prescriptions')
      .upload(filePath, dummyBuffer, {
        contentType: 'application/pdf',
        upsert: false
      });

    console.log('Upload Result Data:', data);
    console.log('Upload Result Error:', error);
  } catch (err) {
    console.error('Upload Threw Exception:', err);
  }
}

testStorageUpload();
