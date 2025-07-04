Here are **10 C++ questions with codes** on **templates** and their different **use cases**, covering **function templates, class templates, specialization, non-type parameters, variadic templates**, and more:

---

### 1. **Basic Function Template**

👉 **Question:** Write a function template to find the maximum of two values.

```cpp
#include <iostream>
using namespace std;

template <typename T>
T maximum(T a, T b) {
    return (a > b) ? a : b;
}

int main() {
    cout << maximum(5, 10) << endl;       // int
    cout << maximum(5.5, 2.3) << endl;    // double
    cout << maximum('a', 'z') << endl;    // char
    return 0;
}
```

---

### 2. **Basic Class Template**

👉 **Question:** Create a class template for a simple generic `Pair` class.

```cpp
#include <iostream>
using namespace std;

template <typename T>
class Pair {
    T first, second;
public:
    Pair(T a, T b) : first(a), second(b) {}
    T getMax() {
        return (first > second) ? first : second;
    }
};

int main() {
    Pair<int> p(3, 5);
    cout << p.getMax() << endl;
    return 0;
}
```

---

### 3. **Template with Multiple Types**

👉 **Question:** Write a class template that accepts two different types.

```cpp
#include <iostream>
using namespace std;

template <typename T1, typename T2>
class MyClass {
    T1 a;
    T2 b;
public:
    MyClass(T1 x, T2 y) : a(x), b(y) {}
    void display() {
        cout << a << " and " << b << endl;
    }
};

int main() {
    MyClass<int, string> obj(10, "Hello");
    obj.display();
    return 0;
}
```

---

### 4. **Template Specialization**

👉 **Question:** Implement template specialization for comparing C-style strings.

```cpp
#include <iostream>
#include <cstring>
using namespace std;

template <typename T>
bool isEqual(T a, T b) {
    return a == b;
}

template <>
bool isEqual<const char*>(const char* a, const char* b) {
    return strcmp(a, b) == 0;
}

int main() {
    cout << isEqual(5, 5) << endl;
    cout << isEqual("abc", "abc") << endl;
    return 0;
}
```

---

### 5. **Non-Type Template Parameter**

👉 **Question:** Create a class template with a non-type integer parameter.

```cpp
#include <iostream>
using namespace std;

template <typename T, int size>
class Array {
    T arr[size];
public:
    void set(int index, T value) {
        if(index < size) arr[index] = value;
    }
    T get(int index) {
        return (index < size) ? arr[index] : T();
    }
};

int main() {
    Array<int, 5> arr;
    arr.set(0, 100);
    cout << arr.get(0) << endl;
    return 0;
}
```

---

### 6. **Template with Default Type**

👉 **Question:** Implement a template with a default data type.

```cpp
#include <iostream>
using namespace std;

template <typename T = int>
class Box {
    T value;
public:
    Box(T v) : value(v) {}
    void show() { cout << value << endl; }
};

int main() {
    Box<> b1(10);      // uses default int
    Box<string> b2("Hi");
    b1.show();
    b2.show();
    return 0;
}
```

---

### 7. **Variadic Template Function**

👉 **Question:** Write a variadic template to sum any number of arguments.

```cpp
#include <iostream>
using namespace std;

template <typename T>
T sum(T val) {
    return val;
}

template <typename T, typename... Args>
T sum(T first, Args... args) {
    return first + sum(args...);
}

int main() {
    cout << sum(1, 2, 3, 4, 5) << endl;
    cout << sum(1.5, 2.5, 3.0) << endl;
    return 0;
}
```

---

### 8. **Class Template with Member Function Template**

👉 **Question:** Create a class template with a templated member function.

```cpp
#include <iostream>
using namespace std;

template <typename T>
class Printer {
public:
    template <typename U>
    void print(U value) {
        cout << value << endl;
    }
};

int main() {
    Printer<int> p;
    p.print(100);
    p.print("Hello");
    p.print(3.14);
    return 0;
}
```

---

### 9. **Recursive Template Metaprogramming (Factorial)**

👉 **Question:** Use templates to compute factorial at compile time.

```cpp
#include <iostream>
using namespace std;

template <int N>
struct Factorial {
    static const int value = N * Factorial<N - 1>::value;
};

template <>
struct Factorial<0> {
    static const int value = 1;
};

int main() {
    cout << Factorial<5>::value << endl;  // Outputs 120
    return 0;
}
```

---

### 10. **Template with Inheritance**

👉 **Question:** Create a base class template and a derived class using it.

```cpp
#include <iostream>
using namespace std;

template <typename T>
class Base {
public:
    void show(T val) {
        cout << "Base value: " << val << endl;
    }
};

class Derived : public Base<int> {};

int main() {
    Derived d;
    d.show(50);
    return 0;
}
```

---

✅ These examples cover:

* **Function Templates**
* **Class Templates**
* **Multiple Types**
* **Specialization**
* **Non-type Parameters**
* **Default Types**
* **Variadic Templates**
* **Member Function Templates**
* **Compile-time Metaprogramming**
* **Inheritance with Templates**

If you want, I can also give you **practice exercises** based on these.
