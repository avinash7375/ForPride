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
This tutorial introduces the fundamental concepts of C++ programming for general purposes. Practice writing and executing programs to reinforce your understanding. As you progress, explore more advanced topics like multithreading, file handling, and STL (Standard Template Library).

