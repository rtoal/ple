def positional(x, y, z)
  puts "#{x} #{y} #{z}"
end

def named(x:, y:, z:)
  puts "#{x} #{y} #{z}"
end

def splatted(x, *y)
  puts "#{x} #{y}"
end

def defaulted(x, y=100)
  puts "#{x} #{y}"
end

def defaulted_and_named(x, y:2)
  puts "#{x} #{y}"
end

positional(1, 2, 3)         # 1 2 3
named(z:3, x:1, y:2)        # 1 2 3
splatted(1)                 # 1 []
splatted(1, 2, 3, 4)        # 1 [2, 3, 4]
positional(1, *[2, 3])      # 1 2 3
defaulted(1)                # 1 100
defaulted(1, 2)             # 1 2
defaulted_and_named(1)      # 1 2
defaulted_and_named(1,y:3)  # 1 3

