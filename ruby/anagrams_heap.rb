def generatePermutations(a, n)
  if n == 0
    puts a.join
  else
    0.upto(n-1) do |i|
      generatePermutations a, n-1
      j = n.even? ? 0 : i
      a[j], a[n] = a[n], a[j]
    end
    generatePermutations a, n-1
  end
end

if ARGV.length != 1
  STDERR.puts 'Exactly one argument is required'
  exit 1
end
generatePermutations ARGV[0].chars, ARGV[0].length-1
