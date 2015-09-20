function talkTo(message, suffix) {
  return message + ', ' + this.name + suffix;
}

let alice = {name: 'Alice', address: talkTo};
let bob = {name: 'Bob'};

let assert = require('assert');
assert(alice.address('Hello', '.') === 'Hello, Alice.');
assert(alice.address.call(bob, 'Yo', '!') === 'Yo, Bob!');
assert(alice.address.apply(bob, ['Bye', '...']) === 'Bye, Bob...');
assert(alice.address.bind(bob)('Right', '?') === 'Right, Bob?');
