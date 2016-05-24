-module(counter).
-export([run/2]).

run(Observer, 0) ->
  Observer ! done;
run(Observer, N) ->
  receive
  	dec -> run(Observer, N-1)
  end.
