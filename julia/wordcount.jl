counts = Dict{AbstractString, UInt64}()

for line in eachline(stdin)
  for m in eachmatch(r"[a-z\']+", lowercase(line))
    counts[m.match] = get(counts, m.match, 0) + 1
  end
end
for (word, count) in sort(collect(counts))
  println("$word $count")
end
