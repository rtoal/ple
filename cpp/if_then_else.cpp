#include <cassert>

int f_calls = 0;
int g_calls = 0;

int f() {
  f_calls++;
  return 1;
}

int g() {
  g_calls++;
  return 2;
}

template <class T> bool if_then_else(bool x, T y, T z) {
  return x ? y : z;
}

#define IF_THEN_ELSE(x, y, z) ((x)?(y):(z))

int main() {
  if_then_else(true, f(), g());
  if_then_else(false, f(), g());
  assert(f_calls == 2 && g_calls == 2);
  IF_THEN_ELSE(true, f(), g());
  assert(f_calls == 3 && g_calls == 2);
  IF_THEN_ELSE(false, f(), g());
  assert(f_calls == 3 && g_calls == 3);
}
