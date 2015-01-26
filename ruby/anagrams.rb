if ARGV.length != 1
  STDERR.puts 'Exactly one argument is required'
  exit 1
end
ARGV[0].chars.permutation.each{|s| puts s.join}
