function generatePermutations(n, a)
  if n == 1
    println(join(a, ""))
  else
    for i = 1:n
      generatePermutations(n-1, a)
      local j = iseven(n) ? 1 : i
      a[j], a[n] = a[n], a[j]
    end
  end
end

if length(ARGS) != 1
  println(STDERR, "Exactly one argument is required")
  exit(1)
end
generatePermutations(length(ARGS[1]), split(ARGS[1], ""))
