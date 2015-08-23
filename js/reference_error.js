import assert from 'assert';

let p = {x: 3, y: 5}
assert(p.z === undefined); // There's no p.z
assert.throws(() => z);    // There's no global z
