/*
All the banks operating in India are controlled by RBI.
RBI has set a well-defined guideline (e.g. minimum interest rate, minimum balance allowed, maximum
withdrawal limit etc) which all banks must follow.
For example, suppose RBI has set minimum interest rate applicable to a saving bank account to be 4% annually; however,
banks are free to use 4% interest rate or to set any rates above it.
Write a DART program to implement bank functionality in the above scenario and demonstrate the
dynamic polymorphism concept.
Note: Create few classes namely Customer, Account, RBI (Base Class) and few derived classes (SBI, ICICI, PNB etc).
Assume and implement required member variables and functions in each class.
*/

// Base class for RBI guidelines
class RBI {
  double minInterestRate;
  double minBalance;
  int maxWithdrawalLimit;

  RBI(this.minInterestRate, this.minBalance, this.maxWithdrawalLimit);
}

// Customer class
class Customer {
  String name;
  String address;

  Customer(this.name, this.address);
}

// Account class
class Account {
  int accountNumber;
  Customer customer;
  double balance;
  RBI rbi;

  Account(this.accountNumber, this.customer, this.balance, this.rbi);

  void displayAccountDetails() {
    print("Account Number: $accountNumber");
    print("Customer Name: ${customer.name}");
    print("Customer Address: ${customer.address}");
    print("Account Balance: $balance");
    print("Minimum Interest Rate: ${rbi.minInterestRate}%");
    print("Minimum Balance: ${rbi.minBalance}");
    print("Maximum Withdrawal Limit: ${rbi.maxWithdrawalLimit}");
  }

  void withdraw(double amount) {
    if (amount > rbi.maxWithdrawalLimit) {
      print("Withdrawal limit exceeded");
    } else if (balance - amount < rbi.minBalance) {
      print("Insufficient balance");
    } else {
      balance -= amount;
      print("Withdrawal successful");
    }
  }

  void deposit(double amount) {
    balance += amount;
    print("Deposit successful");
  }

  void calculateInterest() {
    double interest = balance * rbi.minInterestRate / 100;
    balance += interest;
    print("Interest calculated and added to account balance");
  }
}

// SBI class
class SBI extends RBI {
  SBI() : super(4.0, 1000.0, 50000);
}

// ICICI class
class ICICI extends RBI {
  ICICI() : super(3.5, 5000.0, 100000);
}

// PNB class
class PNB extends RBI {
  PNB() : super(3.75, 2000.0, 75000);
}

void main() {
  // Creating customer object
  Customer customer = Customer("John Doe", "123 Main St, Anytown");

  // Creating SBI account object
  RBI sbiRBI = SBI();
  Account sbiAccount = Account(12345678, customer, 50000, sbiRBI);

  // Creating ICICI account object
  RBI iciciRBI = ICICI();
  Account iciciAccount = Account(23456789, customer, 75000, iciciRBI);

  // Creating PNB account object
  RBI pnbRBI = PNB();
  Account pnbAccount = Account(34567890, customer, 100000, pnbRBI);

  // Demonstrating dynamic polymorphism by calling the same methods on different account objects
  sbiAccount.displayAccountDetails();
  sbiAccount.withdraw(20000);
  sbiAccount.calculateInterest();
  sbiAccount.deposit(10000);
  sbiAccount.displayAccountDetails();

  iciciAccount.displayAccountDetails();
  iciciAccount.withdraw(50000);
  iciciAccount.calculateInterest();
  iciciAccount.deposit(20000);
  iciciAccount.displayAccountDetails();

  pnbAccount.displayAccountDetails();
  pnbAccount.withdraw(75000);
  pnbAccount.calculateInterest();
  pnbAccount.deposit(30000);
  pnbAccount.displayAccountDetails();
}
