function print_tree(t, indent)
  println("$(repeat("    ", indent))$t")
  for s in subtypes(t)
    if s != Any && s != Function
      print_tree(s, indent + 1)
    end
  end
end

print_tree(Any, 0)
