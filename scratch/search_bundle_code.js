const url = 'https://healthexpressweb.vercel.app/assets/index-B4-UaWv-.js';

async function searchBundle() {
  const res = await fetch(url);
  const code = await res.text();

  const idx = code.indexOf('[HEALTH DEBUG] activeUserId');
  if (idx !== -1) {
    console.log('--- FOUND [HEALTH DEBUG] IN BUNDLE ---');
    console.log(code.substring(idx - 200, idx + 1500));
  } else {
    console.log('Not found');
  }
}

searchBundle();
