% First line is ignored when running with escript
main(_) ->
  S = {student, {name, "Alice"}, {scores, [93,100,81,89]}},

  % Pattern match to bind two variables
  {_, {name, Name}, {scores, [_|[Midterm|_]]}} = S,

  % Asserts
  100 = Midterm,
  "Alice" = Name.
