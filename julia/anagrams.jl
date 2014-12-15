if length(ARGS) != 1
  println(STDERR, "Exactly one argument is required")
  exit(1)
end

function swap(a, i, j)
  a[i], a[j] = a[j], a[i]
end

function generatePermutations(n, a)
  if n == 1
    println(join(a, ""))
  else
    for i = 1:n
      generatePermutations(n-1, a)
      swap(a, (n % 2 == 0 ? i : 1), n)
    end
  end
end

generatePermutations(length(ARGS[1]), split(ARGS[1], ""))
