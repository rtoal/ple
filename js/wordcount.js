const reader = require('readline').createInterface(process.stdin, null);
const XRegExp = require('xregexp');
const counts = new Map();

reader.on('line', line => {
  const wordPattern = XRegExp("[\\p{L}']+", 'g');
  for (let word of line.toLowerCase().match(wordPattern) || []) {
    counts.set(word, (counts.get(word) || 0) + 1);
  }
}).on('close', () => {
  for (let word of Array.from(counts.keys()).sort()) {
    console.log(`${word} ${counts.get(word)}`);
  }
});
