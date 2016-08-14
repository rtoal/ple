function talkTo(message, suffix) {
  return message + ', ' + this.name + suffix;
}

const alice = {name: 'Alice', address: talkTo};
const bob = {name: 'Bob'};

const assert = require('assert');
assert(alice.address('Hello', '.') === 'Hello, Alice.');
assert(alice.address.call(bob, 'Yo', '!') === 'Yo, Bob!');
assert(alice.address.apply(bob, ['Bye', '...']) === 'Bye, Bob...');
assert(alice.address.bind(bob)('Right', '?') === 'Right, Bob?');
