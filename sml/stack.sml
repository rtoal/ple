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

val s = Stack.empty;
val s = Stack.push(10, s);
val s = Stack.push(3, s);
val s = Stack.push(6, s);
val s = Stack.push(12, s);
val (x, s) = Stack.pop(s);

Stack.size(s) = 3 orelse raise Fail "failure";
