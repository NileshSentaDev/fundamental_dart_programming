/*
Create a class named 'Member' having the following members:
Data members 1 - Name 2 - Age 3 - Phone number 4 - Address 5 - Salary
It also has a method named 'printSalary' which prints the salary of the members.
Two classes 'Employee' and 'Manager' inherits the 'Member' class.
The 'Employee' and 'Manager' classes have data members 'specialization' and 'department' respectively.
Now, assign name, age, phone number, address and salary to an employee and a manager by making an object of both of these
classes and print the same
*/
class Member {
  late String name;
  late int age;
  late String phoneNumber;
  late String address;
  late double salary;

  void printSalary() {
    print("Salary: $salary");
  }
}
class Employee extends Member {
  late String specialization;
}

class Manager extends Member {
  late String department;
}
void main() {
  Employee employee = Employee();
  employee.name = "John";
  employee.age = 30;
  employee.phoneNumber = "1234567890";
  employee.address = "123 Main St, Anytown, USA";
  employee.salary = 50000.0;
  employee.specialization = "Software Developer";

  Manager manager = Manager();
  manager.name = "Jane";
  manager.age = 40;
  manager.phoneNumber = "9876543210";
  manager.address = "456 Maple Ave, Anytown, USA";
  manager.salary = 80000.0;
  manager.department = "Human Resources";

  print("Employee:");
  print("Name: ${employee.name}");
  print("Age: ${employee.age}");
  print("Phone Number: ${employee.phoneNumber}");
  print("Address: ${employee.address}");
  employee.printSalary();
  print("Specialization: ${employee.specialization}");

  print("\nManager:");
  print("Name: ${manager.name}");
  print("Age: ${manager.age}");
  print("Phone Number: ${manager.phoneNumber}");
  print("Address: ${manager.address}");
  manager.printSalary();
  print("Department: ${manager.department}");
}
