/ These came from https://github.com/kevinlawler/kona/wiki/Idioms

factorial:{*/1+!:x}

leapyear:{(+/~x!'4 100 400)!2}

pascal:{x{+':0,x,0}\1}

gcd:{:[~x;y;_f[y;x!y]]}

sort:{x@<x}

collatz:{(1<){:[x!2;1+3*x;_ x%2]}\x}

/ Tests - I don't know how to assert, so we'll just have
/ to compare printed output by diffing with the expected
/ output in a shell

println: {`0:" "/$x ; `0:"\n"}

println(factorial' !10)
println(leapyear' 0 399 400 1700 1604 1900 2000 2117)
println'(pascal 8)
println(gcd': 5 8 66 99 144 89 27 63)
println(sort 17 22 9 8 -6 11 89 33)
println(collatz 18)
println(factorial 2)
\\
