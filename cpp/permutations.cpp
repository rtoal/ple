#include <iostream>
#include <vector>
#include <utility>

void generate_permutations(int n, std::vector<std::string>& a) {
  if (n == 0) {
    bool first = true;
    for (const std::string& s : a) {
      if (first) {
        first = false;
      } else {
        std::cout << "\t";
      }
      std::cout << s;
    }
    std::cout << std::endl;
  } else {
    for (int i = 0; i < n; i++) {
      generate_permutations(n - 1, a);
      std::swap(a[n % 2 == 0 ? 0 : i], a[n]);
    }
    generate_permutations(n - 1, a);
}
}

int main(int argc, char* argv[]) {
  std::vector<std::string> args(argv + 1, argv + argc);
  generate_permutations(args.size() - 1, args);
}
