#include <iostream>
#include <utility>
#include <cstring>

void generatePermutations(char* s, int n) {
  if (n == 0) {
    std::cout << s << '\n';
  } else {
    for (int i = 0; i < n; i++) {
      generatePermutations(s, n-1);
      int j = n % 2 == 0 ? 0 : i;
      std::swap(s[j], s[n]);
    }
    generatePermutations(s, n-1);
  }
}

int main(int argc, char** argv) {
  if (argc != 2) {
    std::cerr << "Exactly one argument is required\n";
    return 1;
  }
  generatePermutations(argv[1], strlen(argv[1])-1);
}
