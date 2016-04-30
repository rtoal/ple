-module(prime_printer).
-export([print_if_prime/2]).

print_if_prime(N, Printer) ->
  Check = fun Check(D) ->
    if
      D * D > N ->
        Printer ! N;
      N rem D == 0 ->
        ok;
      true ->
        Check(D+1)
    end
  end,
  Check(2).
