/*
Create a class named 'Rectangle' with two data members 'length' and 'breadth'
and two methods to print the area and perimeter of the rectangle respectively.
Its constructor having parameters for length and breadth is used to initialize the length
and breadth of the rectangle.
Let class 'Square' inherit the 'Rectangle' class with its constructor having
a parameter for its side (suppose s) calling the constructor of its
parent class as 'super (s, s)'. Print the area and perimeter of a rectangle and a square
*/
class Rectangle {
  double length;
  double breadth;

  Rectangle(this.length, this.breadth);

  double getArea() {
    return length * breadth;
  }

  double getPerimeter() {
    return 2 * (length + breadth);
  }
}

class Square extends Rectangle {
  Square(double side) : super(side, side);
}

void main() {
  Rectangle rectangle = Rectangle(5, 3);
  Square square = Square(4);

  print("Area of rectangle: ${rectangle.getArea()}");
  print("Perimeter of rectangle: ${rectangle.getPerimeter()}");

  print("Area of square: ${square.getArea()}");
  print("Perimeter of square: ${square.getPerimeter()}");
}
