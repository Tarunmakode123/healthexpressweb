const url = 'https://lacsmipikpohchhdfzjn.supabase.co/rest/v1/patients?select=*';
const anonKey = 'sb_publishable_-Kx62Hm3TebdU5uTaS6wRw_3zRyNsdU';

async function testFetch() {
  console.log('--- FETCHING REST ENDPOINT DIRECTLY ---');
  try {
    const res = await fetch(url, {
      headers: {
        'apikey': anonKey,
        'Authorization': `Bearer ${anonKey}`
      }
    });
    console.log('Status:', res.status, res.statusText);
    const body = await res.text();
    console.log('Response Body:', body);
  } catch (err) {
    console.error('Fetch Error:', err);
  }
}

testFetch();
