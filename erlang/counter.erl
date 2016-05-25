-module(counter).
-export([wait/1, run/2]).

wait(N) -> 
  run(self(), N),
  receive done -> ok end.

run(Observer, 0) ->
  Observer ! done;
run(Observer, N) ->
  receive
  	dec -> run(Observer, N-1)
  end.
