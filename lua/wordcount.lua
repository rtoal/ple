counts = {}
for line in io.lines() do
  line:lower():gsub('[a-z\']+', function(word)
    counts[word] = (counts[word] or 0) + 1
  end)
end

report = {}
for word, count in pairs(counts) do
  table.insert(report, string.format('%s %d', word, count))
end
table.sort(report)
for _, line in ipairs(report) do
  print(line)
end
