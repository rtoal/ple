fn main() {
    let mut s = String::from("Hello, World!");
    unsafe {
        s.as_mut_vec().sort();
    }
    assert_eq!(s, " !,HWdellloor".to_string());
}
