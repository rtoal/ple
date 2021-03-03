counts = {}
for line in io.lines() do
  latin_letters = "['a-z]+"
  for word in line:lower():gmatch(latin_letters) do
    counts[word] = (counts[word] or 0) + 1
  end
end

report = {}
for word, count in pairs(counts) do
  table.insert(report, string.format("%s %d", word, count))
end
table.sort(report)
for _, line in ipairs(report) do
  print(line)
end
