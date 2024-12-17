1.upto 40 do |c|
  1.upto c do |b|
    1.upto b do |a|
      if a ** 2 + b ** 2 == c ** 2
        puts "#{a}, #{b}, #{c}"
      end
    end
  end
end