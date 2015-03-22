import 'dart:collection';

class SquaresIterator extends Iterator<num> {
  num _currentBase;

  SquaresIterator(): _currentBase = -1;

  bool moveNext() {
    _currentBase++;
    return true;
  }
  num get current => _currentBase * _currentBase;
}

class Squares extends IterableBase<num> {
  get iterator => new SquaresIterator();
}

void main() {
  for (var i in new Squares().take(4)) {
    print(i); // prints 0, 1, 4, 9
  }
}
