function generatePermutations(a, n)
  if n == 0 then
    print(utf8.char(table.unpack(a)))
  else
    for i = 1, n do
      generatePermutations(a, n-1)
      swapIndex = n % 2 == 0 and i or 1
      a[swapIndex], a[n] = a[n], a[swapIndex]
    end
  end
end

if #arg ~= 1 then
  io.stderr:write('Exactly one argument required\n')
  os.exit(1)
end
word = {utf8.codepoint(arg[1], 1, utf8.len(arg[1]))}
generatePermutations(word, #word)
