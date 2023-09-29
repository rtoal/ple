fn main() {
    let x = 5;
    let times_five = |y| y * x;       // captures first x
    let x = "I am a different x!";    // shadows first x
    assert_eq!(50, times_five(10));   // uses (the captured) first x
    assert_eq!(x, "I am a different x!")
}