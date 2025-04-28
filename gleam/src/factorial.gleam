//// Factorial: Recursive implementation of factorial function

import gleam/int
import gleam/io

pub fn main() {
  io.println(int.to_string(factorial(5)))
  io.println(int.to_string(factorial(7)))
}

/// Recursively calculates factorial of given int
pub fn factorial(x: Int) -> Int {
  case x {
    1 -> 1

    _ -> x * factorial(x - 1)
  }
}