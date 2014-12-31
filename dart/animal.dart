class Animal {
    String name;
    Animal(this.name);

    void speak() {
        print("$name says $sound");
    }
}

class Cow extends Animal {
    Cow(String name) : super(name);
    get sound => 'moooo';
}

class Horse extends Animal {
    Horse(String name) : super(name);
    get sound => 'neigh';
}

class Sheep extends Animal {
    Sheep(String name) : super(name);
    get sound => 'baaaa';
}

void main() {
    var s = new Horse('CJ');
    s.speak();
    var c = new Cow('Bessie');
    s.speak();
    (new Sheep('Little Lamb')).speak();
}
