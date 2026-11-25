import fs from 'fs';
import path from 'path';

function searchDirectory(dir, searchString) {
  const files = fs.readdirSync(dir);
  for (const file of files) {
    const fullPath = path.join(dir, file);
    const stat = fs.statSync(fullPath);
    if (stat.isDirectory()) {
      searchDirectory(fullPath, searchString);
    } else if (file.endsWith('.js') || file.endsWith('.jsx')) {
      const content = fs.readFileSync(fullPath, 'utf8');
      if (content.includes(searchString)) {
        console.log(`Found "${searchString}" in: ${fullPath}`);
      }
    }
  }
}

console.log('Searching for CATEGORIES references in src/...');
searchDirectory('./src', 'CATEGORIES');
