-module(vectors).
-export([create/2,magnitude/1,add/2,mul/2,as_string/1]).

create(I, J) ->
  {vec, I, J}.

magnitude({vec, I, J}) ->
  math:sqrt(I*I + J*J).

add({vec, I1, J1}, {vec, I2, J2}) ->
  {vec, I1+I2, J1+J2}.

mul({vec, I1, J1}, {vec, I2, J2}) ->
  I1*I2 + J1*J2;
mul(K, {vec, I, J}) when is_number(K) ->
  {vec, K*I, K*J}.

as_string({vec, I, J}) ->
  lists:flatten(io_lib:format("<~w,~w>", [I, J])).
