function generatePermutations(a, n) {
  if (n === 0) {
    console.log(a.join(''));
  } else {
    for (let i = 0; i < n; i++) {
      generatePermutations(a, n - 1);
      const j = n % 2 === 0 ? 0 : i;
      [a[j], a[n]] = [a[n], a[j]];
    }
    generatePermutations(a, n - 1);
  }
}

if (process.argv.length !== 3) {
  console.error('Exactly one argument is required');
  process.exit(1);
}
const word = process.argv[2];
generatePermutations(word.split(''), word.length - 1);
