#include <string>
#include <iostream>
using namespace std;

class Animal {
protected:
    string name;
    virtual string sound() = 0;
public:
    Animal(string name): name(name) {}
    void speak() {
        cout << name << " says " << sound() << endl;
    }
};

class Cow: public Animal {
protected:
    string sound() {
        return "moooo";
    }
public:
    Cow(string name): Animal(name) {}
};

class Horse: public Animal {
protected:
    string sound() {
        return "neigh";
    }
public:
    Horse(string name): Animal(name) {}
};

class Sheep: public Animal {
protected:
    string sound() {
        return "baaaa";
    }
public:
    Sheep(string name): Animal(name) {}
};

int main(int, char**) {
    Animal* h = new Horse("CJ");
    h->speak();
    Animal* c = new Cow("Bessie");
    c->speak();
    (new Sheep("Little Lamb"))->speak();
    return 0;
}
