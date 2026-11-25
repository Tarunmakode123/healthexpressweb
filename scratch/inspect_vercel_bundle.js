const url = 'https://healthexpressweb.vercel.app/assets/index-B4-UaWv-.js';

async function inspectBundle() {
  console.log('--- INSPECTING VERCEL JS BUNDLE: index-B4-UaWv-.js ---');
  try {
    const res = await fetch(url);
    console.log('Status:', res.status, res.statusText);
    const code = await res.text();
    console.log('Bundle Length:', code.length);

    console.log('Contains [HEALTH DEBUG]?:', code.includes('[HEALTH DEBUG]'));
    console.log('Contains getMemberOverview?:', code.includes('getMemberOverview'));
    console.log('Contains authenticated-patient?:', code.includes('authenticated-patient'));
    console.log('Contains link_guest_records_on_otp_login?:', code.includes('link_guest_records_on_otp_login'));
  } catch (err) {
    console.error('Fetch Error:', err);
  }
}

inspectBundle();
