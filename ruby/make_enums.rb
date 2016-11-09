# Here is a nice utility to make an "enum" class programmatically. Generally,
# an enum class has a fixed number of members, but in Ruby, classes are pretty
# open so we're not really going to enforce that. The idea here is that invoking
#
#    Light = make_enum_class('Red', 'Amber', 'Green')
#
# will create a class Light with three instances: Light::Red, Light::Amber, and
# Light::Green. You can convert a Light to a String in the usual way, here
# Light::Green.to_s will produce 'Green'. Conversely, Light::from_s('Green')
# will produce Light::Green.

def make_enum_class(*constants)
  cls = Class.new
  constants.each do |name|
    cls.const_set(name, cls.new).define_singleton_method(:to_s) {name}
  end
  cls.define_singleton_method(:from_s) {|s| cls.const_get(s)}
  cls
end

# Let's test the enum. Here will will make an enum as a nested class, for fun.

class Order
  Status = make_enum_class('Pending', 'Delivered', 'Canceled')

  attr_accessor :id, :status

  def initialize(id)
    @id = id
    @status = Order::Status::Pending
  end

  def deliver; @status = Order::Status::Delivered; end
  def cancel; @status = Order::Status::Canceled; end
end

# And here are some unit tests.

fail unless Order::Status.from_s('Pending') == Order::Status::Pending
fail unless Order::Status.from_s('Delivered') == Order::Status::Delivered
fail unless Order::Status.from_s('Canceled') == Order::Status::Canceled
fail unless Order::Status::Pending.to_s == 'Pending'
fail unless Order::Status::Delivered.to_s == 'Delivered'
fail unless Order::Status::Canceled.to_s == 'Canceled'

# Bonus test. You can still get the values of the enum, although it's takes a bit
# of writing.

fail unless Order::Status.constants.map{|sym| Order::Status.from_s(sym.to_s)} == [
  Order::Status::Pending, Order::Status::Delivered, Order::Status::Canceled
]
