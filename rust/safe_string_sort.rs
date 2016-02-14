fn main() {
    let mut s = "Hello, World!".to_string();
    let mut s_chars = s.into_bytes();
    s_chars.sort();
    s = match String::from_utf8(s_chars) {
      Ok(new_s) => new_s,
      Err(e) => panic!("Invalid string: {}", e)
    };
    println!("{}", s);
    assert_eq!(s, " !,HWdellloor".to_string());
}
