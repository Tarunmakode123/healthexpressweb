import fs from 'fs';
import path from 'path';
import { fileURLToPath } from 'url';

const __dirname = path.dirname(fileURLToPath(import.meta.url));
const sourcePath = path.join(__dirname, '../supabase/migrations/20261001_services_catalog.sql');
const outputDir = path.join(__dirname, '../supabase/migrations/seed_batches');

if (!fs.existsSync(outputDir)) {
  fs.mkdirSync(outputDir, { recursive: true });
}

const content = fs.readFileSync(sourcePath, 'utf8');

// Split content by "INSERT INTO public.services"
const parts = content.split(/INSERT INTO public\.services/i);
const header = parts[0];
const insertBlocks = parts.slice(1).map(p => 'INSERT INTO public.services' + p);

console.log(`Found ${insertBlocks.length} service insert statements.`);

const BATCH_SIZE = 450;
const totalBatches = Math.ceil(insertBlocks.length / BATCH_SIZE);

for (let b = 0; b < totalBatches; b++) {
  const start = b * BATCH_SIZE;
  const end = Math.min(start + BATCH_SIZE, insertBlocks.length);
  const batchBlocks = insertBlocks.slice(start, end);

  const batchSql = `-- ============================================================
-- HEALTH EXPRESS — SERVICE CATALOG SEED BATCH ${b + 1} OF ${totalBatches}
-- Services ${start + 1} to ${end} of ${insertBlocks.length}
-- ============================================================

${batchBlocks.join('\n')}
`;

  const filePath = path.join(outputDir, `seed_batch_${b + 1}.sql`);
  fs.writeFileSync(filePath, batchSql, 'utf8');
  console.log(`Wrote ${filePath} (${(fs.statSync(filePath).size / 1024).toFixed(1)} KB, ${batchBlocks.length} records).`);
}
