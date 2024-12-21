for ($c = 1 ; $c -lt 41 ; $c++) {
    for ($b = 1 ; $b -lt $c ; $b++) {
        for ($a = 1 ; $a -lt $b ; $a++) {
            if ($a * $a + $b * $b -eq $c * $c) {
                "$a, $b, $c"
            }
        }
    }
}