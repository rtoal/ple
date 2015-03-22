var x = 'GLOBAL';
void main() {
  void second() { print(x); }
  void first() { 
    var x = 'FIRST';
    second();
  }
  first();
}
