/*
Create an abstract class 'Parent' with a method 'message'. It has two subclasses each
having a method with the same name 'message' that prints "This is first subclass" and
"This is second subclass" respectively. Call the methods 'message' by creating an object
for each subclass */
abstract class Parent {
  void message();
}

class FirstSubclass extends Parent {
  @override
  void message() {
    print("This is first subclass");
  }
}

class SecondSubclass extends Parent {
  @override
  void message() {
    print("This is second subclass");
  }
}

void main() {
  Parent obj1 = FirstSubclass();
  Parent obj2 = SecondSubclass();

  obj1.message();
  obj2.message();
}
