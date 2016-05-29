fn main() {
    let mut s = "Hello, World!".to_string();
    unsafe {
        s.as_mut_vec().sort();
    }
    
    println!("{}", s);
    assert_eq!(s, " !,HWdellloor".to_string());
}
