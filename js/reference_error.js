const assert = require('assert');

const p = {x: 3, y: 5}
assert(p.z === undefined);                    // There's no p.z
assert.throws(() => z, ReferenceError);       // No variable z
