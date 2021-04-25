fun printPermutations(a: Array<String>, n: Int) {
    if (n <= 0) {
        println(a.joinToString(separator = "\t"))
    } else {
        for (i in 0..n-1) {
            printPermutations(a, n-1)
            val j = if (n % 2 == 0) {0} else {i}
            val (oldJ, oldN) = arrayOf(a[j], a[n])
            a[j] = oldN; a[n] = oldJ
        }
        printPermutations(a, n-1)
    }
}

fun main(args: Array<String>) {
    printPermutations(args, args.lastIndex)
}
