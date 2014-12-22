counts = (String => Int64)[]

for line in eachline(STDIN)
  for word in matchall(r"[a-z\']+", lowercase(line))
    counts[word] = get(counts, word, 0) + 1
  end
end
for word in sort(collect(keys(counts)))
  println("$word $(counts[word])")
end
