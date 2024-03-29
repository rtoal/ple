function printPermutations(a, n) {
  if (n === 0) {
    console.log(a.join("\t"))
  } else {
    for (let i = 0; i < n; i++) {
      printPermutations(a, n - 1)
      const j = n % 2 === 0 ? 0 : i
      ;[a[j], a[n]] = [a[n], a[j]]
    }
    printPermutations(a, n - 1)
  }
}

const args = process.argv.slice(2)
printPermutations(args, args.length - 1)
