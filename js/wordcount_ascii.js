let readline = require('readline');
let reader = readline.createInterface(process.stdin, null);
let counts = new Map();

reader.on('line', line =>
  (line.toLowerCase().match(/[a-z']+/g) || []).forEach(word =>
    counts.set(word, (counts.get(word) || 0) + 1)
  )
).on('close', () =>
  Array.from(counts.keys()).sort().forEach(word =>
    console.log('%s %d', word, counts.get(word))
  )
);
