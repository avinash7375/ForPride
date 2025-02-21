# C++ Tutorials for General Purpose Programming

## Introduction to C++
C++ is a versatile and powerful programming language widely used for system/software development, game development, and more. It supports multiple programming paradigms, including procedural, object-oriented, and generic programming. This tutorial will guide you through the basics of C++ for general-purpose programming.

---

## Chapter 1: Getting Started with C++

### 1.1 Setting Up Your Environment
1. **Install a C++ Compiler**: Popular choices include GCC (GNU Compiler Collection), Clang, or Microsoft Visual C++.
2. **Choose an IDE/Text Editor**: Recommended options:
   - Visual Studio Code
   - Code::Blocks
   - CLion
   - Dev-C++
3. **Write Your First Program**:
   ```cpp
   #include <iostream>

   int main() {
       std::cout << "Hello, World!" << std::endl;
       return 0;
   }
   ```
   Save the file with a `.cpp` extension and compile it using your compiler.

### 1.2 Compilation and Execution
- To compile the program: `g++ -o hello hello.cpp`
- To run the program: `./hello`

---

## Chapter 2: Basics of C++

### 2.1 Syntax and Structure
- Every C++ program starts with the `main()` function.
- Use `#include` to include libraries.
- Statements end with a semicolon (`;`).

### 2.2 Variables and Data Types
- **Common Data Types**:
  - `int`: Integer values
  - `float`: Floating-point numbers
  - `char`: Single characters
  - `bool`: Boolean values (`true` or `false`)
  - `double`: Double-precision floating-point numbers
- **Example**:
   ```cpp
   int age = 25;
   float height = 5.9;
   char grade = 'A';
   bool isStudent = true;
   ```

### 2.3 Input and Output
- Use `std::cin` for input and `std::cout` for output.
- **Example**:
   ```cpp
   #include <iostream>

   int main() {
       int age;
       std::cout << "Enter your age: ";
       std::cin >> age;
       std::cout << "Your age is: " << age << std::endl;
       return 0;
   }
   ```

---

## Chapter 3: Control Structures

### 3.1 Conditional Statements
- **If-Else**:
   ```cpp
   if (condition) {
       // Code to execute if condition is true
   } else {
       // Code to execute if condition is false
   }
   ```
- **Switch**:
   ```cpp
   switch (variable) {
       case value1:
           // Code to execute
           break;
       case value2:
           // Code to execute
           break;
       default:
           // Code to execute
   }
   ```

### 3.2 Loops
- **For Loop**:
   ```cpp
   for (int i = 0; i < 10; i++) {
       std::cout << i << std::endl;
   }
   ```
- **While Loop**:
   ```cpp
   int i = 0;
   while (i < 10) {
       std::cout << i << std::endl;
       i++;
   }
   ```
- **Do-While Loop**:
   ```cpp
   int i = 0;
   do {
       std::cout << i << std::endl;
       i++;
   } while (i < 10);
   ```

---

## Chapter 4: Functions in C++

### 4.1 Function Basics
- **Syntax**:
   ```cpp
   returnType functionName(parameters) {
       // Code
       return value;
   }
   ```
- **Example**:
   ```cpp
   int add(int a, int b) {
       return a + b;
   }

   int main() {
       std::cout << "Sum: " << add(5, 3) << std::endl;
       return 0;
   }
   ```

### 4.2 Function Overloading
- Functions with the same name but different parameters.
- **Example**:
   ```cpp
   int add(int a, int b) {
       return a + b;
   }

   double add(double a, double b) {
       return a + b;
   }
   ```

---

## Chapter 5: Object-Oriented Programming

### 5.1 Classes and Objects
- **Defining a Class**:
   ```cpp
   class Car {
   public:
       string brand;
       int year;

       void display() {
           std::cout << brand << " - " << year << std::endl;
       }
   };
   ```
