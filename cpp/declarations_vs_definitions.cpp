extern int z;               // just a declaration
class C;                    // just a declaration
double square(double);      // just a declaration

void f() {                  // declaration plus definition
  int x;                    // also a declaration plus definition
  int y = x + z /square(3); // so is this
}

double square(double x) {   // a definition "completing"...
  return x * x;             // ... an earlier raw declaration
}
