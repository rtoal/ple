let numbers = Array(1...300)

func sum(ofSlice i: Int) -> Int {
    return numbers[i * 100 ..< (i+1) * 100].reduce(0, +)
}

@main
struct ConcurrentSumApp {
    func main() async {
        async let first = sum(ofSlice: 0)
        async let second = sum(ofSlice: 1)
        async let third = sum(ofSlice: 2)
        let partials = await [first, second, third]
        print("Sum is: \(partials.reduce(0, +))")
    }
}
