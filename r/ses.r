sum_of_even_squares <- function(a) {
    sum(a[a %% 2 == 0] ** 2)
}

assert <- function(pred) {
    if (!pred) {
        stop("Assertion Failed: sum_of_even_squares did not give a correct output.")
    }
}

assert(sum_of_even_squares(c()) == 0)
assert(sum_of_even_squares(c(1)) == 0)
assert(sum_of_even_squares(c(1,2)) == 4)
assert(sum_of_even_squares(c(1,2,3)) == 4)
assert(sum_of_even_squares(c(1,2,3,4)) == 20)
assert(sum_of_even_squares(c(4,6,7,2)) == 56)
