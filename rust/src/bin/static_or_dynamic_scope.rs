
fn main() {
    let _x = "MAIN";
    let second = || {
        println!("{}", _x);
    };
    let first = || {
        let _x = "FIRST";
        second();
    };
    first();
}
