let readline = require('readline');
let reader = readline.createInterface(process.stdin, null);
let counts = Object.create(null);

reader.on('line', line =>
  (line.toLowerCase().match(/[a-z']+/g) || []).forEach(word =>
    counts[word] = (counts[word] || 0) + 1
  )
).on('close', () =>
  Object.keys(counts).sort().forEach(word =>
    console.log('%s %d', word, counts[word])
  )
);