- **Using Objects**:
   ```cpp
   int main() {
       Car car1;
       car1.brand = "Toyota";
       car1.year = 2020;
       car1.display();
       return 0;
   }
   ```

### 5.2 Inheritance
- **Example**:
   ```cpp
   class Vehicle {
   public:
       string brand;
       void honk() {
           std::cout << "Beep! Beep!" << std::endl;
       }
   };

   class Car : public Vehicle {
   public:
       int year;
   };

   int main() {
       Car myCar;
       myCar.brand = "Ford";
       myCar.year = 2018;
       myCar.honk();
       return 0;
   }
   ```

---

## Chapter 6: Advanced Topics

### 6.1 Pointers
- **Definition**: A pointer stores the memory address of a variable.
- **Example**:
   ```cpp
   int var = 5;
   int *ptr = &var;
   std::cout << "Value: " << *ptr << std::endl; // Dereferencing the pointer
   ```

### 6.2 Templates
- **Definition**: Templates enable generic programming.
- **Example**:
   ```cpp
   template <typename T>
   T add(T a, T b) {
       return a + b;
   }

   int main() {
       std::cout << "Sum: " << add<int>(5, 3) << std::endl;
       return 0;
   }
   ```

### 6.3 Structs
- **Definition**: A `struct` groups related variables under one name.
- **Example**:
   ```cpp
   struct Person {
       string name;
       int age;
       float height;
   };

   int main() {
       Person person1;
       person1.name = "John";
       person1.age = 30;
       person1.height = 5.9;

       std::cout << "Name: " << person1.name << ", Age: " << person1.age << ", Height: " << person1.height << std::endl;
       return 0;
   }
   ```

### 6.4 Unions
- **Definition**: A `union` allows storing different data types in the same memory location (only one member can hold a value at a time).
- **Example**:
   ```cpp
   union Data {
       int intValue;
       float floatValue;
       char charValue;
   };

   int main() {
       Data data;
       data.intValue = 5;
       std::cout << "Int Value: " << data.intValue << std::endl;

       data.floatValue = 3.14;
       std::cout << "Float Value: " << data.floatValue << std::endl;

       data.charValue = 'A';
       std::cout << "Char Value: " << data.charValue << std::endl;

       return 0;
   }
   ```

---

## Conclusion
**Here are some C++ code examples to illustrate the concepts discussed:**

**Basic Level:**

1. **Simple `for` loop:**
   ```cpp
   #include <iostream>

   int main() {
       for (int i = 0; i < 5; i++) {
           std::cout << "Hello, world!" << std::endl;
       }
       return 0;
   }
   ```

2. **Array declaration and initialization:**
   ```cpp
   #include <iostream>

   int main() {
       int numbers[5] = {10, 20, 30, 40, 50};
       for (int i = 0; i < 5; i++) {
           std::cout << numbers[i] << " ";
       }
       std::cout << std::endl;
       return 0;
   }
   ```

3. **Pointer usage:**
   ```cpp
   #include <iostream>

   int main() {
       int x = 10;
       int *ptr = &x;
       std::cout << "Value of x: " << x << std::endl;
       std::cout << "Address of x: " << &x << std::endl;
       std::cout << "Value of ptr: " << ptr << std::endl;
       std::cout << "Value pointed to by ptr: " << *ptr << std::endl;
       return 0;
   }
   ```

**Intermediate Level:**

4. **Pass by reference:**
   ```cpp
   #include <iostream>

   void increment(int &num) {
       num++;
   }

   int main() {
       int a = 10;
       increment(a);
       std::cout << "Value of a after increment: " << a << std::endl;
       return 0;
   }
   ```

5. **Simple class:**
   ```cpp
   #include <iostream>

   class Person {
   public:
       std::string name;
       int age;

       void introduce() {
           std::cout << "Hello, my name is " << name << " and I am " << age << " years old." << std::endl;
       }
   };

   int main() {
       Person person1;
       person1.name = "Alice";
       person1.age = 30;
       person1.introduce();
       return 0;
   }
   ```

