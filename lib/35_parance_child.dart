/*
Create a class with a method that prints "This is a parent class" and
its subclass with another method that prints "This is child class".
Now, create an object for each of the class and call 1 - method of parent class
by object of parent class 2 - method of child class
by object of child class 3 - method of parent class by object of child class*/

class Parent {
  void printMessage() {
    print("This is a parent class");
  }
}

class Child extends Parent {
  void printMessage() {
    print("This is a child class");
  }
}
void main() {
  Parent parent = Parent();
  Child child = Child();

  // Calling method of parent class by object of parent class
  parent.printMessage();

  // Calling method of child class by object of child class
  child.printMessage();

  // Calling method of parent class by object of child class
  Child child2 = Child();
  (child2 as Parent).printMessage();
}
