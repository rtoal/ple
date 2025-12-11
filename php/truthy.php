<?php

// Falsy for different types
var_dump(boolval(NULL));
var_dump(boolval(FALSE));
var_dump(boolval(0));
var_dump(boolval(-0));
var_dump(boolval(0.0));
var_dump(boolval(-0.0));
var_dump(boolval(""));
var_dump(boolval("0"));
var_dump(boolval([]));

// Truthy for different types
var_dump(boolval(TRUE));
var_dump(boolval(1));
var_dump(boolval(-1));
var_dump(boolval(NAN));
var_dump(boolval(INF));
var_dump(boolval(-INF));
var_dump(boolval("FALSE"));
var_dump(boolval([0]));

?>