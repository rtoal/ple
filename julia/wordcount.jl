counts = Dict{AbstractString, UInt64}()

for line in eachline(STDIN)
  for word in matchall(r"[a-z\']+", lowercase(line))
    counts[word] = get(counts, word, 0) + 1
  end
end
for (word, count) in sort(collect(counts))
  println("$word $count")
end
