exports.x = 100;
var f = function (y, z) {return this.x + y + z};
var a = {x: 200, g: f};
var b = {x: 300};
var c = {x: 400};
var d = {x: 500};

console.log(this.x);
console.log(f(1, 2));
console.log(a.g(3, 4));            // 207, uses a.x
console.log(a.g.call(b, 5, 6));    // 311, uses b.x
console.log(a.g.apply(c, [7, 8])); // 415, uses c.x
console.log(a.g.bind(d)(9, 10));   // 519, uses d.x
