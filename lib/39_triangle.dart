/*
Write a program to print the area and perimeter of a triangle having sides of 3, 4
and 5 units by creating a class named 'Triangle' without any parameter in its
constructor.
*/
import 'dart:math';

class Triangle {
  late double side1;
  late double side2;
  late double side3;

  Triangle(){
    side1 = 3;
    side2 = 4;
    side3 = 5;
  }

  double getPerimeter() {
    return side1 + side2 + side3;
  }

  double getArea() {
    double s = getPerimeter() / 2;
    return sqrt(s * (s - side1) * (s - side2) * (s - side3));
  }
}

void main() {
  Triangle triangle = Triangle();

  print("Perimeter of triangle: ${triangle.getPerimeter()}");
  print("Area of triangle: ${triangle.getArea()}");
}
