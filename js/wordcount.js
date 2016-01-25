let reader = require('readline').createInterface(process.stdin, null);
let XRegExp = require('xregexp').XRegExp;
let counts = new Map();

reader.on('line', line => {
  let wordPattern = XRegExp("[\\p{L}']+", 'g');
  for (let word of line.toLowerCase().match(wordPattern) || []) {
    counts.set(word, (counts.get(word) || 0) + 1);
  }
}).on('close', () => {
  for (let word of Array.from(counts.keys()).sort()) {
    console.log(`${word}, ${counts.get(word)}`);
  }
});
