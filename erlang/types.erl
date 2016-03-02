% First line is ignored when running with escript
main(_) ->
  true = is_atom(ten),
  true = is_integer($a),
  true = is_float(-3.55e-8),
  true = is_function(fun (X) -> X*X end),
  true = is_reference(make_ref()),
  true = is_tuple({dog, "Nika", 5, 'G-SHEP'}),
  true = is_list("a string"),
  true = is_map(#{name => "Nika", age => 5, breed => 'G-SHEP'}).
