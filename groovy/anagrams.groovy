void generatePermutations(a, n) {
    if (!n) {
        println a.join("")
    } else {
        0.upto(n-1) {i ->
            generatePermutations(a, n-1)
            int j = (n % 2 == 0) ? 0 : i
            String temp = a[j]
            a[j] = a[n]
            a[n] = temp
        }
        generatePermutations(a, n-1)
    }
}

static void main(String... args) {
    if (args.size() != 1) {
        throw new RuntimeException("Exactly one argument is required")
    } 
    String[] chars = args[0].split("")
    generatePermutations(chars, chars.size()-1)
}