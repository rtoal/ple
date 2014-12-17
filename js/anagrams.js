if (process.argv.length !== 3) {
    console.error('Exactly one argument is required');
    process.exit(1);
}

var word = process.argv[2];
generatePermutations(word.length-1, word.split(''));

function generatePermutations(n, a) {
    if (n === 0) {
        console.log(a.join(''));
    } else {
        for (var i = 0; i <= n; i++) {
            generatePermutations(n-1, a);
            swap(a, n % 2 === 0 ? i : 0, n);
        }
    }
}

function swap(a, i, j) {
    var saved = a[i];
    a[i] = a[j];
    a[j] = saved;
}

