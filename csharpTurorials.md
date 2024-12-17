Here’s a **C# tutorial** covering core concepts and providing **20+ examples**. Each section introduces a new topic with an example.

---

# **C# Tutorial: Basics to Advanced with Examples**

### **1. Introduction to C#**
C# is a modern, object-oriented programming language developed by Microsoft. It’s widely used for desktop, web, and game development.

---

## **1. Hello World Program**
```csharp
using System;

class HelloWorld
{
    static void Main()
    {
        Console.WriteLine("Hello, World!");
    }
}
```

### Output:
```
Hello, World!
```

---

## **2. Variables and Data Types**
```csharp
using System;

class VariablesDemo
{
    static void Main()
    {
        int age = 25;
        double salary = 5000.50;
        char grade = 'A';
        string name = "John Doe";
        bool isActive = true;

        Console.WriteLine($"Name: {name}, Age: {age}, Grade: {grade}, Salary: {salary}, Active: {isActive}");
    }
}
```

---

## **3. User Input**
```csharp
using System;

class UserInput
{
    static void Main()
    {
        Console.Write("Enter your name: ");
        string name = Console.ReadLine();
        Console.WriteLine($"Hello, {name}!");
    }
}
```

---

## **4. Arithmetic Operations**
```csharp
using System;

class ArithmeticDemo
{
    static void Main()
    {
        int a = 10, b = 5;
        Console.WriteLine($"Addition: {a + b}");
        Console.WriteLine($"Subtraction: {a - b}");
        Console.WriteLine($"Multiplication: {a * b}");
        Console.WriteLine($"Division: {a / b}");
    }
}
```

---

## **5. Conditional Statements**
### If-Else:
```csharp
using System;

class Conditionals
{
    static void Main()
    {
        int num = 10;
        if (num > 0)
            Console.WriteLine("Positive Number");
        else
            Console.WriteLine("Negative Number");
    }
}
```

### Switch:
```csharp
using System;

class SwitchDemo
{
    static void Main()
    {
        int choice = 2;
        switch (choice)
        {
            case 1: Console.WriteLine("Option 1"); break;
            case 2: Console.WriteLine("Option 2"); break;
            default: Console.WriteLine("Invalid Option"); break;
        }
    }
}
```

---

## **6. Loops**
### For Loop:
```csharp
using System;

class ForLoop
{
    static void Main()
    {
        for (int i = 1; i <= 5; i++)
            Console.WriteLine($"Iteration: {i}");
    }
}
```

### While Loop:
```csharp
using System;

class WhileLoop
{
    static void Main()
    {
        int i = 1;
        while (i <= 5)
        {
            Console.WriteLine($"Iteration: {i}");
            i++;
        }
    }
}
```

---

## **7. Arrays**
```csharp
using System;

class ArrayDemo
{
    static void Main()
    {
        int[] numbers = { 1, 2, 3, 4, 5 };

        for (int i = 0; i < numbers.Length; i++)
            Console.WriteLine($"Element {i}: {numbers[i]}");
    }
}
```

---

## **8. Methods (Functions)**
```csharp
using System;

class MethodsDemo
{
    static int Add(int a, int b)
    {
        return a + b;
    }

    static void Main()
    {
        int result = Add(5, 3);
        Console.WriteLine($"Sum: {result}");
    }
}
```

---

## **9. Classes and Objects**
```csharp
using System;

class Car
{
    public string model;
    public void Display()
    {
        Console.WriteLine($"Car Model: {model}");
    }
}

class ObjectDemo
{
    static void Main()
    {
        Car car1 = new Car();
        car1.model = "Toyota";
        car1.Display();
    }
}
```

---

## **10. Constructor Example**
```csharp
using System;

class Person
{
    public string name;

    public Person(string name)
    {
        this.name = name;
    }

    public void Greet()
    {
        Console.WriteLine($"Hello, {name}");
    }
}

class ConstructorDemo
{
    static void Main()
    {
        Person p = new Person("John");
        p.Greet();
    }
}
```

---

## **11. Inheritance**
```csharp
using System;

class Animal
{
    public void Eat()
    {
        Console.WriteLine("Animal is eating");
    }
}

class Dog : Animal
{
    public void Bark()
    {
        Console.WriteLine("Dog is barking");
    }
}

class InheritanceDemo
{
    static void Main()
    {
        Dog d = new Dog();
        d.Eat();
        d.Bark();
    }
}
```

---

## **12. Polymorphism (Method Overriding)**
```csharp
using System;

class Animal
{
    public virtual void Sound()
    {
        Console.WriteLine("Animal sound");
    }
}

class Dog : Animal
{
    public override void Sound()
    {
        Console.WriteLine("Dog barks");
    }
}

class PolymorphismDemo
{
    static void Main()
    {
        Animal a = new Dog();
        a.Sound();
    }
}
```

---

## **13. Interface Example**
```csharp
using System;

interface IShape
{
    void Draw();
}

class Circle : IShape
{
    public void Draw()
    {
        Console.WriteLine("Drawing Circle");
    }
}

class InterfaceDemo
{
    static void Main()
    {
        IShape shape = new Circle();
        shape.Draw();
    }
}
```

---

## **14. Exception Handling**
```csharp
using System;

class ExceptionHandling
{
    static void Main()
    {
        try
        {
            int a = 10, b = 0;
            Console.WriteLine(a / b);
        }
        catch (DivideByZeroException ex)
        {
            Console.WriteLine("Error: Division by zero is not allowed.");
        }
    }
}
```

---

## **15. String Manipulation**
```csharp
using System;

class StringManipulation
{
    static void Main()
    {
        string str = "Hello, World!";
        Console.WriteLine($"Uppercase: {str.ToUpper()}");
        Console.WriteLine($"Lowercase: {str.ToLower()}");
        Console.WriteLine($"Length: {str.Length}");
        Console.WriteLine($"Substring: {str.Substring(0, 5)}");
    }
}
```

---

## **16. Collections (List Example)**
```csharp
using System;
using System.Collections.Generic;

class ListDemo
{
    static void Main()
    {
        List<string> names = new List<string> { "Alice", "Bob", "Charlie" };

        foreach (string name in names)
            Console.WriteLine(name);
    }
}
```

---

## **17. File Handling**
```csharp
using System;
using System.IO;

class FileDemo
{
    static void Main()
    {
        string path = "example.txt";

        File.WriteAllText(path, "Hello, C#!");
        string content = File.ReadAllText(path);

        Console.WriteLine($"File Content: {content}");
    }
}
```

---

## **18. Random Number Generation**
```csharp
using System;

class RandomDemo
{
    static void Main()
    {
        Random rand = new Random();
        int num = rand.Next(1, 101);
        Console.WriteLine($"Random Number: {num}");
    }
}
```

---

## **19. Nullable Types**
```csharp
using System;

class NullableDemo
{
    static void Main()
    {
        int? age = null;

        if (age.HasValue)
            Console.WriteLine($"Age: {age.Value}");
        else
            Console.WriteLine("Age is null");
    }
}
```

---

## **20. Async and Await Example**
```csharp
using System;
using System.Threading.Tasks;

class AsyncDemo
{
    static async Task Main()
    {
        Console.WriteLine("Fetching data...");
        await Task.Delay(2000);
        Console.WriteLine("Data fetched!");
    }
}
```

---

This tutorial covers **basic to intermediate topics** in C#. Let me know if you'd like further explanations or advanced examples like **LINQ, Delegates, Events, or Threading**! 😊
