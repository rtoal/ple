function talkTo(message, suffix) {
  console.log(message + ', ' + this.name + suffix);
}

let alice = {name: 'Alice', address: talkTo};
let bob = {name: 'Bob'};

alice.address('Hello', '.');               // Hello, Alice.
alice.address.call(bob, 'Yo', '!');        // Yo, Bob!
alice.address.apply(bob, ['Bye', '...']);  // Bye, Bob...
alice.address.bind(bob)('Right', '?');     // Right, Bob?

bob.greet = alice.address;
bob.greet('Oh', ' :(');                    // Oh, Bob :(