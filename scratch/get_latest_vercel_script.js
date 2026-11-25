async function checkVercelScript() {
  const res = await fetch('https://healthexpressweb.vercel.app/dashboard', {
    headers: { 'User-Agent': 'Mozilla/5.0' }
  });
  const html = await res.text();
  console.log('HTML Length:', html.length);
  const match = html.match(/src="(\/assets\/index-[^"]+\.js)"/);
  if (match) {
    console.log('CURRENT VERCEL SCRIPT PATH:', match[1]);
    const jsRes = await fetch('https://healthexpressweb.vercel.app' + match[1]);
    const jsCode = await jsRes.text();
    console.log('JS Bundle Length:', jsCode.length);
    console.log('Contains [HEALTH DEBUG]?:', jsCode.includes('[HEALTH DEBUG]'));
    console.log('Contains [MEMBER-DEBUG]?:', jsCode.includes('[MEMBER-DEBUG]'));
    console.log('Contains [DATA-SOURCE]?:', jsCode.includes('[DATA-SOURCE]'));
    console.log('Contains isAuthLoading guard?:', jsCode.includes('Auth is loading, waiting for session resolution'));
  } else {
    console.log('No script tag match found in HTML:', html);
  }
}

checkVercelScript();