6. **Function template:**
   ```cpp
   #include <iostream>

   template <typename T>
   T maximum(T x, T y) {
       return (x > y) ? x : y;
   }

   int main() {
       int a = 10, b = 20;
       double c = 3.14, d = 2.718;
       std::cout << "Maximum of " << a << " and " << b << " is " << maximum(a, b) << std::endl;
       std::cout << "Maximum of " << c << " and " << d << " is " << maximum(c, d) << std::endl;
       return 0;
   }
   ```

**Advanced Level:**

7. **Stack implementation:**
   ```cpp
   #include <iostream>

   class Stack {
   private:
       int top;
       int capacity;
       int *array;

   public:
       Stack(int size) {
           capacity = size;
           array = new int[capacity];
           top = -1;
       }

       bool isFull() {
           return top == capacity - 1;
       }

       bool isEmpty() {
           return top == -1;
       }

       void push(int x) {
           if (isFull()) {
               std::cout << "Stack Overflow" << std::endl;
               return;
           }
           array[++top] = x;
       }

       int pop() {
           if (isEmpty()) {
               std::cout << "Stack Underflow" << std::endl;
               return -1;
           }
           return array[top--];
       }

       int peek() {
           if (isEmpty()) {
               std::cout << "Stack is Empty" << std::endl;
               return -1;
           }
           return array[top];
       }
   };

   int main() {
       Stack s(100);
       s.push(10);
       s.push(20);
       s.push(30);
       std::cout << s.pop() << " Popped from stack\n";
       std::cout << "Top element is " << s.peek() << std::endl;
       return 0;
   }
   ```

**I can provide more examples based on specific topics or requirements. Just let me know!**


Object-Oriented Programming (OOP) in C++ encompasses several key concepts with practical code examples:

## 1. Classes and Objects
Classes are blueprints for creating objects, defining attributes and methods.

```cpp
class Student {
public:
    string name;
    int roll_no;
    int marks;

    void setData(string name, int roll_no, int marks) {
        this->name = name;
        this->roll_no = roll_no;
        this->marks = marks;
    }

    void printData() {
        cout << "Name: " << name << ", Roll No: " << roll_no 
             << ", Marks: " << marks << endl;
    }
};

int main() {
    Student s1;
    s1.setData("Guneet", 2, 95);
    s1.printData();
}
```

## 2. Inheritance
Inheritance allows creating new classes based on existing classes, promoting code reuse.

```cpp
class Vehicle {
public:
    string brand;
    void show_brand() {
        cout << "Brand: " << brand << endl;
    }
};

class Car : public Vehicle {
public:
    string model;
    void show_model() {
        cout << "Model: " << model << endl;
    }
};

int main() {
    Car my_car;
    my_car.brand = "Honda";
    my_car.model = "Accord";
    my_car.show_brand();
    my_car.show_model();
}
```

## 3. Polymorphism
Polymorphism allows methods to behave differently based on the object's type.

```cpp
class Shape {
public:
    virtual double calculateArea() = 0;
};

class Rectangle : public Shape {
private:
    double width, height;
public:
    Rectangle(double w, double h) : width(w), height(h) {}
    double calculateArea() override {
        return width * height;
    }
};

class Circle : public Shape {
private:
    double radius;
public:
    Circle(double r) : radius(r) {}
    double calculateArea() override {
        return 3.14 * radius * radius;
    }
};
```

## 4. Encapsulation
Encapsulation involves protecting data and providing controlled access.

```cpp
class BankAccount {
private:
    double balance;

public:
    void deposit(double amount) {
        if (amount > 0) {
            balance += amount;
        }
    }

    double getBalance() {
        return balance;
    }
};
```

## 5. Operator Overloading
Operator overloading allows defining custom behaviors for operators.

