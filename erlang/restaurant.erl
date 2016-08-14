% First line is ignored when running with escript
main(_) ->
  Orders = spawn(order_pool, run, [[]]),
  [spawn(cook, run, [Name, Orders]) || Name <- ["Aly","Rob","Chi"]],
  [spawn(customer, run, [Name, Orders]) || Name <- ["Xia","Ann","Bo",
    "Rai","Ali","Kat","Eshe","Sen","Ami","Lina","Ara","Zuri"]],
  timer:sleep(180000).
