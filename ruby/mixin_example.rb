require './animals.rb'

# The original Animal class did not define a name method.
# But in Ruby, we can *add* one! Classes are *open*.
class Animal
  attr_reader :name
end

module Vocalizer
  # Disclaimer: This only works on an O.S. with a say command.
  def vocalize()
    # Multiple arguments required to prevent shell injection attack.
    system 'say', self.name, ' says ', self.sound
  end
end

# A VocalCow will have all the methods of Cow and Vocalizer.
class VocalCow < Cow
  include Vocalizer
end

c = VocalCow.new 'Bessie'
puts c.speak
c.vocalize
