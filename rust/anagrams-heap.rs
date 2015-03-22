#![feature(exit_status)]

fn main() {
    let args = std::env::args();
    if args.len() != 2 {
        println!("Please enter only one argument.");
        std::env::set_exit_status(1);
        return;
    }
    let mut word: Vec<char> = args.last().unwrap().chars().collect();
    generate_permutations(word.len() - 1, &mut word);
}

fn generate_permutations(n: usize, a: &mut Vec<char>) {
    if n == 0 {
        println!("{}", a.clone().into_iter().collect::<String>());
    } else {
        for i in 0..n+1 {
            generate_permutations(n - 1, a);
            a.swap(if n % 2 == 0 { i } else { 0 }, n);
        }
    }
}
