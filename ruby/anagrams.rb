if ARGV.length != 1
    STDERR.puts 'Exactly one argument is required'
    exit 1
else
    ARGV[0].chars.to_a.permutation.map(&:join).each {|s| puts s}
end
