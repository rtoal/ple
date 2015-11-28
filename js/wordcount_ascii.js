let readline = require('readline');
let reader = readline.createInterface(process.stdin, null);
let counts = new Map();

reader.on('line', line => {
  for (let word of line.toLowerCase().match(/[a-z']+/g) || []) {
    counts.set(word, (counts.get(word) || 0) + 1)
  }
}).on('close', () => {
  for (let word of Array.from(counts.keys()).sort()) {
    console.log('%s %d', word, counts.get(word))
  }
});
