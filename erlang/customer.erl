-module(customer).
-export([run/2]).

run(Name, Orders) ->
  eat(Name, Orders, 10).

eat(Name, _, 0) ->
  io:format("~s going home~n", [Name]);
eat(Name, Orders, Times) ->
  Orders ! {place, {self(), "soup"}},
  receive
    {serve, Meal} ->
      io:format("~s eating ~p~n", [Name, Meal]),
      timer:sleep(rand:uniform(5000)),
      eat(Name, Orders, Times - 1)
  after 7000 ->
    io:format("~s waiting too long, going shopping~n", [Name]),
    timer:sleep(rand:uniform(5000)),
    eat(Name, Orders, Times)
  end.
