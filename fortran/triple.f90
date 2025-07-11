program triple
    implicit none
    integer :: a, b, c
    do c = 1, 40
       do b = 1, c - 1
          do a = 1, b - 1
             if (a ** 2 + b ** 2 == c ** 2) then
                write (*, '(I0, ", ", I0, ", ", I0)') a, b, c
             end if;
          end do;
       end do;
    end do;
end program triple;
