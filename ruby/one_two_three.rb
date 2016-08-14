class OneTwoThree
  include Enumerable
  def each
    yield 1
    yield 2
    yield 3
  end
end

t = OneTwoThree.new
fail unless t.first == 1
fail unless t.map {|x| x * 100} == [100, 200, 300]
fail unless t.select {|x| x.even?} == [2]
fail unless t.all? {|x| x > 0} == true
