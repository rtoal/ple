class Queue {
  constructor() {this.data = [];}
  add(x) {this.data.push(x);}
  remove() {const ok = this.data.length > 0; return [ok, this.data.shift()];}
  size() {return this.data.length;}
}

const assert = require('assert');
const q = new Queue();
assert.equal(q.size(), 0);
q.add(1000)
assert.deepEqual(q.remove(), [true, 1000]);
assert.deepEqual(q.remove(), [false, undefined]);
