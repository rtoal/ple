from subprocess import call

class Animal:
    def __init__(self, name):
        self.name = name
    def speak(self):
        return f'{self.name} says {self.sound()}'

class Cow(Animal):
    def sound(self):
        return 'moooo'

class Sheep(Animal):
    def sound(self):
        return 'baaaa'

class Vocalizer:
    # Disclaimer: This only works on an O.S. with a say command.
    def vocalize(self):
        call(['say', self.name + 'says' + self.sound()])

class VocalCow(Vocalizer, Cow):
    pass

c = VocalCow('Bessie')
print(c.speak())        # speak is inherited from Cow
c.vocalize()            # vocalize is inherited from Vocalizer
