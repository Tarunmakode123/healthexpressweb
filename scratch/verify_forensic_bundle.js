async function verifyBundle() {
  const jsRes = await fetch('https://healthexpressweb.vercel.app/assets/index-rA7Dta24.js');
  const jsCode = await jsRes.text();
  console.log('Bundle length:', jsCode.length);
  console.log('Contains [HEALTH FORENSIC]?:', jsCode.includes('[HEALTH FORENSIC]'));
  console.log('Contains PRESCRIPTIONS STEP A?:', jsCode.includes('PRESCRIPTIONS STEP A'));
  console.log('Contains Promise.allSettled?:', jsCode.includes('allSettled'));
}

verifyBundle();
