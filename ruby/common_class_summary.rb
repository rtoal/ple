def bulleted(title, elements)
  puts "<p>#{title}: #{elements.join ' '}</p>" if not elements.empty?
end

def view_class(cls)
  puts "<h1>#{cls.name}</h1>"
  bulleted 'Superclass', [cls.superclass]
  bulleted 'Included Modules', cls.included_modules
  bulleted 'Public Instance Methods', cls.public_instance_methods(false)
  bulleted 'Private Instance Methods', cls.private_instance_methods(false)
  bulleted 'Constants', cls.constants(false)
  puts
end

view_class(BasicObject)
view_class(Object)
view_class(Module)
view_class(Class)
view_class(Numeric)
