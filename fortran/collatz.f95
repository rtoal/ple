! An illustration of simple Fortran functions

program main

    implicit none
    write (*,*) collatz(9)
    write (*,*) collatz(10)

contains

    integer function collatz (n)
        implicit none
        integer, intent(in) :: n
        if (mod(n, 2) == 0) then
            collatz = 3 * n + 1
        else
            collatz = 4 * n - 3
        end if
    end function collatz

end program main

