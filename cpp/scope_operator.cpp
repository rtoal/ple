#include <cassert>
int x = 1;

namespace N {
  int x = 2;
};

struct C {
  int x = 3;
  void f() {
    int x = 4;
    assert(::x == 1 && N::x == 2 && C::x == 3 && x == 4);
  }
};

int main() {
  C().f();
}
