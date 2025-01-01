void printPermutations(a, n) {
    if (!n) {
        println a.join("\t")
    } else {
        0.upto(n-1) {i ->
            printPermutations(a, n-1)
            int j = (n % 2 == 0) ? 0 : i
            String temp = a[j]
            a[j] = a[n]
            a[n] = temp
        }
        printPermutations(a, n-1)
    }
}

static void main(String... args) {
    if (!args) {
        throw new RuntimeException("At least one argument is required")
    }
    printPermutations(args, args.size()-1)
}