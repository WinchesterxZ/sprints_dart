// intializing colors for printing messages
const String red = '\u001b[31m';
const String green = '\u001b[32m';
const String reset = '\u001b[0m';
void main() {
  BankAccount account1 = BankAccount(1, 10000.0);
  account1.withDraw(5000.0); // successfully withdrawing
  account1.withDraw(-1000.0); // Failed withdrawing
  account1.withDraw(20000.0); //insufficient balance
  account1.displayAccountInfo();
  print(
      "************************************************************************");
  BankAccount account2 = BankAccount.withZeroBalance(2);
  account2.withDraw(2000.0); // failed withdrawing as balance is zero
  account2.deposit(2000.0); // successfully depositing
  account2.withDraw(500.0); // successfully withdrawing
  account2.displayAccountInfo();
}

class BankAccount {
  int accountID;
  double balance;
  BankAccount(this.accountID, this.balance) {
    print(
        "$green New Account Created For Account ID: $accountID and Balance: \$${balance.toStringAsFixed(2)}$reset");
  }
  BankAccount.withZeroBalance(this.accountID) : balance = 0.0 {
    print(
        "$green New Account Created With Zero Balance For Account ID: $accountID $reset");
  }

  void withDraw(double amountOfMoney) {
    //intial message for the user
    print(
        "Trying To Withdraw \$${amountOfMoney.toStringAsFixed(2)} for Account ID: $accountID");
    // check if the amount of money is valid (positive and less than balance)
    if (amountOfMoney <= 0) {
      print(
          "$red Withdrawing Failed, Please Enter A Valid Positive Amount$reset");
      return;
    } else if (amountOfMoney > balance) {
      print("$red Withdrawing Failed, Insufficient Balance$reset");
      return;
    } else {
      // if the amount of money is valid, subtract it from the balance
      balance -= amountOfMoney;
      print(
          "$green Successfully Withdrawing \$${amountOfMoney.toStringAsFixed(2)}$reset");
    }
  }

  void deposit(double amountOfMoney) {
    print(
        "Trying To deposit \$${amountOfMoney.toStringAsFixed(2)} for Account ID: $accountID");
    // check if the amount of money is valid
    if (amountOfMoney <= 0) {
      print(
          "$red Depositing Failed, Please Enter A Valid Positive Amount$reset");
      return;
    } else {
      // if the amount of money is valid, add mone to the balance
      balance += amountOfMoney;
      print(
          "$green Depositing \$${amountOfMoney.toStringAsFixed(2)}, Your Current Balance is \$${balance.toStringAsFixed(2)}$reset");
    }
  }

  void displayAccountInfo() {
    print("Your Bnak Account Informatin:");
    print("Account ID: $accountID");
    print("Current Balance: \$${balance.toStringAsFixed(2)}");
  }
}
