try {
  const res = await fetch('https://www.healthians.com', {
    headers: {
      'User-Agent': 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/120.0.0.0 Safari/537.36'
    }
  });
  const data = await res.text();
  console.log('Status:', res.status);
  
  const googleFonts = data.match(/fonts\.googleapis\.com[^\"]+/gi);
  console.log('Google Fonts:', googleFonts);
  
  const fontFaces = data.match(/@font-face\s*\{[^}]+\}/gi);
  console.log('Font faces:', fontFaces ? fontFaces.slice(0, 5) : 'None');

  const fontFamilies = data.match(/font-family:[^;\"'}]+/gi);
  console.log('Font families in HTML:', [...new Set(fontFamilies)].slice(0, 20));

  const cssUrls = data.match(/https:\/\/[^"'\s]+\.css/gi);
  console.log('CSS URLs found:', [...new Set(cssUrls)].slice(0, 10));

  if (cssUrls && cssUrls.length > 0) {
    for (const url of cssUrls.slice(0, 5)) {
      try {
        const cssRes = await fetch(url);
        const cssText = await cssRes.text();
        const cssFontFamilies = cssText.match(/font-family:\s*([^;\}]+)/gi);
        if (cssFontFamilies) {
          console.log(`Fonts in ${url.split('/').pop()}:`, [...new Set(cssFontFamilies)].slice(0, 10));
        }
      } catch (e) {
        console.log('Error fetching css:', url);
      }
    }
  }
} catch (err) {
  console.error(err);
}
