#include <cassert>
#include <memory>
using namespace std;

int destructors_called = 0;

struct Box {
  ~Box() { destructors_called++; }
};

void unique_pointer_demo() {
  unique_ptr<Box> p(new Box);
  // unique_ptr<Box> q(p);            // ------> Compile-time error,
}                                     //  no unique_ptr copy constructor

void shared_pointer_demo() {
  shared_ptr<Box> p(new Box);
  shared_ptr<Box> q(p);               // q & p both reference first box
  if (true) {
    shared_ptr<Box> r(new Box);       // second box
    shared_ptr<Box> s(q);             // now three pointers to first box
  }                                   // second box deallocated here
  assert(destructors_called == 2);    // but irst box Not deleted yet
}

int main() {
  unique_pointer_demo();
  assert(destructors_called == 1);
  shared_pointer_demo();
  assert(destructors_called == 3);
}
