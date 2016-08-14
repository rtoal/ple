function generatePermutations(a, n)
  if n == 1
    println(join(a, ""))
  else
    for i = 1:n-1
      generatePermutations(a, n-1)
      local j = iseven(n) ? i : 1
      a[j], a[n] = a[n], a[j]
    end
    generatePermutations(a, n-1)
  end
end

if length(ARGS) != 1
  println(STDERR, "Exactly one argument is required")
  exit(1)
end
generatePermutations(split(ARGS[1], ""), length(ARGS[1]))
