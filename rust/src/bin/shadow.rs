fn main() {
    let x = 5;
    assert_eq!(x, 5);
    let x = "I am a different x!";        // a new variable
    assert_eq!(x, "I am a different x!")  // first variable shadowed 
}
