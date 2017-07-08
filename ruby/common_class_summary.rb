# def bulleted(title, elements)
#   puts "<p>#{title}: #{elements.join ' '}</p>" if not elements.empty?
# end

# def view_class(cls)
#   puts "<h1>#{cls.name}</h1>"
#   bulleted 'Superclass', [cls.superclass]
#   bulleted 'Included Modules', cls.included_modules
#   bulleted 'Public Instance Methods', cls.public_instance_methods(false)
#   bulleted 'Private Instance Methods', cls.private_instance_methods(false)
#   bulleted 'Constants', cls.constants(false)
#   puts
# end

# view_class(BasicObject)
# view_class(Object)
# view_class(Module)
# view_class(Class)
# view_class(Numeric)


require 'set'
$visited = Set.new

def show(c)
  return if c.nil? or $visited.include? c
  $visited.add(c)
  s = c.is_a?(Class) ? c.superclass : nil
  e = c.singleton_class
  m = c.included_modules
  puts "#{c.inspect} (#{c.class}) super=#{s.inspect} eigen=#{e.inspect} m=#{m.inspect}"
  if not c.singleton_class?
    show(s)
    show(e)
    for mm in m; show(mm); end
  end
end

show(Class)
show(Integer)
show(Float)
show(String)
show(Array)

class Dog; end
spot = Dog.new
show(spot.singleton_class)
show(Dog)
puts spot.singleton_class.singleton_class.superclass
