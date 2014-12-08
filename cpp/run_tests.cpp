#include <cassert>
#include <iostream>

#include "sum_of_even_squares.cpp"

using namespace std;

static vector<int> v  = {7, 3, -8, 4, 1, 0, 11, 2};

void test_sum_of_even_squares() {
    assert(sum_of_even_squares(vector<int>(v.begin(), v.begin()+0)) == 0);
    assert(sum_of_even_squares(vector<int>(v.begin(), v.begin()+1)) == 0);
    assert(sum_of_even_squares(vector<int>(v.begin(), v.begin()+2)) == 0);
    assert(sum_of_even_squares(vector<int>(v.begin(), v.begin()+3)) == 64);
    assert(sum_of_even_squares(vector<int>(v.begin(), v.begin()+4)) == 80);
    assert(sum_of_even_squares(vector<int>(v.begin(), v.begin()+5)) == 80);
    assert(sum_of_even_squares(vector<int>(v.begin(), v.begin()+6)) == 80);
    assert(sum_of_even_squares(vector<int>(v.begin(), v.begin()+7)) == 80);
    assert(sum_of_even_squares(vector<int>(v.begin(), v.begin()+8)) == 84);
}

int main() {
    test_sum_of_even_squares();
    cout << "All tests passed\n";
    return 0;
}
