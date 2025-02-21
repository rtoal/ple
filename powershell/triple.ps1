foreach ($c in 1..40) {
    foreach ($b in 1..$c) {
        foreach ($a in 1..$b) {
            if ($a * $a + $b * $b -eq $c * $c) {
                "$a, $b, $c"
            }
        }
    }
}