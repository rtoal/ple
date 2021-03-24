func generatePermutations(of a: inout [String], upTo n: Int) {
    if n == 0 {
        print(a.joined(separator: "\t"))
    } else {
        for i in 0..<n {
            generatePermutations(of: &a, upTo: n-1)
            a.swapAt(n % 2 == 0 ? 0 : i, n)
        }
        generatePermutations(of: &a, upTo: n-1)
    }
}

var args = Array(CommandLine.arguments[1...])
generatePermutations(of: &args, upTo: args.count-1)
