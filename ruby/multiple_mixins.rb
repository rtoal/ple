module A
  def m; "A"; end
end

module B
  def m; "B"; end
end

class C
  include A
  include B
end

class D
  include B
  include A
end

puts C.new.m
puts D.new.m
