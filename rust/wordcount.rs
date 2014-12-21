#![feature(phase)]
#[phase(plugin)]
extern crate regex_macros;
extern crate regex;
use std::collections::BTreeMap;
use std::io;
use std::ascii::AsciiExt;

fn main() {
    let re = regex!(r"[^a-z']+");
    let mut counts = BTreeMap::new();
    for line in io::stdin().lock().lines() {
        let raw_word = line.unwrap().to_ascii_lower();
        for word in re.split(&*raw_word) {
            if word.len() > 0 {
                let num_items = match counts.get(word) {
                    Some(x) => *x,
                    None    => 0i
                };
                counts.insert(String::from_str(word), num_items + 1);
            }
        }
    }
    for (key, value) in counts.iter() {
        println!("{} {}", key, value);
    }
}
