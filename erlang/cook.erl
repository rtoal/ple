-module(cook).
-export([run/2]).

run(Name, Orders) ->
  Orders ! {ready, self()},
  receive
    {prepare, {Customer, Order}} ->
      Meal = cook(Name, Order),
      Customer ! {serve, Meal},
      run(Name, Orders)
  end.

cook(Name, Food) ->
  io:format("~s is cooking ~s~n", [Name, Food]),
  timer:sleep(rand:uniform(5000)),
  Food ++ " cooked by " ++ Name.
