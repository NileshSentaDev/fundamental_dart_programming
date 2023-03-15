/*
Create a class named 'Shape' with a method to print "This is This is shape".
Then create two other classes named 'Rectangle', 'Circle' inheriting the Shape class,
both having a method to print "This is rectangular shape" and "This is circular shape"
respectively.
Create a subclass 'Square' of 'Rectangle' having a method to print "Square is a rectangle".
Now call the method of 'Shape' and 'Rectangle' class by the object of 'Square' class.
*/
class Shape {
  void printShape() {
    print("This is shape");
  }
}

class Rectangle extends Shape {
  void printShape() {
    print("This is rectangular shape");
  }
}

class Circle extends Shape {
  void printShape() {
    print("This is circular shape");
  }
}

class Square extends Rectangle {
  void printSquare() {
    print("Square is a rectangle");
  }
}

void main() {
  Square square = Square();

  square.printShape();   // This will call the printShape() method of Rectangle class
  square.printSquare();  // This will call the printSquare() method of Square class
}
