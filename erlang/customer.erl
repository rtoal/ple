-module(customer).
-export([run/2]).

run(Name, Orders) ->
  eat(Name, Orders, 10).

eat(Name, Orders, Times) ->
  Orders ! {place, {self(), "soup"}},
  receive
    {serve, Meal} when Times > 0 ->
      io:format("~s eating ~p~n", [Name, Meal]),
      timer:sleep(rand:uniform(5000)),
      eat(Name, Orders, Times - 1);
    _ when Times == 0 ->
      ok
    after 7000 ->
      io:format("~s waiting too long, going shopping~n", [Name]),
      timer:sleep(rand:uniform(5000)),
      eat(Name, Orders, Times)
  end,
  io:format("~s going home~n", [Name]).
