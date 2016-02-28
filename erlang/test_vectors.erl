% First line is ignored when running with escript
main(_) ->
  U = vectors:create(3, 4),
  V = vectors:create(-5, 10),
  {vec, 3, 4} = U,
  {vec, -5, 10} = V,
  {vec, 15, 20} = vectors:mul(5, U),
  25 = vectors:mul(U,V),
  5.0 = vectors:magnitude(U),
  "<-2,14>" = vectors:as_string(vectors:add(U,V)).
