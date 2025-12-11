<?php

abstract class Animal {
    public $name;
    public function __construct($name) {
        $this->name = $name;
    }
    public function speak() { 
        return "$this->name says {$this->sound()}"; 
    }
    abstract public function sound() : string;
}

class Cow extends Animal {
    public function sound() : string {
        return 'moooo';
    }
}

class Horse extends Animal {
    public function sound() : string {
        return 'neigh';
    }
}

class Sheep extends Animal {
    public function sound() : string {
        return 'baaaa';
    }
}

$h = new Horse('CJ');
assert($h->speak() == 'CJ says neigh');
$c = new Cow('Bessie');
assert($c->speak() == 'Bessie says moooo');
assert(new Sheep('Little Lamb')->speak() == 'Little Lamb says baaaa');

?>