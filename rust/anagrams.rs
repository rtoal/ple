use std::os;
fn main() {
    let args = os::args();
    if args.len() != 2 {
        println!("Please enter only one argument.");
        os::set_exit_status(1);
        return;
    }
    let word: Vec<char> = args[1].chars().collect();
    generate_permutations(word.len() - 1, word);
}

fn generate_permutations(n: uint, a: Vec<char>) {
    if n == 0 {
        println!("{}", a.into_iter().collect::<String>());
    } else {
        let mut this_word = a.clone();
        for i in range(0, n + 1) {
            generate_permutations(n - 1, this_word.clone());
            let swap_index = if n % 2 == 0 { 
                i 
            } else {
                0
            };

            this_word.swap(swap_index, n);
        }
    }
}
