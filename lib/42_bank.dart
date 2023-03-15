/*
Create an abstract class 'Bank' with an abstract method 'getBalance'.
$100, $150 and $200 are deposited in banks A, B and C respectively.
'BankA', 'BankB' and 'BankC' are subclasses of class 'Bank', each having a method named 'getBalance'.
Call this method by creating an object of each of the three classes.*/
abstract class Bank {
  double getBalance();
}

class BankA extends Bank {
  double balance = 100;

  @override
  double getBalance() {
    return balance;
  }
}

class BankB extends Bank {
  double balance = 150;

  @override
  double getBalance() {
    return balance;
  }
}

class BankC extends Bank {
  double balance = 200;

  @override
  double getBalance() {
    return balance;
  }
}

void main() {
  Bank bankA = BankA();
  Bank bankB = BankB();
  Bank bankC = BankC();

  print("Balance in Bank A: \$${bankA.getBalance()}");
  print("Balance in Bank B: \$${bankB.getBalance()}");
  print("Balance in Bank C: \$${bankC.getBalance()}");
}
