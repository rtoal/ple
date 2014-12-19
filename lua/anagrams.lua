if #arg ~= 1 then
  print('Exactly one argument required')
  os.exit(1)
end

permTable = {}
arg[1]:gsub('.', function(c)
  table.insert(permTable, c)
end)

function generatePermutations(n, a)
  if n == 0 then
    print(table.concat(a, ''))
  else
    for i = 1, n do
      generatePermutations(n-1, a)
      swapIndex = n % 2 == 0 and i or 1
      a[swapIndex], a[n] = a[n], a[swapIndex]
    end
  end
end

generatePermutations(#permTable, permTable)
