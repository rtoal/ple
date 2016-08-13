class Animal:
    def __init__(self, name):
        self.name = name
    def speak(self):
        return '{} says {}'.format(self.name, self.sound())

class Cow(Animal):
    def sound(self):
        return 'moooo'

class Horse(Animal):
    def sound(self):
        return 'neigh'

class Sheep(Animal):
    def sound(self):
        return 'baaaa'

if __name__ == '__main__':
    s = Horse('CJ')
    assert s.speak() == 'CJ says neigh'
    c = Cow('Bessie')
    assert c.speak() == 'Bessie says moooo'
    assert Sheep('Little Lamb').speak() == 'Little Lamb says baaaa'
