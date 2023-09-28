fn main() {
    let unique: Vec<char> = "Rustacean".chars().collect();
    let list: Vec<char> = "Rustacean".chars().collect();
    assert_eq!(unique, list);

    let two_pi: f64 = "6.283185307179586".parse().unwrap();
    let tau = "6.283185307179586".parse::<f64>().unwrap();
    assert_eq!(two_pi, tau);
}

