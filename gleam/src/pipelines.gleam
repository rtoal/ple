//// Gleam allows for the Pipe Operator (|>) to be used as a shorthand for calling
//// functions with the result of the previous function as the first argument

import gleam/io
import gleam/string

pub fn main() {
  // Example without the Pipe Operator
  io.println(string.drop_start(string.drop_end("Hello, Joe!", 1), 7))

  // Equivalent to the above with the pipe operator
  "Hello, Mike!"
  |> string.drop_end(1)
  |> string.drop_start(7) 
  |> io.println

  // Using appends with the pipe operator (Equivalent to io.debug(string.append("3", string.append("1", "2"))))
  "1"
  |> string.append("2")
  |> string.append("3", _)
  |> io.println
}
