assert(0.1 + 0.2 == 0.3)    // Outputs true
assert(0.01 + 0.02 == 0.03)    // Outputs true
assert(0.001 + 0.002 == 0.003)    // Outputs true
assert(0.0001 + 0.0002 != 0.0003)    // Outputs false
assert(0.00001 + 0.00002 == 0.00003)    // Outputs true
assert(0.000001 + 0.000002 == 0.000003)    // Outputs true
assert(0.0000001 + 0.0000002 == 0.0000003)    // Outputs true
assert(0.00000001 + 0.00000002 == 0.00000003)    // Outputs true
assert(0.000000001 + 0.000000002 != 0.000000003)    // Outputs false
assert(0.0000000001 + 0.0000000002 == 0.0000000003)    // Outputs true
assert(0.00000000001 + 0.00000000002 == 0.00000000003)    // Outputs true
assert(0.000000000001 + 0.000000000002 == 0.000000000003)    // Outputs true
assert(0.0000000000001 + 0.0000000000002 == 0.0000000000003)    // Outputs true
assert(0.00000000000001 + 0.00000000000002 == 0.00000000000003)    // Outputs true
assert(0.000000000000001 + 0.000000000000002 != 0.000000000000003)    // Outputs false
assert(0.0000000000000001 + 0.0000000000000002 == 0.0000000000000003)    // Outputs true