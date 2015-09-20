let reader = require('readline').createInterface(process.stdin, null);
let XRegExp = require('xregexp').XRegExp;
let counts = Object.create(null);

reader.on('line', line => {
  let wordPattern = XRegExp("[\\p{L}']+", 'g');
  (line.toLowerCase().match(wordPattern) || []).forEach(word =>
    counts[word] = (counts[word] || 0) + 1
  );
}).on('close', () =>
  Object.keys(counts).sort().forEach(word =>
    console.log('%s %d', word, counts[word])
  )
);
