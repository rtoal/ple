template<typename T>
struct Box {
private:
  T* content;
public:

  // Regular constructors, called when declaring variables of
  // the type. Examples: Box<int> box; Box<int> box(5);
  Box(): content(nullptr) {}
  Box(T data): content(new T(data)) {}

  // Copy constructor, called when declaring a variable and
  // initializing it with another variable of the same type.
  // Example: Box<int> box1(5); Box<int> box2(box1);
  Box(const Box& other): content(new T(*other.content)) {
  }

  // Move constructor, called when the source of the initialization
  // is a temporary object. Example: Box<int> box(Box<int>(5));
  Box(Box&& other): content(other.content) {
    other.content = nullptr;
  }

  // Destructor, called when the variable goes out of scope.
  ~Box() {
    delete content;
  }

  // Copy assignment, called when assigning one variable to another.
  // Assignment differs from initialization in that the variable being
  // assigned to already has a value, and should be destroyed before
  // receiving its new value. Example: Box<int> box1(5); Box<int> box2;
  // box2 = box1;
  Box& operator=(const Box& other) {
    if (&other == this) return *this;
    delete content;
    content = other.content ? new T(*other.content) : nullptr;
    return *this;
  }

  // Move assignment, called when assigning a temporary object to an
  // existing variable. Example: Box<int> box; box = Box<int>(5);
  Box& operator=(Box&& other) {
    if (&other == this) return *this;
    delete content;
    content = other.content;
    other.content = nullptr;
    return *this;
  }

  // Equality operator to equate the contents of the boxes.
  bool operator==(const Box& other) {
    return (
      (content == nullptr && other.content == nullptr) ||
      (content && other.content && *content == *other.content)
    );
  }

  // Methods called on the object. Example: box.is_empty();
  bool is_empty() {return content == nullptr;}
  T get_content(T default_value) {
    return content ? *content : default_value;
  }
  void set_content(T data) {
    if (content) *content = data; else content = new T(data);
  }
  void remove_content() {content = nullptr;}
};
