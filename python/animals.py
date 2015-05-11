class Animal(object):
    def __init__(self, name):
        self.name = name
    def speak(self):
        print(self.name, 'says', self.sound())

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
    s.speak()
    c = Cow('Bessie')
    c.speak()
    Sheep('Little Lamb').speak()
