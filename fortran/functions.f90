! An illustration of simple Fortran functions

program main
    implicit none
    print *, f(5)
    print *, f(0)
    print *, f(11)
    print *, f(100)

contains

    integer function f (n)
        integer, intent(in) :: n
        if (mod(n, 2) == 0) then
            f = 3 * n + 1
        else
            f = 4 * n - 3
        end if
    end function f

end program main
