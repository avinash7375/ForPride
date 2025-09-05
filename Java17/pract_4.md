Lab Practice Questions with Code Examples

1. Class and Object Basics

Problem: Create a BankAccount class demonstrating encapsulation.

```java
public class BankAccount {
    private String accountNumber;
    private double balance;

    public BankAccount(String accountNumber, double initialBalance) {
        this.accountNumber = accountNumber;
        this.balance = initialBalance;
    }

    public void deposit(double amount) {
        if (amount > 0) balance += amount;
    }

    public void withdraw(double amount) {
        if (amount > 0 && amount <= balance) balance -= amount;
    }

    public double getBalance() {
        return balance;
    }

    public void displayDetails() {
        System.out.println("Account: " + accountNumber + " | Balance: $" + balance);
    }
}

// Usage
public class Main {
    public static void main(String[] args) {
        BankAccount acc = new BankAccount("123456", 1000);
        acc.deposit(500);
        acc.withdraw(200);
        acc.displayDetails(); // Account: 123456 | Balance: $1300.0
    }
}
```

2. Inheritance Hierarchy

Problem: Create a vehicle inheritance hierarchy.

```java
class Vehicle {
    protected double maxSpeed;
    protected String fuelType;

    public Vehicle(double maxSpeed, String fuelType) {
        this.maxSpeed = maxSpeed;
        this.fuelType = fuelType;
    }

    public void displayDetails() {
        System.out.println("Max Speed: " + maxSpeed + " | Fuel: " + fuelType);
    }
}

class Car extends Vehicle {
    private int numDoors;

    public Car(double maxSpeed, String fuelType, int numDoors) {
        super(maxSpeed, fuelType);
        this.numDoors = numDoors;
    }

    @Override
    public void displayDetails() {
        super.displayDetails();
        System.out.println("Doors: " + numDoors);
    }
}

// Usage
Car car = new Car(120, "Petrol", 4);
car.displayDetails();
```

3. Interface Implementation

Problem: Implement a Drawable interface.

```java
interface Drawable {
    void draw();
    default void resize() { System.out.println("Resizing..."); }
}

class Circle implements Drawable {
    @Override
    public void draw() { System.out.println("Drawing a circle"); }
}

// Usage
Drawable circle = new Circle();
circle.draw();
circle.resize();
```

4. Polymorphism with Interfaces

Problem: Implement payment gateways using interfaces.

```java
interface PaymentGateway {
    void processPayment(double amount);
    void refundPayment(double amount);
}

class PayPal implements PaymentGateway {
    @Override
    public void processPayment(double amount) {
        System.out.println("Processing PayPal payment: $" + amount);
    }

    @Override
    public void refundPayment(double amount) {
        System.out.println("Refunding PayPal payment: $" + amount);
    }
}

// Usage
PaymentGateway gateway = new PayPal();
gateway.processPayment(100);
```

5. Abstract Class and Inheritance

Problem: Create an abstract Employee class.

```java
abstract class Employee {
    protected String name;
    protected double salary;

    public Employee(String name, double salary) {
        this.name = name;
        this.salary = salary;
    }

    public abstract double calculateBonus();
}

class Manager extends Employee {
    public Manager(String name, double salary) {
        super(name, salary);
    }

    @Override
    public double calculateBonus() {
        return salary * 0.2;
    }
}

// Usage
Employee mgr = new Manager("Alice", 50000);
System.out.println("Bonus: $" + mgr.calculateBonus());
```

6. Composition vs Inheritance

Problem: Implement a Library using composition.

```java
import java.util.ArrayList;
import java.util.List;

class Book {
    private String title;
    public Book(String title) { this.title = title; }
    public String getTitle() { return title; }
}

class Library {
    private List<Book> books = new ArrayList<>();

    public void addBook(Book book) { books.add(book); }
    public void listBooks() {
        for (Book book : books) System.out.println(book.getTitle());
    }
}

// Usage
Library lib = new Library();
lib.addBook(new Book("Java 17 Guide"));
lib.listBooks();
```

7. Sealed Classes (Java 17)

Problem: Use sealed classes for shapes.

```java
sealed interface Shape permits Circle, Rectangle {
    double getArea();
}

final class Circle implements Shape {
    private double radius;
    public Circle(double radius) { this.radius = radius; }
    @Override
    public double getArea() { return Math.PI * radius * radius; }
}

final class Rectangle implements Shape {
    private double width, height;
    public Rectangle(double w, double h) { width = w; height = h; }
    @Override
    public double getArea() { return width * height; }
}

// Usage
Shape circle = new Circle(5);
System.out.println("Circle area: " + circle.getArea());
```

8. Interface Inheritance

Problem: Implement multiple interfaces.

```java
interface Flyable { void fly(); }
interface Swimmable { void swim(); }

class Duck implements Flyable, Swimmable {
    @Override
    public void fly() { System.out.println("Duck flying"); }
    @Override
    public void swim() { System.out.println("Duck swimming"); }
}

// Usage
Duck duck = new Duck();
duck.fly();
duck.swim();
```

9. Object Class Overrides

Problem: Override equals and toString in a Student class.

```java
import java.util.Objects;

class Student {
    private String id;
    public Student(String id) { this.id = id; }

    @Override
    public boolean equals(Object o) {
        if (this == o) return true;
        if (o == null || getClass() != o.getClass()) return false;
        Student student = (Student) o;
        return Objects.equals(id, student.id);
    }

    @Override
    public int hashCode() { return Objects.hash(id); }

    @Override
    public String toString() { return "Student ID: " + id; }
}

// Usage
Student s1 = new Student("S123");
Student s2 = new Student("S123");
System.out.println(s1.equals(s2)); // true
System.out.println(s1); // Student ID: S123
```

10. Dependency Injection with Interfaces

Problem: Implement dependency injection for notifications.

```java
interface NotificationService {
    void sendAlert(String message);
}

class EmailAlert implements NotificationService {
    @Override
    public void sendAlert(String message) {
        System.out.println("Email sent: " + message);
    }
}

class User {
    private NotificationService service;
    public User(NotificationService service) { this.service = service; }
    public void receiveAlert(String msg) { service.sendAlert(msg); }
}

// Usage
User user = new User(new EmailAlert());
user.receiveAlert("Hello via email");
```

These examples cover key OOP concepts in Java 17. Experiment with each concept by modifying parameters, adding new methods, or combining multiple concepts in larger projects!
