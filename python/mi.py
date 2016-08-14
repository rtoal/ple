from subprocess import call
from animals import Cow

# Disclaimer: This only works on an O.S. with a say command.
class Vocalizer:
    def vocalize(self):
        call(['say', self.name + 'says' + self.sound()])

class VocalCow(Vocalizer, Cow):
    pass

c = VocalCow('Bessie')
print(c.speak())        # speak is inherited from Cow
c.vocalize()            # vocalize is inherited from Vocalizer
