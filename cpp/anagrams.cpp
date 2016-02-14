#include <iostream>
#include <utility>
#include <cstring>

void generatePermutations(char* s, int n) {
  if (n == 0) {
    std::cout << s << std::endl;
  } else {
    for (int i = 0; i <= n; i++) {
      generatePermutations(s, n-1);
      int j = n % 2 == 0 ? i : 0;
      std::swap(s[j], s[n]);
    }
  }
}

int main(int argc, char** argv) {
  if (argc != 2) {
    std::cerr << "Exactly one argument is required\n";
    return 1;
  }
  generatePermutations(argv[1], strlen(argv[1])-1);
  return 0;
}