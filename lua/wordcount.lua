wordTable = {}
for line in io.lines() do
  line:gsub('%S+', function(w) 
    wordTable[w] = (wordTable[w] or 0) + 1
  end)
end

displayTable = {} -- Because lua doesn't have any concept of ordered tables by keys, we need to order it ourselves
for word, count in pairs(wordTable) do 
    table.insert(displayTable, string.format('%s %d', word, count)) 
end
table.sort(displayTable)
for i,n in ipairs(displayTable) do print(n) end
