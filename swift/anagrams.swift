import Darwin

func swap(index i: Int, with j: Int, inout ofArray a: [Character]) {
    let saved = a[i]
    a[i] = a[j]
    a[j] = saved
}

func generatePermutations(inout a : [Character], upTo n: Int) {
    if n == 0 {
        print((a.map{"\($0)"}).joinWithSeparator(""))
    } else {
        for i in 0...n {
            generatePermutations(&a, upTo: n-1)
            swap(index: (n % 2 == 0 ? i : 0), with: n, ofArray: &a)
        }
    }
}

if Process.arguments.count != 2 {
    fputs("Exactly one argument is required\n", __stderrp)
    exit(1)
}

var word = Process.arguments[1]
var charArray = word.characters.map {$0}
generatePermutations(&charArray, upTo: charArray.count-1)
