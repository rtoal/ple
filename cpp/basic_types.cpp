#include <cassert>

int main() {
  bool young = (1 == 2) || true && false;

  char c = '%';                     // Old initialization syntax
  char d('#');                      // Modern initialization syntax
  char e {'$'};                     // Hypermodern initialization syntax

  int x = 50 + int(c);              // Type conversion
  long y = 999999999999999999;
  double z(353.13411);
  short q;                          // Initializer not required

  char16_t thorn = u'Þ';            // L prefix required, codepoint > 127
  char16_t infinity = u'∞';         // Here too
  char32_t winky = U'😉';           // And here

  assert(young == false);
  assert(c == '%' && d == '#');
  assert(q == 0);                   // If no initializer, zero value is used
  assert(double(x) == 87);
  assert(thorn == 0xde && infinity == 0x221e && winky == 0x1f609);
}
