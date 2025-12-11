<?php

/**
 *  In previous versions, the ternary operator did not require using 
 *  nested parentheses during compile time. So a code like this:
 *     $capital = ( ( $country === "USA") ? "Washington D.C." :
 *                  ( $country === "France") ? "Paris" :
 *                  ( $country === "Japan") ? "Tokyo" :
 *                  ( $country === "China") ? "Beijing" :
 *                  ( $country === "UK") ? "London" :
 *                  ( $country === "Mexico") ? "Mexico City":
 *                  "I don't know..." ); 
 *  won't work anymore. Still, using nested ternaries are not recommended.
 *  If it would work, it would print out "Mexico City" as ternaries are
 *  left associative.
 */

$country = "China";
$capital = (( $country === "USA") ? "Washington D.C." :
            (( $country === "France") ? "Paris" :
            (( $country === "Japan") ? "Tokyo" :
            (( $country === "China") ? "Beijing" :
            (( $country === "UK") ? "London" :
            (( $country === "Mexico") ? "Mexico City":
            "I don't know..." ))))));  // How many parentheses? This is too much!
echo "Capital of $country is $capital!\n"

?>