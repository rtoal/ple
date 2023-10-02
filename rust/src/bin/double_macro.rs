macro_rules! double {
  ($x:expr) => (2*$x);
}

fn main() {
  println!("{}", double!(3 + 5));
}
