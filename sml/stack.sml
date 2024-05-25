signature STACK =
sig
  type 'a stack
  val empty: 'a stack
  val push: 'a * 'a stack -> 'a stack
  val pop: 'a stack -> 'a * 'a stack
  val size: 'a stack -> int;
end;

structure Stack :> STACK =
struct
   type 'a stack = 'a list
   val empty = nil
   fun push (elem, stack) = elem::stack
   fun pop (first::rest) = (first, rest)
     | pop _ = raise Domain
   fun size (s) = length s;
end;

(* Tests *)
val s = Stack.empty;
Stack.size s = 0 orelse raise Fail "failure";
Stack.pop s handle Domain => (0, s);

val s = Stack.push(5, s);
val s = Stack.push(3, s);
val s = Stack.push(8, s);
val s = Stack.push(13, s);

val (x, s) = Stack.pop(s);
x = 13 orelse raise Fail "failure";
Stack.size s = 3 orelse raise Fail "failure";

val _ = print("All tests passed\n");
