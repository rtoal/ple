require './animals.rb'

# Add a method to an existing class
class Animal
  attr_reader :name
end

# Disclaimer: This only works on an O.S. with a say command.
module Vocalizer
  def vocalize()
    # Multiple arguments required to prevent shell injection attack.
    system 'say', self.name, ' says ', self.sound
  end
end

class VocalCow < Cow
  include Vocalizer
end

c = VocalCow.new 'Bessie'
c.speak
c.vocalize
