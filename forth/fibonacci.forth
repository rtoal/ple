: fib ( n -- nthfib )
    0 1            \ stack has n a b
    rot 0 ?do      \ loop from 0 upto n
      over + swap  \ (a+b) a
    loop           \ mark the end of the loop
    drop ;         \ drop the extra addend

." The 35th Fibonacci number is " 35 fib . cr cr

: test 
    assert( 0 fib 0 = )
    assert( 1 fib 1 = )
    assert( 30 fib 832040 = ) ;

test
