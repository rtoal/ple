% First line is ignored when running with escript
main(_) ->
  10 = (catch 7 + 3),
  {'EXIT', {badarith, _}} = (catch 10 * dog),
  {'EXIT', {badarg, _}} = (catch dog ! 100),
  {'EXIT', {if_clause, _}} = (catch if false -> ok end),
  {'EXIT', {customerror, _}} = (catch error(customerror)),
  {'EXIT', 205} = (catch exit(205)),
  205 = (catch throw(205)).
