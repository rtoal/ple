let a = [], b = [];
for (var x of [1, 2, 3]) {
  a[x] = () => x;
}
for (let y of [1, 2, 3]) {
  b[y] = () => y;
}
console.log(a[1]());
console.log(b[1]());
