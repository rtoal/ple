import gleam/float
import gleam/list
import gleam/int
import gleam/io
import gleam/result
import gleam/string

pub fn main() {

  let valid_triple = fn(triple: List(Int)) { 
    let target = triple
    |> list.last
    |> result.unwrap(0)
    |> int.to_float  
    
    triple
    |> list.map(fn(n) { n * n })
    |> int.sum
    |> int.to_float
    |> float.divide(by: 2.0)
    |> result.unwrap(0.0)
    |> float.square_root
    |> result.unwrap(0.0)
    |> float.loosely_equals(with: target, tolerating: 0.0)
  }

  let print_triple = fn(triple: List(Int)) {
    triple
    |> list.map(int.to_string)
    |> string.join(", ")
    |> io.println
  }

  list.range(1, 40)
  |> list.combinations(3)
  |> list.filter(valid_triple)
  |> list.each(print_triple)
}