Sure! Here’s a **C++ tutorial** that covers the core topics up to **file handling**, with examples and explanations to help you understand each part. Let's go step by step:

---

## 🧠 **1. Introduction to C++**

C++ is a general-purpose, high-performance programming language. It supports both **procedural** and **object-oriented** programming.

### 🔧 Basic Structure:

```cpp
#include <iostream>
using namespace std;

int main() {
    cout << "Hello, World!";
    return 0;
}
```

---

## 🔢 **2. Variables & Data Types**

### 🔹 Common Data Types:

* `int` - Integer
* `float` - Floating point
* `char` - Character
* `bool` - Boolean
* `string` - Text (from `<string>`)

```cpp
#include <iostream>
#include <string>
using namespace std;

int main() {
    int age = 25;
    float height = 5.9;
    char grade = 'A';
    bool isStudent = true;
    string name = "Alice";

    cout << "Name: " << name << endl;
    return 0;
}
```

---

## ➕ **3. Operators**

### 🔹 Arithmetic: `+ - * / %`

### 🔹 Relational: `== != > < >= <=`

### 🔹 Logical: `&& || !`

---

## 🔁 **4. Control Statements**

### 🔹 if-else:

```cpp
if (age > 18) {
    cout << "Adult";
} else {
    cout << "Minor";
}
```

### 🔹 switch:

```cpp
switch(day) {
    case 1: cout << "Monday"; break;
    default: cout << "Other day";
}
```

---

## 🔄 **5. Loops**

### 🔹 for loop:

```cpp
for (int i = 0; i < 5; i++) {
    cout << i << " ";
}
```

### 🔹 while loop:

```cpp
int i = 0;
while (i < 5) {
    cout << i << " ";
    i++;
}
```

---

## 🎯 **6. Functions**

```cpp
int add(int a, int b) {
    return a + b;
}

int main() {
    cout << add(5, 3);
}
```

---

## 📚 **7. Arrays & Strings**

```cpp
int arr[3] = {10, 20, 30};

string greeting = "Hello";
cout << greeting.length();
```

---

## 🧱 **8. Object-Oriented Programming**

### 🔹 Class and Object:

```cpp
class Car {
public:
    string brand;
    int year;
    void start() {
        cout << "Engine started";
    }
};

int main() {
    Car c1;
    c1.brand = "Toyota";
    c1.year = 2022;
    c1.start();
}
```

---

## 🧵 **9. Inheritance**

```cpp
class Animal {
public:
    void sound() {
        cout << "Some sound";
    }
};

class Dog : public Animal {
public:
    void bark() {
        cout << "Bark!";
    }
};
```

---

## 📁 **10. File Handling**

### 🔹 Writing to a File:

```cpp
#include <iostream>
#include <fstream>
using namespace std;

int main() {
    ofstream myFile("example.txt");
    myFile << "Hello file!";
    myFile.close();
    return 0;
}
```

### 🔹 Reading from a File:

```cpp
#include <iostream>
#include <fstream>
#include <string>
using namespace std;

int main() {
    string line;
    ifstream myFile("example.txt");
    
    while (getline(myFile, line)) {
        cout << line << endl;
    }
    myFile.close();
    return 0;
}
```

---

### ✅ Summary of Topics Covered:

1. Basic syntax
2. Variables & data types
3. Operators
4. Control flow (if, switch)
5. Loops
6. Functions
7. Arrays and strings
8. OOP concepts
9. Inheritance
10. File handling

---

Would you like exercises, quizzes, or explanations on more advanced topics like **pointers**, **templates**, or **STL (Standard Template Library)** next?
