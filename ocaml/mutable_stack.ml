class ['a] stack =
  object
    val mutable s : 'a list = []
    method empty : 'a list = []
    method push (elem : 'a) : unit = s <- elem :: s
    method pop : 'a =
      match s with
      | [] -> failwith "pop on empty stack"
      | x :: xs -> (s <- xs ; x)
    method size : int = List.length s
  end

let s = new stack
let () = s#push 5
let () = s#push 3
let () = s#push 8
let () = s#push 13
let x = s#pop
let size = s#size
let () = Printf.printf "x = %d, size = %d\n" x size
