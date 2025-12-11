<?php

// Falsy for different types
assert(!boolval(NULL));
assert(!boolval(FALSE));
assert(!boolval(0));
assert(!boolval(-0));
assert(!boolval(0.0));
assert(!boolval(-0.0));
assert(!boolval(""));
assert(!boolval("0"));
assert(!boolval([]));

// Truthy for different types
assert(boolval(TRUE));
assert(boolval(1));
assert(boolval(-1));
assert(boolval(NAN));
assert(boolval(INF));
assert(boolval(-INF));
assert(boolval("FALSE"));
assert(boolval([0]));

?>