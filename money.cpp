#include <iostream>
#include <vector>
#include <string>
#include <iomanip>

using namespace std;

class Transaction {
private:
    string description;
    double amount;
    string type;

public:
    // Parameterized Constructor
    Transaction(string desc, double amt, string transType) {
        description = desc;
        amount = amt;
        type = transType;
        cout << "Transaction created: " << description << endl;
    }

    // Destructor
    ~Transaction() {
        cout << "Transaction deleted: " << description << endl;
    }

    // Getter methods
    double getAmount() const { return amount; }
    string getType() const { return type; }
    string getDescription() const { return description; }
};

class Account {
private:
    string accountName;
    double balance;
    vector<Transaction*> transactions;

public:
    // Constructor
    Account(string name, double initialBalance) {
        accountName = name;
        balance = initialBalance;
        cout << "Account created: " << accountName << endl;
    }

    // Destructor
    ~Account() {
        cout << "Cleaning up account: " << accountName << endl;
        
        // Delete all transaction pointers to prevent memory leak
        for (Transaction* trans : transactions) {
            delete trans;
        }
        transactions.clear();
        
        cout << "Account " << accountName << " deleted." << endl;
    }

    // Method to add income
    void addIncome(string description, double amount) {
        Transaction* income = new Transaction(description, amount, "INCOME");
        transactions.push_back(income);
        balance += amount;
        cout << "Income added: Rs" << amount << endl;
    }

    // Method to add expense
    void addExpense(string description, double amount) {
        if (amount <= balance) {
            Transaction* expense = new Transaction(description, amount, "EXPENSE");
            transactions.push_back(expense);
            balance -= amount;
            cout << "Expense added: $" << amount << endl;
        } else {
            cout << "Insufficient funds!" << endl;
        }
    }

    // Method to display account summary
    void displaySummary() {
        cout << "\n--- Account Summary ---" << endl;
        cout << "Account: " << accountName << endl;
        cout << "Current Balance: $" << fixed << setprecision(2) << balance << endl;
        
        cout << "\nTransaction History:" << endl;
        for (const auto& trans : transactions) {
            cout << trans->getType() << ": " 
                 << trans->getDescription() << " - $" 
                 << trans->getAmount() << endl;
        }
    }
};

int main() {
    // Create an account
    Account* personalAccount = new Account("John Doe", 1000.00);

    // Add some transactions
    personalAccount->addIncome("Salary", 5000.00);
    personalAccount->addExpense("Rent", 1500.00);
    personalAccount->addExpense("Groceries", 300.00);
    personalAccount->addIncome("Freelance", 1200.00);

    // Display account summary
    personalAccount->displaySummary();

    // Clean up
    delete personalAccount;

    return 0;
}
