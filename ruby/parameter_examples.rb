def positional(x, y, z)
  "#{x} #{y} #{z}"
end

def named(x:, y:, z:)
  "#{x} #{y} #{z}"
end

def splatted(x, *y)
  "#{x} #{y}"
end

def defaulted(x, y=100)
  "#{x} #{y}"
end

def defaulted_and_named(x, y:2)
  "#{x} #{y}"
end

fail unless positional(1, 2, 3) == "1 2 3"
fail unless named(z:3, x:1, y:2) == "1 2 3"
fail unless splatted(1) == "1 []"
fail unless splatted(1, 2, 3, 4) == "1 [2, 3, 4]"
fail unless positional(1, *[2, 3]) == "1 2 3"
fail unless defaulted(1) == "1 100"
fail unless defaulted(1, 2) == "1 2"
fail unless defaulted_and_named(1) == "1 2"
fail unless defaulted_and_named(1,y:3) == "1 3"

