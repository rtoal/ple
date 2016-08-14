map print (List.tabulate(11, fn i => Date.fmt "%I:%M:%S\n"
  (Date.fromTimeUniv (Time.fromReal ((real(i)+0.5)*43200.0/11.0)))));
