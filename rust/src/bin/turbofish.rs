fn main() {
    let unique: Vec<char> = "Rustacean".chars().collect();
    let list = "Rustacean".chars().collect::<Vec<char>>();
    assert_eq!(unique, list);

    let two_pi: f64 = "6.283185307179586".parse().unwrap();
    let tau = "6.283185307179586".parse::<f64>().unwrap();
    assert_eq!(two_pi, tau);
}

