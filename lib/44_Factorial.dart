/*
Write a program to print the factorial of a number by defining a method named
'Factorial'. Factorial of any number n is represented by n! And is equal to 1*2*3*.
*(n-1) *n. E.g. - 4! = 1*2*3*4 = 24 3! = 3*2*1 = 6 2! = 2*1 = 2 Also, 1! = 1 0! = 0*/

// Function to calculate the factorial of a number
int factorial(int number) {
  if (number == 0) {
    return 1;
  } else {
    int fact = 1;
    for (int i = 1; i <= number; i++) {
      fact = fact * i;
    }
    return fact;
  }
}

void main() {
  int num = 4;
  int fact = factorial(num);
  print("Factorial of $num is $fact");
}

