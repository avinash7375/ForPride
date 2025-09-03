# Java Basics and Object-Oriented Programming Tutorial

## Table of Contents
1. [History and Features of Java](#history-and-features)
2. [JVM, JDK, and JRE](#jvm-jdk-jre)
3. [Java Program Structure](#program-structure)
4. [Tokens and Data Types](#tokens-data-types)
5. [Operators](#operators)
6. [OOP Principles](#oop-principles)
7. [Class and Object](#class-object)
8. [Constructors and `this` keyword](#constructors-this)
9. [`static` keyword](#static-keyword)
10. [Inheritance](#inheritance)
11. [Polymorphism](#polymorphism)
12. [Abstraction](#abstraction)
13. [Encapsulation](#encapsulation)
14. [Abstract Classes](#abstract-classes)
15. [Interfaces](#interfaces)
16. [Inner Classes](#inner-classes)
17. [`super` keyword](#super-keyword)
18. [Anonymous Classes](#anonymous-classes)

---

## <a name="history-and-features"></a>1. History and Features of Java

**History:**
- Developed by James Gosling at Sun Microsystems (now owned by Oracle) in 1995
- Originally called "Oak," later renamed to Java
- "Write Once, Run Anywhere" (WORA) philosophy

**Key Features:**
- **Platform Independent**: Compiled code (bytecode) runs on any device with JVM
- **Object-Oriented**: Follows OOP principles
- **Simple**: Easy to learn (syntax similar to C/C++)
- **Secure**: No explicit pointers, bytecode verification
- **Robust**: Exception handling, garbage collection
- **Multithreaded**: Supports concurrent programming
- **High Performance**: Just-In-Time (JIT) compiler

## <a name="jvm-jdk-jre"></a>2. JVM, JDK, and JRE

- **JVM (Java Virtual Machine)**: Executes bytecode, provides runtime environment
- **JRE (Java Runtime Environment)**: JVM + libraries to run Java programs
- **JDK (Java Development Kit)**: JRE + development tools (compiler, debugger, etc.)

```
Source Code (.java) → Compiler → Bytecode (.class) → JVM → Machine Code
```

## <a name="program-structure"></a>3. Java Program Structure

```java
// Class declaration
public class HelloWorld {
    
    // Main method - program entry point
    public static void main(String[] args) {
        // Statement
        System.out.println("Hello, World!");
    }
}
```

## <a name="tokens-data-types"></a>4. Tokens and Data Types

**Tokens**: Smallest elements of a program
- Keywords (`class`, `public`, `static`, etc.)
- Identifiers (class names, variable names)
- Literals (values like 10, "hello")
- Operators (`+`, `-`, `*`, etc.)
- Separators (`;`, `,`, `.`, etc.)

**Data Types:**
- **Primitive Types**:
  - `byte`, `short`, `int`, `long` (integer types)
  - `float`, `double` (floating-point types)
  - `char` (single character)
  - `boolean` (true/false)

- **Reference Types**:
  - Classes, interfaces, arrays

```java
int age = 25;
double salary = 50000.50;
char grade = 'A';
boolean isJavaFun = true;
String name = "John"; // String is a class, not primitive
```

## <a name="operators"></a>5. Operators

```java
// Arithmetic
int result = 10 + 5; // +, -, *, /, %

// Relational
boolean isEqual = (5 == 5); // ==, !=, <, >, <=, >=

// Logical
boolean logicalAnd = (true && false); // &&, ||, !

// Assignment
int x = 10; // =, +=, -=, *=, /=

// Ternary
int max = (a > b) ? a : b;
```

## <a name="oop-principles"></a>6. OOP Principles

Four main principles:
1. **Encapsulation**: Bundling data and methods that operate on that data
2. **Inheritance**: Creating new classes from existing ones
3. **Polymorphism**: One interface, multiple implementations
4. **Abstraction**: Hiding complex implementation details

## <a name="class-object"></a>7. Class and Object

**Class**: Blueprint/template for objects
**Object**: Instance of a class

```java
// Class definition
public class Car {
    // Fields (attributes)
    String color;
    String model;
    int year;
    
    // Method (behavior)
    void start() {
        System.out.println("Car started");
    }
}

// Creating objects
public class Main {
    public static void main(String[] args) {
        Car myCar = new Car(); // Object creation
        myCar.color = "Red";
        myCar.start();
    }
}
```

## <a name="constructors-this"></a>8. Constructors and `this` keyword

**Constructor**: Special method to initialize objects

```java
public class Car {
    String color;
    String model;
    
    // Default constructor
    public Car() {
        this.color = "Unknown";
        this.model = "Unknown";
    }
    
    // Parameterized constructor
    public Car(String color, String model) {
        this.color = color; // 'this' refers to current object
        this.model = model;
    }
    
    // Method using this
    public void setColor(String color) {
        this.color = color; // Distinguish parameter from field
    }
}
```

## <a name="static-keyword"></a>9. `static` keyword

`static` members belong to the class rather than objects

```java
public class Counter {
    static int count = 0; // Class variable
    
    Counter() {
        count++; // Incremented for each object creation
    }
    
    static void displayCount() { // Class method
        System.out.println("Total objects: " + count);
    }
}

// Usage
public class Main {
    public static void main(String[] args) {
        new Counter();
        new Counter();
        Counter.displayCount(); // Output: Total objects: 2
    }
}
```

## <a name="inheritance"></a>10. Inheritance

Creating a new class from an existing class

```java
// Base class (parent)
class Vehicle {
    String brand;
    
    void honk() {
        System.out.println("Beep beep!");
    }
}

// Derived class (child)
class Car extends Vehicle { // 'extends' keyword
    String model;
    
    void display() {
        System.out.println(brand + " " + model);
    }
}

// Usage
public class Main {
    public static void main(String[] args) {
        Car myCar = new Car();
        myCar.brand = "Toyota"; // Inherited field
        myCar.model = "Camry";
        myCar.honk(); // Inherited method
        myCar.display();
    }
}
```

## <a name="polymorphism"></a>11. Polymorphism

**Compile-time Polymorphism (Method Overloading):**
```java
class MathOperations {
    // Same method name, different parameters
    int add(int a, int b) {
        return a + b;
    }
    
    double add(double a, double b) {
        return a + b;
    }
    
    int add(int a, int b, int c) {
        return a + b + c;
    }
}
```

**Runtime Polymorphism (Method Overriding):**
```java
class Animal {
    void makeSound() {
        System.out.println("Animal makes a sound");
    }
}

class Dog extends Animal {
    @Override // Annotation (optional but recommended)
    void makeSound() {
        System.out.println("Dog barks");
    }
}

class Cat extends Animal {
    @Override
    void makeSound() {
        System.out.println("Cat meows");
    }
}

// Usage
public class Main {
    public static void main(String[] args) {
        Animal myAnimal = new Animal();
        Animal myDog = new Dog(); // Upcasting
        Animal myCat = new Cat(); // Upcasting
        
        myAnimal.makeSound(); // Animal makes a sound
        myDog.makeSound();    // Dog barks (runtime polymorphism)
        myCat.makeSound();    // Cat meows (runtime polymorphism)
    }
}
```

## <a name="abstraction"></a>12. Abstraction

Hiding implementation details and showing only functionality

```java
// Using abstract class
abstract class Shape {
    abstract double area(); // Abstract method (no implementation)
    
    void display() { // Concrete method
        System.out.println("This is a shape");
    }
}

class Circle extends Shape {
    double radius;
    
    Circle(double radius) {
        this.radius = radius;
    }
    
    @Override
    double area() { // Must implement abstract method
        return Math.PI * radius * radius;
    }
}
```

## <a name="encapsulation"></a>13. Encapsulation

Bundling data and methods, controlling access

```java
public class BankAccount {
    // Private fields (data hiding)
    private double balance;
    private String accountNumber;
    
    // Public methods to access private fields
    public double getBalance() {
        return balance;
    }
    
    public void deposit(double amount) {
        if (amount > 0) {
            balance += amount;
        }
    }
    
    public void withdraw(double amount) {
        if (amount > 0 && amount <= balance) {
            balance -= amount;
        }
    }
}
```

## <a name="abstract-classes"></a>14. Abstract Classes

Cannot be instantiated, can have abstract and concrete methods

```java
abstract class Animal {
    // Abstract method (must be implemented by subclasses)
    abstract void makeSound();
    
    // Concrete method
    void sleep() {
        System.out.println("Sleeping...");
    }
}

class Dog extends Animal {
    @Override
    void makeSound() {
        System.out.println("Bark");
    }
}

// Cannot do: Animal animal = new Animal(); - ERROR
```

## <a name="interfaces"></a>15. Interfaces

Blueprint of a class (100% abstraction before Java 8)

```java
// Interface definition
interface Drawable {
    void draw(); // Abstract method (public by default)
    
    // Default method (Java 8+)
    default void display() {
        System.out.println("Displaying drawable");
    }
    
    // Static method (Java 8+)
    static void printInfo() {
        System.out.println("This is a drawable interface");
    }
}

// Implementing interface
class Circle implements Drawable {
    @Override
    public void draw() {
        System.out.println("Drawing circle");
    }
}

// Multiple inheritance through interfaces
interface Readable {
    void read();
}

interface Writable {
    void write();
}

class File implements Readable, Writable { // Multiple interfaces
    @Override
    public void read() {
        System.out.println("Reading file");
    }
    
    @Override
    public void write() {
        System.out.println("Writing file");
    }
}
```

## <a name="inner-classes"></a>16. Inner Classes

Class within another class

```java
class Outer {
    private int x = 10;
    
    // Member inner class
    class Inner {
        void display() {
            System.out.println("x = " + x); // Can access outer class members
        }
    }
    
    // Static nested class
    static class StaticNested {
        void display() {
            // Cannot access non-static members of Outer class
            System.out.println("Static nested class");
        }
    }
    
    void method() {
        // Local inner class
        class Local {
            void display() {
                System.out.println("Local inner class");
            }
        }
        
        Local local = new Local();
        local.display();
    }
}

// Usage
public class Main {
    public static void main(String[] args) {
        Outer outer = new Outer();
        Outer.Inner inner = outer.new Inner();
        inner.display();
        
        Outer.StaticNested staticNested = new Outer.StaticNested();
        staticNested.display();
        
        outer.method();
    }
}
```

## <a name="super-keyword"></a>17. `super` keyword

Refers to parent class

```java
class Animal {
    String name;
    
    Animal(String name) {
        this.name = name;
    }
    
    void eat() {
        System.out.println(name + " is eating");
    }
}

class Dog extends Animal {
    String breed;
    
    Dog(String name, String breed) {
        super(name); // Call parent constructor
        this.breed = breed;
    }
    
    @Override
    void eat() {
        super.eat(); // Call parent method
        System.out.println("Dog is eating specially");
    }
    
    void display() {
        System.out.println("Name: " + super.name + ", Breed: " + breed);
    }
}
```

## <a name="anonymous-classes"></a>18. Anonymous Classes

Class without a name, declared and instantiated at the same time

```java
interface Greeting {
    void greet();
}

public class Main {
    public static void main(String[] args) {
        // Anonymous class implementing interface
        Greeting greeting = new Greeting() {
            @Override
            public void greet() {
                System.out.println("Hello from anonymous class!");
            }
        };
        
        greeting.greet();
        
        // Anonymous class extending class
        Thread thread = new Thread() {
            @Override
            public void run() {
                System.out.println("Thread running from anonymous class");
            }
        };
        
        thread.start();
        
        // Using lambda expression (Java 8+) for functional interfaces
        Greeting lambdaGreeting = () -> System.out.println("Hello from lambda!");
        lambdaGreeting.greet();
    }
}
```

## Summary

This tutorial covered the fundamentals of Java programming and Object-Oriented Programming concepts. Java's strength lies in its platform independence, robustness, and strong OOP support. Practice these concepts by building small projects to solidify your understanding.

Remember:
- Use appropriate access modifiers for encapsulation
- Favor composition over inheritance when possible
- Use interfaces for multiple inheritance needs
- Follow Java naming conventions
- Always override `equals()`, `hashCode()`, and `toString()` when needed

Happy coding!
