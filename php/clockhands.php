<?php
    for ($i = 0 ; $i < 11 ; $i++){
        $t = floor((43200 * $i + 21600) / 11);
        $h = floor($t / 3600);
        $m = floor($t / 60) % 60;
        $s = $t % 60;
        echo sprintf("%02d:%02d:%02d\n", ($h == 0) ? 12 : $h, $m, $s);
    }
?>