
fn main() {
    let s = "Ć←afé";                          // inferred type is &str
    assert_eq!(s.len(), 9);                   // 9 bytes
    assert_eq!(s.bytes().count(), 9);         // 9 bytes
    assert_eq!(s.chars().count(), 5);         // 5 scalars
    assert_eq!(s.chars().nth(2), Some('a'));  // 3rd scalar
    assert_eq!(s.chars().last(), Some('é'));  // last scalar
    assert_eq!(s.chars().nth(99), None);

    let mut note = String::from(s);           // str -> String
    note.push('!');                           // push a char    
    for c in note.chars() {
        println!("{c}");
    }
}
