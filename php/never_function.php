<?php

function neverFunction(): never
{
    echo "Inside the function";
    exit();     // Throws error if this line is commented.
}

neverFunction();
echo "Outside the function";

?>