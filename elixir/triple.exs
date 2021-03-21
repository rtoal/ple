Enum.each 1..40, fn c -> 
  Enum.each 1..c, fn b -> 
    Enum.each 1..b, fn a -> 
      if a * a + b * b == c * c do
        IO.puts "#{a}, #{b}, #{c}"
      end
    end
  end
end
