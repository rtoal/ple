struct S {var x = 0}    // structs have value semantics
var s1 = S();
var s2 = s1;            // value copy
s1.x = 5                // mutate through s1
assert(s2.x == 0)       // s2 unchanged

class C {var x = 0}     // classes have value semantics
var c1 = C();
var c2 = c1;            // reference copy
c1.x = 5                // mutate through c1
assert(c2.x == 5)       // c2 sees change
