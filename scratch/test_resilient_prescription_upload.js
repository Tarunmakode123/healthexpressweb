import { submitGuestPrescription } from '../src/services/prescriptionService.js';

async function testResilientUpload() {
  console.log('=== TESTING RESILIENT GUEST PRESCRIPTION SUBMISSION ===');

  // Create dummy File-like object
  const dummyFile = {
    name: 'Tarun_Resume_Test.pdf',
    size: 1024 * 100, // 100KB
    type: 'application/pdf'
  };

  const res = await submitGuestPrescription({
    files: [dummyFile],
    fullName: 'tkm',
    phone: '8305059502',
    city: 'Bengaluru',
    notes: 'Test resilient submission'
  });

  console.log('Submission Result:', res);
}

testResilientUpload();
