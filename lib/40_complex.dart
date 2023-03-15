/*
Print the sum, difference and product of two complex numbers by creating a class
named 'Complex' with separate methods for each operation whose real and imaginary
parts are entered by user
*/
import 'dart:io';

class Complex {
  late double real;
  late double imag;

  Complex(double real, double imag) {
    this.real = real;
    this.imag = imag;
  }

  Complex add(Complex other) {
    return Complex(real + other.real, imag + other.imag);
  }

  Complex subtract(Complex other) {
    return Complex(real - other.real, imag - other.imag);
  }

  Complex multiply(Complex other) {
    double realPart = (real * other.real) - (imag * other.imag);
    double imagPart = (real * other.imag) + (imag * other.real);
    return Complex(realPart, imagPart);
  }
}

void main() {
  print("Enter the real and imaginary parts of the first complex number:");
  double real1 = double.parse(stdin.readLineSync()!);
  double imag1 = double.parse(stdin.readLineSync()!);

  print("Enter the real and imaginary parts of the second complex number:");
  double real2 = double.parse(stdin.readLineSync()!);
  double imag2 = double.parse(stdin.readLineSync()!);

  Complex num1 = Complex(real1, imag1);
  Complex num2 = Complex(real2, imag2);

  Complex sum = num1.add(num2);
  Complex difference = num1.subtract(num2);
  Complex product = num1.multiply(num2);

  print("Sum: ${sum.real} + ${sum.imag}i");
  print("Difference: ${difference.real} + ${difference.imag}i");
  print("Product: ${product.real} + ${product.imag}i");
}
