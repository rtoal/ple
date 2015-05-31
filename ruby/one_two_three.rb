class OneTwoThree
  include Enumerable
  def each
    yield 1
    yield 2
    yield 3
  end
end

t = OneTwoThree.new
puts t.first
puts t.map {|x| x * 100}
puts t.select {|x| x.even?}
puts t.all? {|x| x > 0}
