func generatePermutations (var n : Int, var a : [Character]) {
    if (n == 0) {
        println("".join(a.map{"\($0)"}))
    } else {
        for i in 0...n {
            generatePermutations(n-1, a)
            a = swap(a, n % 2 == 0 ? i : 0, n)
        }
    }
}

func swap (var a: [Character], i : Int, j : Int) -> ([Character]) {
    var saved = a[i]
    a[i] = a[j]
    a[j] = saved
    return a
}

var word = "1234"
generatePermutations((countElements(word) - 1), Array(word))
