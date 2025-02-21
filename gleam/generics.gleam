//// Gleam supports generics and are used as the type `value`
//// This is a special type that can be any type, but must remain the same
//// when used again in the same function call. 

import gleam/io

pub fn main() {
  let add_one = fn(x) { x + 1 }
  let exclaim = fn(x) { x <> "!" }

  // Invalid: Value must remain constant (Int vs. String)
  //twice(10, exclaim)

  // Now value generic type will be the same in the twice function
  io.debug(twice("Hello", exclaim))
}

/// value is a generic type and used here for the types of the variables and return type
fn twice(argument: value, my_function: fn(value) -> value) -> value {
  my_function(my_function(argument))
}
