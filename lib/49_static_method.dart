/*
Suppose a class 'A' has a static method to print "Parent".
Its subclass 'B' also has a static method with the same name to print "Child".
Now call this method by the objects of the two classes.
Also, call this method by an object of the parent class referring to the child class i.e. A obj = new B ()
 */
class A {
  static void printMessage() {
    print("Parent");
  }
}

class B extends A {
  static void printMessage() {
    print("Child");
  }
}

void main() {
  A.printMessage(); // prints "Parent"
  B.printMessage(); // prints "Child"

  A obj = new B();
  A.printMessage(); // prints "Parent" because the static method belongs to the class, not the object
}
