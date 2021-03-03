function print_permutations(a, n)
  if n == 0 then
    print(table.unpack(a))
  else
    for i = 1, n-1 do
      print_permutations(a, n-1)
      local j = n % 2 == 0 and i or 1
      a[j], a[n] = a[n], a[j]
    end
    print_permutations(a, n-1)
  end
end

print_permutations(arg, #arg)
