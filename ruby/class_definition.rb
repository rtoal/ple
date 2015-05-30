C = Class.new do
  define_method (:f) {|x| x + 1}
end

puts C.new.f(8)
