import Foundation

func swap(inout a: [Character], i : Int, j : Int) {
    var saved = a[i]
    a[i] = a[j]
    a[j] = saved
}

func generatePermutations(n : Int, inout a : [Character]) {
    if n == 0 {
        println("".join(a.map{"\($0)"}))
    } else {
        for i in 0...n {
            generatePermutations(n-1, &a)
            swap(&a, n % 2 == 0 ? i : 0, n)
        }
    }
}

if Process.arguments.count != 2 {
    let stderr = NSFileHandle.fileHandleWithStandardError()
    let errorMessage = "Exactly one argument is required\n"
    stderr.writeData(errorMessage.dataUsingEncoding(NSUTF8StringEncoding)!)
    exit(1)
}

var word = Process.arguments[1]
var charArray = Array(word)
generatePermutations(countElements(word)-1, &charArray)
