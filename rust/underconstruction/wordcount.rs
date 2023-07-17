extern crate regex;

use std::collections::BTreeMap;
use std::io::{self, BufRead};

use regex::Regex;

fn main() {
    let word_re = Regex::new(r"[\pL']+").unwrap();

    let mut counts: BTreeMap<String, isize> = BTreeMap::new();

    let stdin = io::stdin();
    for line in stdin.lock().lines() {
        let line = line.unwrap().to_lowercase();
        let matches = word_re.find_iter(&line);
        let words = matches.map(|(x, y)| &line[x..y]);

        for word in words {
            *counts.entry(word.into()).or_insert(0) += 1;
        }
    }
    for (key, value) in counts.iter() {
        println!("{} {}", key, value);
    }
}
