program main
    implicit none

    integer :: empty_array(0)
    print *, sum_of_even_squares(empty_array)
    print *, sum_of_even_squares([1])
    print *, sum_of_even_squares([2])
    print *, sum_of_even_squares([1, 2, 3, 4, 5])
    print *, sum_of_even_squares([6, 7, 8, 9, 10])
    print *, sum_of_even_squares([11, 12, 13, 14, 15])
    print *, sum_of_even_squares([50, 99, -3, -4, 0, 0, 55555])

contains

    function sum_of_even_squares(a) result(total)
        integer, intent(in) :: a(:)
        integer :: total
        total = sum((a**2) * merge(1, 0, mod(a, 2) == 0))
    end function

end program main
