fn second(f: &Fn()) {
    let _name = "new";
    f();
}

fn first() {
    let _name = "old";
    let print_name = || println!("{}", _name);
    second(&print_name);
}

fn main() {
    first()
}
