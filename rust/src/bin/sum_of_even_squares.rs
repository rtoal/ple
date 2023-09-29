fn sum_of_even_squares(a: &[i32]) -> i32 {
    a.iter()
        .filter(|&&x| x % 2 == 0)
        .map(|&x| x * x)
        .sum()
}

fn main() {
    let a = vec![1, 2, 3, 4, 5, 6, 7, 8];
    assert_eq!(sum_of_even_squares(&a), 120);
    assert_eq!(sum_of_even_squares(&a[1..=5]), 56);
}
