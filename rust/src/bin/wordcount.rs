extern crate regex;

use std::collections::BTreeMap;
use std::io::{self, BufRead};

use regex::Regex;

fn main() {
    let word_pattern = Regex::new(r"[\pL']+").unwrap();

    let mut counts: BTreeMap<String, isize> = BTreeMap::new();

    for line in io::stdin().lock().lines() {
        let line = line.unwrap().to_lowercase();
        let matches = word_pattern.find_iter(&line);
        let words: Vec<&str> = matches.map(|m| m.as_str()).collect();

        for word in words {
            *counts.entry(word.into()).or_insert(0) += 1;
        }
    }
    for (key, value) in counts.iter() {
        println!("{key} {value}");
    }
}
