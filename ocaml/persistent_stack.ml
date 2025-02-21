module Stack : sig
  type 'a t
  val empty : 'a t
  val push : 'a -> 'a t -> 'a t
  val pop : 'a t -> 'a * 'a t
  val size : 'a t -> int
end = struct
  type 'a t = 'a list
  let empty = []
  let push elem stack = elem :: stack
  let pop = function
    | [] -> raise (Failure "pop on empty stack")
    | x :: xs -> (x, xs)
  let size stack = List.length stack
end

let s = Stack.empty
let s = Stack.push 5 s
let s = Stack.push 3 s
let s = Stack.push 8 s
let s = Stack.push 13 s
let (x, s) = Stack.pop s
let size = Stack.size s
let () = Printf.printf "x = %d, size = %d\n" x size
