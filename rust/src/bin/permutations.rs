fn generate_permutations(n: usize, a: &mut [String]) {
    if n == 0 {
        println!("{}", a.join("\t"));
    } else {
        for i in 0..n {
            generate_permutations(n - 1, a);
            a.swap(if n % 2 == 0 { 0 } else { i }, n);
        }
        generate_permutations(n - 1, a);
    }
}

fn main() {
    let mut args: Vec<String> = std::env::args().skip(1).collect();
    generate_permutations(args.len() - 1, &mut args);
}
