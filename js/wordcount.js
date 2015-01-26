var split = require('split')

var counts = {}

process.stdin.setEncoding('utf8');

process.stdin.pipe(split()).on('data', function (line) {
  (line.toLowerCase().match(/[a-z\']+/g) || []).forEach(function (word) {
    counts[word] = (counts.hasOwnProperty(word) ? counts[word] : 0) + 1;
  });
});

process.stdin.on('end', function () {
  Object.keys(counts).sort().forEach(function (word) {
    console.log('%s %d', word, counts[word]);
  });
});
