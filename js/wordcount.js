import split from 'split';
import {XRegExp} from 'xregexp';

let counts = Object.create(null);

process.stdin.setEncoding('utf8');

process.stdin.pipe(split()).on('data', line => {
  let wordPattern = XRegExp("[\\p{L}']+", 'g');
  (line.toLowerCase().match(wordPattern) || []).forEach(word =>
    counts[word] = (counts[word] || 0) + 1
  );
});

process.stdin.on('end', () =>
  Object.keys(counts).sort().forEach(word =>
    console.log('%s %d', word, counts[word])
  )
);
