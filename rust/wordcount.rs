use std::collections::BTreeMap;
use std::io;
use std::io::BufRead;

fn main() {
    let mut counts: BTreeMap<String, isize> = BTreeMap::new();
    let stdin = io::stdin();
    for line_result in stdin.lock().lines() {
        if let Ok(line) = line_result {
            let lowercase_line = line.to_lowercase();
            let words = lowercase_line.split(|c: char| {
                 !(c.is_alphabetic() || c == '\'')
             });
             for word in words {
                 if word.len() > 0 {
                     *counts.entry(word.to_string()).or_insert(0) += 1;
                 }
             }
        } else {
            panic!("Error parsing stdin");
        }
    }
    for (key, value) in counts.iter() {
        println!("{} {}", key, value);
    }
}
