-module(printer).
-export([print_server/1]).

print_server(Observer) ->
  receive
    false ->
      Observer ! false;
    N ->
      io:format("~p ", [N]),
      Observer ! true
  end,
  print_server(Observer).
