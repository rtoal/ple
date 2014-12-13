fn main() {
    for c in range(1i, 51) {
        for b in range(1, c) {
            for a in range(1, b) {
                if a * a + b * b == c * c {
                    println!("{}, {}, {}", a, b, c)
                }
            }
        }
    }
}
