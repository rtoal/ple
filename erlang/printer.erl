-module(printer).
-export([print_server/0]).

print_server() ->
  receive
    shutdown ->
      ok;
    N ->
      io:format("~p ", [N]),
      print_server()
  end.
