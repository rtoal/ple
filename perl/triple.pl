for $c (1..40) {
    for $b (1..$c-1) {
        for $a (1..$b-1) {
            if ($a * $a + $b * $b == $c * $c) {
                printf "%i, %i, %i\n", $a, $b, $c;
            }
        }
    }
}
