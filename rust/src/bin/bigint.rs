extern crate num;

use num::BigInt;
use std::str::FromStr;
use std::ops::Mul;

fn main() {
    let x = BigInt::from_str("9879878782352398572398755757923351299981243778899").unwrap();
    let y = BigInt::from_str("3234235766473868388883432903721391827312463782828").unwrap();
    println!("{}", x.mul(y));
}
