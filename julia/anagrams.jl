function generatePermutations(a, n)
  if n == 1
    println(join(a, ""))
  else
    for i = 1:n
      generatePermutations(a, n-1)
      local j = iseven(n) ? 1 : i
      a[j], a[n] = a[n], a[j]
    end
  end
end

if length(ARGS) != 1
  println(STDERR, "Exactly one argument is required")
  exit(1)
end
generatePermutations(split(ARGS[1], ""), length(ARGS[1]))
