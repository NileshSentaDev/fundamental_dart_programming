/*
We have to calculate the area of a rectangle, a square and a circle. Create an
abstract class 'Shape' with three abstract methods namely 'RectangleArea' taking two
parameters, 'SquareArea' and 'CircleArea' taking one parameter each. The parameters
of 'RectangleArea' are its length and breadth, that of 'SquareArea' is its side and that of
'CircleArea' is its radius. Now create another class 'Area' containing all the three
methods 'RectangleArea', 'SquareArea' and 'CircleArea' for printing the area of
rectangle, square and circle respectively. Create an object of class 'Area' and call all the
three methods*/

// Abstract class Shape
abstract class Shape {
  double rectangleArea(double length, double breadth);
  double squareArea(double side);
  double circleArea(double radius);
}

// Class Area to calculate area of rectangle, square and circle
class Area implements Shape {
  @override
  double rectangleArea(double length, double breadth) {
    return length * breadth;
  }

  @override
  double squareArea(double side) {
    return side * side;
  }

  @override
  double circleArea(double radius) {
    return 3.14 * radius * radius;
  }
}

void main() {
  Area area = Area();

  double rectangleArea = area.rectangleArea(5, 10);
  double squareArea = area.squareArea(5);
  double circleArea = area.circleArea(5);

  print("Area of rectangle: $rectangleArea");
  print("Area of square: $squareArea");
  print("Area of circle: $circleArea");
}
