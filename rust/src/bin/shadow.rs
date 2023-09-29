fn main() {
    let x = 5;
    let x = "I am a different x!";        // shadows the first x
    assert_eq!(x, "I am a different x!")
}
