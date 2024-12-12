(1..40).each do |c|
  (1..c).each do |b|
    (1..b).each do |a|
      if a ** 2 + b ** 2 == c ** 2
        puts "#{a}, #{b}, #{c}"
      end
    end
  end
end