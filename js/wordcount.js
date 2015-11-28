let reader = require('readline').createInterface(process.stdin, null);
let XRegExp = require('xregexp').XRegExp;
let counts = new Map();

reader.on('line', line => {
  let wordPattern = XRegExp("[\\p{L}']+", 'g');
  (line.toLowerCase().match(wordPattern) || []).forEach(word =>
    counts.set(word, (counts.get(word) || 0) + 1)
  );
}).on('close', () =>
  Array.from(counts.keys()).sort().forEach(word =>
    console.log('%s %d', word, counts.get(word))
  )
);
