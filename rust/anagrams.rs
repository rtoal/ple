#![feature(exit_status)]
#![feature(collections)]

fn main() {
    let args = std::env::args();
    if args.len() != 2 {
        println!("Please enter only one argument.");
        std::env::set_exit_status(1);
        return;
    }
    let word : Vec<char> = args.last().unwrap().chars().collect();
    for permutation in word.permutations() {
        println!("{}", permutation.into_iter().collect::<String>());
    }
}
