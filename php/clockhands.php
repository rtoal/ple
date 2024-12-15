<?php
    for ($i = 0 ; $i < 11 ; $i++){
        echo gmstrftime("%I:%M:%S\n", ($i + 0.5) * 43200.0/11);
    }
?>