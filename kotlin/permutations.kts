fun printPermutations(a: Array<String>, n: Int) {
    if (n <= 0) {
        println(a.joinToString(separator = "\t"))
    } else {
        for (i in 0 ..< n) {
            printPermutations(a, n-1)
            val j = if (n % 2 == 0) {0} else {i}
            a[n] = a[j].also { a[j] = a[n] }
        }
        printPermutations(a, n-1)
    }
}

printPermutations(args, args.lastIndex)
