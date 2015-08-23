let nextSquare = () => {
  let previous = -1;
  return () => {
    previous++;
    return previous * previous;
  }
}();

import assert from 'assert';
assert(nextSquare() === 0);
assert(nextSquare() === 1);
assert(nextSquare() === 4);
