#include <vector>
#include <cassert>

int sum_of_even_squares(const std::vector<int>& a) {
  int total = 0;
  for (int x : a) {
    if (x % 2 == 0) {
      total += x * x;
    }
  }
  return total;
}

int main() {
  assert(sum_of_even_squares({}) == 0);
  assert(sum_of_even_squares({7}) == 0);
  assert(sum_of_even_squares({7, 3}) == 0);
  assert(sum_of_even_squares({7, 3, -8}) == 64);
  assert(sum_of_even_squares({7, 3, -8, 4}) == 80);
  assert(sum_of_even_squares({7, 3, -8, 4, 1}) == 80);
  assert(sum_of_even_squares({7, 3, -8, 4, 1, 0}) == 80);
  assert(sum_of_even_squares({7, 3, -8, 4, 1, 0, 11}) == 80);
  assert(sum_of_even_squares({7, 3, -8, 4, 1, 0, 11, 2}) == 84);

  // Iterators for slicing
  static std::vector<int> v = {7, 3, -8, 4, 1, 0, 11, 2};
  assert(sum_of_even_squares(std::vector<int>(v.begin(), v.begin()+6)) == 80);
}
