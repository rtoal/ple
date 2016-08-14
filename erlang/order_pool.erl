-module(order_pool).
-export([run/1]).

run(Orders) ->
  receive
    {place, Order} ->
      run(lists:append(Orders, [Order]));
    {ready, Cook} when length(Orders) > 0 ->
      Cook ! {prepare, hd(Orders)},
      run(tl(Orders))
  end.
