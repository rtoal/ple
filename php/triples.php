<?php

for ($c = 1 ; $c < 41 ; $c++) {
    for ($b = 1 ; $b < $c ; $b++) {
        for ($a = 1 ; $a < $b ; $a++) {
            if ($a ** 2 + $b ** 2 === $c ** 2) {
                echo("$a, $b, $c\n");
            }
        }
    }
}

?>