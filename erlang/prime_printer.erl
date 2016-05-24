-module(prime_printer).
-export([print_if_prime/3]).

print_if_prime(N, Printer, Counter) ->
  (fun Check(D) ->
    if
      D * D > N ->
        Printer ! N,
        Counter ! dec;
      N rem D == 0 ->
        Counter ! dec;
      true ->
        Check(D+1)
    end
  end)(2).
