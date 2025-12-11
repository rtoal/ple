<?php

function sumOfEvenSquares($a) {
    return array_sum(array_map(fn($n) => $n ** 2, 
                     array_filter($a, fn($n) => $n % 2 === 0))); 
}

assert(sumOfEvenSquares([]) === 0);
assert(sumOfEvenSquares([1]) === 0);
assert(sumOfEvenSquares([1, 2]) === 4);
assert(sumOfEvenSquares([1, 2, 3]) === 4);
assert(sumOfEvenSquares([1, 2, 3, 4]) === 20);
assert(sumOfEvenSquares([4, 6, 7, 2]) === 56);

?>