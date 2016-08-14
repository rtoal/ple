Rat = Class.new do |c|
  def initialize(name); @name = name; end
  def squeak; "#{@name} says squeak"; end
end

marshi = Rat.new 'Marshmallow'
puts marshi.squeak
