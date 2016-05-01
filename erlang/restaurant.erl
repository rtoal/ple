% First line is ignored when running with escript
main(_) ->
  Queue = spawn(order_queue, run, [[]]),
  [spawn(cook, run, [Name, Queue]) || Name <- ["Aly","Rob","Chi"]],
  [spawn(customer, run, [Name, Queue]) || Name <- ["Xia","Ann","Bo",
    "Rai","Ali","Kat","Eshe","Sen","Ami","Lina","Ara","Zuri"]],
  timer:sleep(50000).
