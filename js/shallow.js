const a = [{x:0, y:0}, {x:3, y:0}, {x: 3, y:4}];

const b = a;          // copies the reference, nothing more
const c = a.slice();  // makes a SHALLOW COPY of array elements
