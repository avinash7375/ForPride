### **C++ Templates**

C++ templates are a powerful feature that allows you to write generic and reusable code. They enable you to define functions or classes that can operate with any data type, without having to rewrite the code for each specific type. Templates are a form of **compile-time polymorphism**.

There are two main types of templates in C++:
1. **Function Templates**
2. **Class Templates**

---

### **1. Function Templates**
A function template allows you to define a function that can work with any data type. The compiler generates the appropriate function for the specific type used when the function is called.

#### Syntax:
```cpp
template <typename T>
T functionName(T parameter1, T parameter2) {
    // Function implementation
}
```

#### Example:
```cpp
template <typename T>
T add(T a, T b) {
    return a + b;
}

int main() {
    cout << add(5, 10) << endl;       // Works with integers
    cout << add(3.5, 2.7) << endl;    // Works with doubles
    return 0;
}
```

---

### **2. Class Templates**
A class template allows you to define a class that can operate on any data type. This is particularly useful for creating generic data structures like vectors, stacks, queues, etc.

#### Syntax:
```cpp
template <typename T>
class ClassName {
    // Class members and methods using type T
};
```

#### Example:
```cpp
template <typename T>
class Box {
private:
    T value;
public:
    Box(T v) : value(v) {}
    T getValue() { return value; }
};

int main() {
    Box<int> intBox(123);
    Box<string> stringBox("Hello");

    cout << intBox.getValue() << endl;    // Output: 123
    cout << stringBox.getValue() << endl; // Output: Hello
    return 0;
}
```

---

### **Uses of Templates in Classes**

1. **Generic Data Structures**:
   Templates are widely used to create generic data structures like arrays, linked lists, stacks, queues, etc. For example, the C++ Standard Template Library (STL) provides template-based classes like `std::vector`, `std::list`, and `std::map`.

   ```cpp
   template <typename T>
   class Stack {
   private:
       vector<T> elements;
   public:
       void push(T const& elem) {
           elements.push_back(elem);
       }
       T pop() {
           T elem = elements.back();
           elements.pop_back();
           return elem;
       }
   };
   ```

2. **Reusable Code**:
   Templates allow you to write a single implementation of a class or function that can be used with multiple data types, reducing code duplication.

3. **Type Safety**:
   Templates provide type safety at compile time, ensuring that the correct data type is used.

4. **Customizable Behavior**:
   You can specialize templates for specific types to provide custom behavior. For example, you might want to handle `char*` differently from other types in a template class.

   ```cpp
   template <>
   class Box<char*> {
   private:
       char* value;
   public:
       Box(char* v) : value(v) {}
       char* getValue() { return value; }
   };
   ```

5. **Performance**:
   Since templates are resolved at compile time, they do not incur runtime overhead, unlike runtime polymorphism (e.g., virtual functions).

6. **STL Containers and Algorithms**:
   The C++ Standard Template Library (STL) heavily relies on templates to provide generic containers (e.g., `vector`, `list`, `map`) and algorithms (e.g., `sort`, `find`).

---

### **Advantages of Templates**
- **Code Reusability**: Write once, use with any type.
- **Type Safety**: Errors are caught at compile time.
- **Performance**: No runtime overhead.
- **Flexibility**: Works with user-defined types and built-in types.

---

### **Disadvantages of Templates**
- **Complex Syntax**: Templates can be difficult to read and write, especially for beginners.
- **Code Bloat**: Each instantiation of a template with a different type generates separate code, which can increase the size of the binary.
- **Debugging Challenges**: Error messages can be cryptic and hard to understand.

---

### **Conclusion**
C++ templates are a cornerstone of generic programming, enabling you to write flexible and reusable code. They are particularly useful in classes for creating generic data structures and algorithms. By leveraging templates, you can write efficient, type-safe, and maintainable code.