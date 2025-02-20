#include <iostream>
using namespace std;

class Account {
private:
    string holderName;
    int accountNumber;
    double balance;

public:
    // Constructor to initialize account details
    Account(string name, int accNum, double bal) {
        holderName = name;
        accountNumber = accNum;
        balance = bal;
        cout << "Account created for " << holderName << " (Account No: " << accountNumber << ")\n";
    }

    // Function to deposit money
    void deposit(double amount) {
        balance += amount;
        cout << "Deposited $" << amount << ". New balance: $" << balance << endl;
    }

    // Function to withdraw money
    void withdraw(double amount) {
        if (amount > balance) {
            cout << "Insufficient balance! Withdrawal failed.\n";
        } else {
            balance -= amount;
            cout << "Withdrawn $" << amount << ". Remaining balance: $" << balance << endl;
        }
    }

    // Destructor
    ~Account() {
        cout << "Account (Account No: " << accountNumber << ") is being closed.\n";
    }
};

int main() {
    // Creating an account object
    Account myAccount("John Doe", 123456, 500.0);

    // Performing transactions
    myAccount.deposit(200);
    myAccount.withdraw(100);
    myAccount.withdraw(700); // This will fail due to insufficient balance

    return 0; // Destructor is called automatically when object goes out of scope
}