```cpp
class Vector {
private:
    int x, y;
public:
    Vector(int x_val, int y_val) : x(x_val), y(y_val) {}

    Vector operator+(const Vector& other) {
        return Vector(x + other.x, y + other.y);
    }

    void display() {
        cout << "X: " << x << ", Y: " << y << endl;
    }
};

int main() {
    Vector v1(3, 4);
    Vector v2(1, 2);
    Vector sum = v1 + v2;
    sum.display();
}
```
## new bill example for oops

```cpp
#include <iostream>
#include <string>
using namespace std;

// Base class representing a generic bank account
class BankAccount {
protected:
    // Private member variables to store account details
    string accountHolder;   // Name of the account holder
    double balance;         // Current account balance
    string accountType;     // Type of bank account

public:
    // Parameterized constructor to initialize account details
    // @param name: Account holder's name
    // @param type: Type of account
    // @param initialBalance: Starting balance of the account
    BankAccount(string name, string type, double initialBalance) {
        accountHolder = name;
        accountType = type;
        balance = initialBalance;
    }

    // Getter method to retrieve current account balance
    // @return Current balance of the account
    double getBalance() const {
        return balance;
    }

    // Method to deposit money into the account
    // @param amount: Amount to be deposited
    void deposit(double amount) {
        // Validate deposit amount
        if (amount > 0) {
            balance += amount;
            cout << "Deposited: $" << amount << endl;
        } else {
            cout << "Invalid deposit amount!" << endl;
        }
    }

    // Method to withdraw money from the account
    // @param amount: Amount to be withdrawn
    void withdraw(double amount) {
        // Check if withdrawal is possible
        if (amount > 0 && amount <= balance) {
            balance -= amount;
            cout << "Withdrawn: $" << amount << endl;
        } else {
            cout << "Insufficient funds or invalid withdrawal amount!" << endl;
        }
    }

    // Virtual method to display account information
    // Can be overridden by derived classes
    virtual void displayAccountInfo() {
        cout << "--- Account Information ---" << endl;
        cout << "Account Holder: " << accountHolder << endl;
        cout << "Account Type: " << accountType << endl;
        cout << "Current Balance: $" << balance << endl;
    }
};

// Derived class representing a Savings Account
// Inherits from BankAccount base class
class SavingsAccount : public BankAccount {
private:
    double interestRate;  // Interest rate for the savings account

public:
    // Parameterized constructor for Savings Account
    // @param name: Account holder's name
    // @param initialBalance: Starting balance
    // @param rate: Interest rate for the account
    SavingsAccount(string name, double initialBalance, double rate) 
        : BankAccount(name, "Savings", initialBalance), interestRate(rate) {}

    // Overridden method to display savings account information
    // Calls base class method and adds interest rate details
    void displayAccountInfo() override {
        // Call base class display method
        BankAccount::displayAccountInfo();
        
        // Display additional savings account information
        cout << "Interest Rate: " << interestRate << "%" << endl;
    }

    // Method to apply interest to the savings account
    void applyInterest() {
        // Calculate interest based on current balance and interest rate
        double interest = getBalance() * (interestRate / 100);
        
        // Deposit calculated interest
        deposit(interest);
        
        // Provide feedback about interest application
        cout << "Interest Applied: $" << interest << endl;
    }
};

// Main function to demonstrate bank account functionality
int main() {
    // Create a savings account for a customer
    SavingsAccount customerAccount("John Doe", 1000.0, 5.0);
    
    // Demonstrate various account operations
    cout << "Initial Account Setup:" << endl;
    customerAccount.displayAccountInfo();

    // Deposit money into the account
    cout << "\nDeposit Operation:" << endl;
    customerAccount.deposit(500);

    // Withdraw money from the account
    cout << "\nWithdrawal Operation:" << endl;
    customerAccount.withdraw(200);

    // Apply interest to the savings account
    cout << "\nInterest Application:" << endl;
    customerAccount.applyInterest();

    // Display final account information
    cout << "\nFinal Account Status:" << endl;
    customerAccount.displayAccountInfo();

    return 0;
}

```
