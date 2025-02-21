: collatz ( n -- n )
    dup 2 mod 0 = if 2 / else 3 * 1+ then ;
