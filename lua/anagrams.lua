function generatePermutations(a, n)
  if n == 0 then
    print(utf8.char(table.unpack(a)))
  else
    for i = 1, n-1 do
      generatePermutations(a, n-1)
      local j = n % 2 == 0 and i or 1
      a[j], a[n] = a[n], a[j]
    end
    generatePermutations(a, n-1)
  end
end

if #arg ~= 1 then
  io.stderr:write('Exactly one argument required\n')
  os.exit(1)
end
word = {utf8.codepoint(arg[1], 1, utf8.len(arg[1]))}
generatePermutations(word, #word)
