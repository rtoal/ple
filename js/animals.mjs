import assert from "assert"

class Animal {
  constructor(name) {
    this.name = name
  }
  speak() {
    return `${this.name} says ${this.sound()}`
  }
}

class Cow extends Animal {
  sound() {
    return "moooo"
  }
}

class Horse extends Animal {
  sound() {
    return "neigh"
  }
}

class Sheep extends Animal {
  sound() {
    return "baaaa"
  }
}

const h = new Horse("CJ")
assert(h.speak() === "CJ says neigh")
const c = new Cow("Bessie")
assert(c.speak() === "Bessie says moooo")
assert(new Sheep("Little Lamb").speak() === "Little Lamb says baaaa")
