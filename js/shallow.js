var a = [{x:0, y:0}, {x:3, y:0}, {x: 3, y:4}]

var b = a;           // copies the reference, nothing more
var c = a.slice();   // makes a SHALLOW COPY of array elements
