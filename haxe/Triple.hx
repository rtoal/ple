class Triple {
  static public function main():Void {
    for (c in 1...41) {
      for (b in 1...c) {
        for (a in 1...b) {
          if (a * a + b * b == c * c) haxe.Log.trace('$a, $b, $c', null);
        }
      }
    }
  }
}