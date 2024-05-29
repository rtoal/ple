: fib ( n -- n )
  0 1 rot 0 ?do over + swap loop drop ;

: test 
    assert( 0 fib 0 = )
    assert( 1 fib 1 = )
    assert( 2 fib 1 = )
    assert( 3 fib 2 = )
    assert( 4 fib 3 = )
    assert( 5 fib 5 = )
    assert( 6 fib 8 = )
    assert( 10 fib 55 = ) ;

test
