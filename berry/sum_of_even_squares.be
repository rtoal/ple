def sum_of_even_squares(a)
    sum = 0
    for n: a
        if n % 2 == 0
            sum += n * n
        end
    end
    return sum
end

assert(sum_of_even_squares([]) == 0)
assert(sum_of_even_squares([1]) == 0)
assert(sum_of_even_squares([1,2]) == 4)
assert(sum_of_even_squares([1,2,3]) == 4)
assert(sum_of_even_squares([1,2,3,4]) == 20)
assert(sum_of_even_squares([4,6,7,2]) == 56)