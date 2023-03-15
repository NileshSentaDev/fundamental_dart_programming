/*
We have to calculate the percentage of marks obtained in three subjects (each out of
100) by student A and in four subjects (each out of 100) by student B.
Create an abstract class 'Marks' with an abstract method 'getPercentage'.
It is inherited by two other classes 'A' and 'B' each having a method with the same name which returns the
percentage of the students.
The constructor of student A takes the marks in three subjects as its parameters and
the marks in four subjects as its parameters for student B.
Create an object for eac of the two classes and print the percentage of marks for both the students.*/


// Abstract class Marks
abstract class Marks {
  double getPercentage();
}

// Class A to calculate percentage of marks for student A
class A extends Marks {
  late double subject1, subject2, subject3;

  A(double  subject1, double subject2, double subject3) {
    this.subject1 = subject1;
    this.subject2 = subject2;
    this.subject3 = subject3;
  }

  @override
  double getPercentage() {
    double totalMarks = subject1 + subject2 + subject3;
    return (totalMarks / 300) * 100;
  }
}

// Class B to calculate percentage of marks for student B
class B extends Marks {
  late double subject1, subject2, subject3, subject4;

  B(double subject1, double subject2, double subject3, double subject4) {
    this.subject1 = subject1;
    this.subject2 = subject2;
    this.subject3 = subject3;
    this.subject4 = subject4;
  }

  @override
  double getPercentage() {
    double totalMarks = subject1 + subject2 + subject3 + subject4;
    return (totalMarks / 400) * 100;
  }
}

void main() {
  A studentA = A(80, 90, 95);
  B studentB = B(70, 85, 90, 95);

  print("Percentage of marks obtained by student A: ${studentA.getPercentage()}%");
  print("Percentage of marks obtained by student B: ${studentB.getPercentage()}%");
}
