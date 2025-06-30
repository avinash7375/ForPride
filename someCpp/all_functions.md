### ✅ **1. Basic Function Syntax**

**Q:** Write a function to print a welcome message.

```cpp
#include <iostream>
using namespace std;

void welcome() {
    cout << "Welcome to C++ Functions!" << endl;
}

int main() {
    welcome();
    return 0;
}
```

🧠 *Concept:* Basic function declaration and calling.

---

### ✅ **2. Function with Parameters**

**Q:** Write a function that adds two numbers.

```cpp
#include <iostream>
using namespace std;

void add(int a, int b) {
    cout << "Sum: " << a + b << endl;
}

int main() {
    add(5, 10);
    return 0;
}
```

🧠 *Concept:* Parameters and arguments.

---

### ✅ **3. Function with Return Value**

**Q:** Write a function to calculate the square of a number.

```cpp
#include <iostream>
using namespace std;

int square(int n) {
    return n * n;
}

int main() {
    int result = square(4);
    cout << "Square: " << result << endl;
}
```

🧠 *Concept:* Returning values from functions.

---

### ✅ **4. Function Overloading**

**Q:** Create overloaded functions to multiply integers and floats.

```cpp
#include <iostream>
using namespace std;

int multiply(int a, int b) {
    return a * b;
}

float multiply(float a, float b) {
    return a * b;
}

int main() {
    cout << multiply(3, 4) << endl;
    cout << multiply(2.5f, 4.2f) << endl;
}
```

🧠 *Concept:* Function overloading by data types.

---

### ✅ **5. Default Arguments**

**Q:** Write a function to greet a user with a default name.

```cpp
#include <iostream>
using namespace std;

void greet(string name = "User") {
    cout << "Hello, " << name << "!" << endl;
}

int main() {
    greet();
    greet("Avinash");
}
```

🧠 *Concept:* Default parameter values.

---

### ✅ **6. Call by Value**

**Q:** Demonstrate how values are not changed when passed by value.

```cpp
#include <iostream>
using namespace std;

void change(int x) {
    x = 100;
}

int main() {
    int num = 50;
    change(num);
    cout << "Number: " << num << endl;
}
```

🧠 *Concept:* Call by value does not modify original.

---

### ✅ **7. Call by Reference**

**Q:** Modify a variable using reference.

```cpp
#include <iostream>
using namespace std;

void modify(int &x) {
    x = 100;
}

int main() {
    int num = 50;
    modify(num);
    cout << "Number: " << num << endl;
}
```

🧠 *Concept:* Reference modifies original variable.

---

### ✅ **8. Inline Function**

**Q:** Write an inline function to calculate cube of a number.

```cpp
#include <iostream>
using namespace std;

inline int cube(int x) {
    return x * x * x;
}

int main() {
    cout << "Cube: " << cube(3) << endl;
}
```

🧠 *Concept:* Inline function for performance.

---

### ✅ **9. Recursion**

**Q:** Write a recursive function to calculate factorial.

```cpp
#include <iostream>
using namespace std;

int factorial(int n) {
    if(n <= 1) return 1;
    return n * factorial(n - 1);
}

int main() {
    cout << "Factorial: " << factorial(5) << endl;
}
```

🧠 *Concept:* Function calling itself.

---

### ✅ **10. Function Prototypes**

**Q:** Use a function declared after `main()` with a prototype.

```cpp
#include <iostream>
using namespace std;

void show(); // Function prototype

int main() {
    show();
    return 0;
}

void show() {
    cout << "This is a function defined after main." << endl;
}
