abstype intStack
  = EmptyStack 
  | Node of { top: int, rest: intStack }
with
  fun create() = EmptyStack
  fun push(s, item) = Node { top = item, rest = s }
  fun pop EmptyStack = NONE
    | pop (Node { top = _, rest = r }) = SOME r
  fun peek EmptyStack = NONE
    | peek (Node { top = t, rest = _ }) = SOME t
  fun size EmptyStack = 0
    | size (Node { top = _, rest = r }) = 1 + size r
end

val s = create();
val s = push(s, 5);
val s = push(s, 9);
print (Int.toString(size s) ^ "\n");
print (Int.toString(Option.getOpt(peek s, 999)));
val s = Option.getOpt(pop s, create());
print (Int.toString(size s) ^ "\n");
