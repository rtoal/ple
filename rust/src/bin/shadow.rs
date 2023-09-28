fn main() {
    let x = 5;
    let times_five = |y| y * x;
    let x = "I am a different x!";    // shadowing
    assert_eq!(50, times_five(10));   // uses first x in body of call
    assert_eq!(x, "I am a different x!")
}