import { strict as assert } from "assert";

abstract class Animal {
  constructor(private readonly name: string) {}
  protected abstract sound(): string;
  public speak(): string {
    return `${this.name} says ${this.sound()}`;
  }
}

class Cow extends Animal {
  sound() {
    return "moooo";
  }
}

class Horse extends Animal {
  sound() {
    return "neigh";
  }
}

class Sheep extends Animal {
  sound() {
    return "baaaa";
  }
}

const horse = new Horse("CJ");
assert(horse.speak() === "CJ says neigh");
const cow = new Cow("Bessie");
assert(cow.speak() === "Bessie says moooo");
assert(new Sheep("Little Lamb").speak() === "Little Lamb says baaaa");

let animals: Animal[] = [];
let cows: Cow[] = [new Cow("Bessie")];
animals = cows;
animals.push(new Sheep("Little Lamb"));
assert(cows[1].speak() === "Little Lamb says baaaa"); // WHAT?!
