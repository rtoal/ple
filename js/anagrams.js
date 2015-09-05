function swap(a, i, j) {
  [a[i],a[j]] = [a[j],a[i]];
}

function generatePermutations(a, n) {
  if (n === 0) {
    console.log(a.join(''));
  } else {
    for (let i = 0; i <= n; i++) {
      generatePermutations(a, n - 1);
      swap(a, n % 2 === 0 ? i : 0, n);
    }
  }
}

if (process.argv.length !== 3) {
  console.error('Exactly one argument is required');
  process.exit(1);
}
let word = process.argv[2];
generatePermutations(word.split(''), word.length - 1);
