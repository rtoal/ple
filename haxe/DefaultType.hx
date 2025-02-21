class Node<T = Int> {
  public var next:Node<T> = null;
  public var value:T;

  public function new(?value) {
    if (value != null) {
      this.value = value;
    }
  }
}

class LinkedList<T = Int> {
  public var length:Int = 0;
  private var root:Node<T> = null;

  public function new() {}

  public function get(index: Int):Null<T> {
    if (index > length) {
      return null;
    }
    var current = root;
    for (_ in 0...index) {
      current = current.next;
    }
    return current.value;
  }

  public function push(value:T):Void {
    if (root == null) {
      root = new Node(value);
      return;
    }
    var current = root;
    while (current.next != null) {
      current = current.next;
    }
    length++;
    current.next = new Node(value);
  }

  public function pop():T {
    if (length == 0) {
      return null;
    }
    var value:T;
    if (length == 1) {
      value = root.value;
      root = null;
    } else {
      var current = root;
      for (_ in 0...length-1) {
        current = current.next;
      }
      value = current.next.value;
      current.next = null;
    }
    length--;
    return value;
  }

  public function toString():String {
    var current = root;
    var list = [];
    while (current != null) {
      list.push(current.value);
      current = current.next;
    }
    return list.join(",");
  }
}

class DefaultType {
  public static function main():Void {
    var nums = new LinkedList();
    nums.push(1);
    nums.push(2);
    nums.push(3);
    nums.push(4);
    trace(nums.toString());
    trace(nums.get(2));
    trace(nums.get(3));
    trace(nums.get(4));
    nums.push(5);
    trace(nums.get(4));
    trace(nums.pop());
    trace(nums.pop());
    trace(nums.pop());
    trace(nums.toString());

    var words = new LinkedList<String>();
    words.push("London");
    words.push("Paris");
    words.push("New York");
    words.push("Cairo");
    trace(words.toString());
    trace(words.get(2));
    trace(words.get(3));
    trace(words.get(4));
    words.push("Tokyo");
    trace(words.get(4));
    trace(words.pop());
    trace(words.pop());
    trace(words.pop());
    trace(words.toString());
  }
}