import { processUserMessage } from '../src/services/chatbotEngine.js';

const testQueries = [
  "hi",
  "hello",
  "namaste",
  "what are your services",
  "tell me about healthexpress",
  "how does it work",
  "contact number",
  "pricing",
  "lab tests",
  "full body checkup",
  "cbc",
  "is service available in Indiranagar",
  "is service available in Delhi",
  "random nonsense test query"
];

console.log("=== HEALTH EXPRESS CHATBOT INTENT TEST RUN ===");
testQueries.forEach((q) => {
  const res = processUserMessage(q);
  console.log(`\nQUERY: "${q}"`);
  console.log(`INTENT: ${res.intent}`);
  console.log(`TEXT PREVIEW: ${res.text.split('\n')[0]}`);
  console.log(`QUICK REPLIES COUNT: ${res.quickReplies?.length || 0}`);
});
