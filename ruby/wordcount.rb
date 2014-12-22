counts = Hash.new(0)
ARGF.each do |line|
  line.downcase.scan /[a-z']+/ do |word|
    counts[word] += 1
  end
end
counts.sort.each do |word, count|
  puts "#{word} #{count}"
end