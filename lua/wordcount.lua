wordTable = {}
for line in io.lines() do
  line:lower():gsub('[a-z\']+', function(w)
    wordTable[w] = (wordTable[w] or 0) + 1
  end)
end

displayTable = {}
for word, count in pairs(wordTable) do
  table.insert(displayTable, string.format('%s %d', word, count))
end
table.sort(displayTable)
for i,n in ipairs(displayTable) do print(n) end
