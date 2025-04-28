import gleam/int
import gleam/list

fn sum_of_even_squares(a: List(Int)) {
  a
  |> list.filter(int.is_even)
  |> list.map(fn(n) { n * n })
  |> int.sum
}

pub fn main() {
  let assert 0 = sum_of_even_squares([])
  let assert 0 = sum_of_even_squares([1])
  let assert 4 = sum_of_even_squares([1,2])
  let assert 4 = sum_of_even_squares([1,2,3])
  let assert 20 = sum_of_even_squares([1,2,3,4])
  let assert 56 = sum_of_even_squares([4,6,7,2])
}