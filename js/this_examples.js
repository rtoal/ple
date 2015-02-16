name = 'JavaScript';    // N.B. no var or let; forces global

function talkTo(message, suffix) {
  console.log(message + ', ' + this.name + suffix);
}
var alice = {name: 'Alice', address: talkTo};
var bob = {name: 'Bob'};

talkTo('Hi', '.');                         // Hi, JavaScript.
alice.address('Hello', '.');               // Hello, Alice.
alice.address.call(bob, 'Yo', '!');        // Yo, Bob!
alice.address.apply(bob, ['Bye', '...']);  // Bye, Bob...
alice.address.bind(bob)('Right', '?');     // Right, Bob?

bob.greet = alice.address;
bob.greet('Oh', ' :(');                    // Oh, Bob :(