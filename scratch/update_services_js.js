import fs from 'fs';
let content = fs.readFileSync('src/data/services.js', 'utf8');
content = content.replaceAll('"category_name": "Genomics & Genetics"', '"category_name": "Genomics"');
content = content.replaceAll('"category_name": "Imaging & Radiology"', '"category_name": "Radiology"');
fs.writeFileSync('src/data/services.js', content, 'utf8');
console.log('src/data/services.js replaced successfully');
