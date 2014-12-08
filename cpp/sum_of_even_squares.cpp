#include <vector>
int sum_of_even_squares(const std::vector<int>& a) {
    int total = 0;
    for (int x : a) {
        if (x % 2 == 0) {
            total += x * x;
        }
    }
    return total;
}
