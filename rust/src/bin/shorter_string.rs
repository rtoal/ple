fn shorter_string<'a>(s: &'a str, t: &'a str) -> &'a str {
    if s.len() < t.len() { s } else { t }
}

fn main() {
    let s = "Hello";
    let t = "Hi";
    assert_eq!(shorter_string(s, t), "Hi");
}
