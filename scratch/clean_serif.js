import fs from 'fs';
import path from 'path';

const files = [
  'src/components/sections/NewServicesSection.jsx',
  'src/components/sections/Newwhychooseus.jsx',
  'src/components/sections/Newsectionvideoabout.jsx',
  'src/components/sections/Sixpointsection.jsx',
  'src/components/sections/Newreviewsection.jsx',
  'src/components/sections/Newfaqsection.jsx'
];

for (const file of files) {
  const filePath = path.resolve('c:/desktop/healthexpress-website', file);
  if (!fs.existsSync(filePath)) {
    console.log('Not found:', filePath);
    continue;
  }
  let content = fs.readFileSync(filePath, 'utf8');

  // 1. Remove font-serif class (with surrounding spaces handled)
  content = content.replace(/\s*font-serif/g, '');

  // 2. Remove style={{ fontFamily: 'serif' }} entirely
  content = content.replace(/\s*style=\{\{\s*fontFamily:\s*['"]serif['"]\s*\}\}/g, '');

  // 3. Remove , fontFamily: 'serif' or fontFamily: 'serif', inside style objects
  content = content.replace(/,\s*fontFamily:\s*['"]serif['"]/g, '');
  content = content.replace(/fontFamily:\s*['"]serif['"]\s*,\s*/g, '');

  fs.writeFileSync(filePath, content, 'utf8');
  console.log('Cleaned serif from:', file);
}
