-module(printer).
-export([print_server/1]).

print_server(Observer) ->
  receive
    N when is_integer(N) ->
      io:format("~p ", [N]),
      Observer ! true;
    _ ->
      Observer ! false
  end,
  print_server(Observer).
