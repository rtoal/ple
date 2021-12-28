def print_permutations(a, n)
  if n <= 0
    puts a.join "\t"
  else
    0.upto(n-1) do |i|
      print_permutations a, n-1
      j = n.even? ? 0 : i
      a[j], a[n] = a[n], a[j]
    end
    print_permutations a, n-1
  end
end

print_permutations(ARGV, ARGV.length - 1)
