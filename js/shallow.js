let a = [{x:0, y:0}, {x:3, y:0}, {x: 3, y:4}];

let b = a;           // copies the reference, nothing more
let c = a.slice();   // makes a SHALLOW COPY of array elements
