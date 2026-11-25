import { ALL_SERVICES } from '../src/data/services.js';

const s = ALL_SERVICES.find(x => x.slug === 'liver-function-test-labspring-20002');
console.log('Found in ALL_SERVICES:', s ? {
  name: s.name,
  overview: s.overview,
  description: s.description,
  patient_preparation: s.patient_preparation,
  preparation: s.preparation,
  parameters: s.parameters,
  faq: s.faq
} : 'NOT FOUND');

// Let's also check other items in ALL_SERVICES
const sampleItems = ALL_SERVICES.slice(10, 20);
sampleItems.forEach(item => {
  console.log(`\nItem: ${item.name} (${item.slug})`);
  console.log('overview:', item.overview);
  console.log('description:', item.description);
  console.log('patient_preparation:', item.patient_preparation);
  console.log('parameters:', item.parameters);
  console.log('faq:', item.faq);
});
