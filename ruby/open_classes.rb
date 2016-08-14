class C; def a; end; end
class C; def b; end; end

puts C.public_instance_methods(false)
