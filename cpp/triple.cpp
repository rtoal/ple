#include <iostream>

int main() {
  for (int c = 1; c <= 40; c++) {
    for (int b = 1; b < c; b++) {
      for (int a = 1; a < b; a++) {
        if (a * a + b * b == c * c) {
          std::cout << a << ", " << b << ", " << c << '\n';
        }
      }
    }
  }
}
