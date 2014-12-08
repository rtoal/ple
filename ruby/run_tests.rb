require "./sum_of_even_squares.rb"
require "minitest/autorun"

class TestEverything < MiniTest::Unit::TestCase
  def test_sum_of_even_squares()
    a = [7, 3, -8, 4, 1, 0, 11, 2];
    assert_equal(sum_of_even_squares(a[0..0]), 0);
    assert_equal(sum_of_even_squares(a[0..1]), 0);
    assert_equal(sum_of_even_squares(a[0..2]), 64);
    assert_equal(sum_of_even_squares(a[0..3]), 80);
    assert_equal(sum_of_even_squares(a[0..4]), 80);
    assert_equal(sum_of_even_squares(a[0..5]), 80);
    assert_equal(sum_of_even_squares(a[0..6]), 80);
    assert_equal(sum_of_even_squares(a[0..7]), 84);
  end
end
