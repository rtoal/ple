def sum_of_even_squares(a)
  a.select{|x| x % 2 == 0}.map{|x| x * x}.reduce(0, :+)
end

fail unless sum_of_even_squares([]) == 0
fail unless sum_of_even_squares([1]) == 0
fail unless sum_of_even_squares([1,2]) == 4
fail unless sum_of_even_squares([1,2,3]) == 4
fail unless sum_of_even_squares([1,2,3,4]) == 20
