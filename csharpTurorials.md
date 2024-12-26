Sure! Here's a detailed breakdown of the structure of a **C# program** and how it is executed.

---

## **Basic Structure of a C# Program**

A simple C# program looks like this:

```csharp
using System; // Namespace for basic functionalities like input/output.

namespace MyFirstProgram // Namespace declaration
{
    class Program // Class declaration
    {
        static void Main(string[] args) // Entry point of the program
        {
            Console.WriteLine("Hello, World!"); // Print output to the console
        }
    }
}
```

Let’s analyze this step by step:

---

### **1. `using System;` (Using Directive)**

- `using` keyword tells the compiler to include a **namespace** (a collection of related classes and methods).
- `System` is the default namespace that contains basic functionalities like input/output (`Console` class), arrays, data types, etc.
  
Example:
```csharp
using System; // Provides access to Console.WriteLine()
```

---

### **2. `namespace MyFirstProgram`**

- A **namespace** organizes code logically into groups, avoiding name conflicts in larger programs.
- Namespaces contain classes, structs, enums, and other namespaces.

Example:
```csharp
namespace MyFirstProgram
{
    // Classes and other code go here
}
```

---

### **3. `class Program` (Class Declaration)**

- C# is an **object-oriented programming language**, so every program must be inside a **class**.
- A class is a blueprint for objects and encapsulates methods and properties.

Example:
```csharp
class Program
{
    // Code goes here
}
```

---

### **4. `static void Main(string[] args)`**

- **Main Method**: This is the **entry point** of a C# program. Execution starts here.
- **Signature**:
   - `static`: The method belongs to the class and can be called without creating an object.
   - `void`: The method doesn’t return any value.
   - `Main`: Name of the method (case-sensitive).
   - `string[] args`: An array of strings that allows command-line arguments to be passed.

Example:
```csharp
static void Main(string[] args)
{
    Console.WriteLine("This is the Main method.");
}
```

---

### **5. `Console.WriteLine("Hello, World!");`**

- **`Console`**: A class in the `System` namespace used for input and output.
- **`WriteLine`**: A method to print text to the console, followed by a new line.
- This line outputs "Hello, World!" to the console.

Example:
```csharp
Console.WriteLine("Hello, World!");
```

---

## **How a C# Program is Executed**

The execution of a C# program involves the following steps:

1. **Writing Code**: You write C# source code in a `.cs` file.

2. **Compilation**:
   - The **C# compiler (csc)** compiles the source code into an **Intermediate Language (IL)**.
   - The compiled IL code is stored in a **.exe** or **.dll** file.

3. **Common Language Runtime (CLR)**:
   - The compiled IL code is executed by the **CLR** (part of the .NET runtime).
   - The CLR converts the IL code into **native machine code** using a **Just-In-Time (JIT)** compiler.

4. **Execution**:
   - The program runs as native code on the target machine and interacts with the operating system.

---

## **Execution Flow**

1. **Main Method**:
   - The execution always starts from the `Main` method in the `Program` class.

2. **Control Flow**:
   - The CLR executes statements inside the `Main` method **line by line**.
   - If there are methods, classes, or objects, they are invoked as per the program logic.

3. **Memory Management**:
   - The CLR manages memory allocation and garbage collection automatically.

---

## **Full Example with Comments**

Here's a program that explains the structure and execution flow:

```csharp
using System; // Using the System namespace for basic functionalities.

namespace MyProgram // Namespace declaration to organize code.
{
    // Class declaration: Every C# program must have at least one class.
    class Program
    {
        // Main method: Entry point of the program.
        static void Main(string[] args)
        {
            Console.WriteLine("Execution starts here!");

            // Variable declaration and initialization
            int num1 = 10;
            int num2 = 20;

            // Method call
            int result = AddNumbers(num1, num2);

            // Print the result
            Console.WriteLine($"The sum of {num1} and {num2} is: {result}");

            Console.WriteLine("Execution ends here.");
        }

        // Custom method to add two numbers
        static int AddNumbers(int a, int b)
        {
            return a + b;
        }
    }
}
```

---

### **Execution Flow of the Above Program**

1. **Program Starts**: Execution begins at the `Main` method.
2. **Prints Line 1**: `Console.WriteLine("Execution starts here!");`
3. **Variables Declared**: `num1` and `num2` are assigned values.
4. **Method Call**: The `AddNumbers` method is called with arguments `10` and `20`.
5. **Method Execution**:
   - The `AddNumbers` method adds the two numbers and returns `30`.
6. **Print Result**: The result (`30`) is displayed.
7. **Execution Ends**: The program completes the `Main` method.

---

## **Key Concepts Recap**

1. **Namespaces**: Used to organize code and prevent name collisions.
2. **Classes**: A blueprint that contains methods, fields, and properties.
3. **Main Method**: The entry point where program execution begins.
4. **Statements**: Code within `Main` runs line by line.
5. **Execution Environment**:
   - Compilation → IL Code → CLR → JIT Compilation → Native Code → Execution.

---

If you have further questions or need clarification about any part, feel free to ask! 🚀

--
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

```csharp
using System;

public class FactorialException
{
    // Custom Exception for Invalid Factorial Input
    public class InvalidFactorialInputException : Exception
    {
        public InvalidFactorialInputException(string message) : base(message) { }
    }

    // Factorial Calculation Method with Exception Handling
    public static long CalculateFactorial(int number)
    {
        try
        {
            // Validate input range
            if (number < 0)
            {
                throw new InvalidFactorialInputException("Factorial cannot be calculated for negative numbers.");
            }

            if (number > 50)
            {
                throw new InvalidFactorialInputException("Factorial calculation exceeds maximum supported number (50).");
            }

            // Factorial calculation logic
            return PerformFactorialCalculation(number);
        }
        catch (InvalidFactorialInputException ex)
        {
            // Custom error handling
            Console.WriteLine($"Factorial Error: {ex.Message}");
            return -1; // Indicating calculation failure
        }
        catch (OverflowException)
        {
            Console.WriteLine("Factorial result is too large to represent.");
            return -1;
        }
    }

    // Actual Factorial Calculation Method
    private static long PerformFactorialCalculation(int number)
    {
        long result = 1;
        for (int i = 2; i <= number; i++)
        {
            result *= i;
        }
        return result;
    }

    // Demonstration Method
    public static void Main()
    {
        int testNumbers = 51;
        // Test Cases
        // int[] testNumbers = { -5, 0, 10, 25, 50, 51, 100 };

        // foreach (int num in testNumbers)
        // {
            Console.WriteLine($"Factorial of : {CalculateFactorial(testNumbers)}");
        // }
    }
}

```


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


Here are **C# problem-solving exercises** with their solutions. These problems range from beginner to intermediate levels, covering essential concepts such as loops, arrays, methods, and OOP.

---

# **1. Reverse a Number**

**Problem:** Write a program to reverse a given number.  
**Example:**  
Input: `1234` → Output: `4321`

### **Solution:**
```csharp
using System;

class ReverseNumber
{
    static void Main()
    {
        Console.Write("Enter a number: ");
        int number = int.Parse(Console.ReadLine());
        int reversed = 0;

        while (number > 0)
        {
            int remainder = number % 10;
            reversed = reversed * 10 + remainder;
            number /= 10;
        }

        Console.WriteLine($"Reversed Number: {reversed}");
    }
}
```

---

# **2. Check for Prime Number**

**Problem:** Write a program to check if a number is prime.  
**Example:**  
Input: `7` → Output: `Prime`

### **Solution:**
```csharp
using System;

class PrimeNumber
{
    static void Main()
    {
        Console.Write("Enter a number: ");
        int num = int.Parse(Console.ReadLine());
        bool isPrime = true;

        if (num <= 1)
            isPrime = false;
        else
        {
            for (int i = 2; i <= Math.Sqrt(num); i++)
            {
                if (num % i == 0)
                {
                    isPrime = false;
                    break;
                }
            }
        }

        Console.WriteLine(isPrime ? "Prime" : "Not Prime");
    }
}
```

---

# **3. Find Factorial of a Number**

**Problem:** Write a program to calculate the factorial of a number.  
**Example:**  
Input: `5` → Output: `120`

### **Solution:**
```csharp
using System;

class Factorial
{
    static void Main()
    {
        Console.Write("Enter a number: ");
        int num = int.Parse(Console.ReadLine());
        long factorial = 1;

        for (int i = 1; i <= num; i++)
            factorial *= i;

        Console.WriteLine($"Factorial: {factorial}");
    }
}
```

---

# **4. Fibonacci Series**

**Problem:** Print the first `n` numbers of the Fibonacci series.  
**Example:**  
Input: `5` → Output: `0 1 1 2 3`

### **Solution:**
```csharp
using System;

class Fibonacci
{
    static void Main()
    {
        Console.Write("Enter the number of terms: ");
        int terms = int.Parse(Console.ReadLine());

        int a = 0, b = 1;

        Console.Write($"{a} {b} ");
        for (int i = 2; i < terms; i++)
        {
            int next = a + b;
            Console.Write($"{next} ");
            a = b;
            b = next;
        }
    }
}
```

---

# **5. Palindrome Check**

**Problem:** Check if a string is a palindrome (reads the same forward and backward).  
**Example:**  
Input: `"madam"` → Output: `Palindrome`

### **Solution:**
```csharp
using System;

class PalindromeCheck
{
    static void Main()
    {
        Console.Write("Enter a string: ");
        string input = Console.ReadLine();
        string reversed = "";

        for (int i = input.Length - 1; i >= 0; i--)
            reversed += input[i];

        Console.WriteLine(input == reversed ? "Palindrome" : "Not a Palindrome");
    }
}
```

---

# **6. Sum of Digits**

**Problem:** Find the sum of digits of a given number.  
**Example:**  
Input: `123` → Output: `6`

### **Solution:**
```csharp
using System;

class SumOfDigits
{
    static void Main()
    {
        Console.Write("Enter a number: ");
        int num = int.Parse(Console.ReadLine());
        int sum = 0;

        while (num > 0)
        {
            sum += num % 10;
            num /= 10;
        }

        Console.WriteLine($"Sum of Digits: {sum}");
    }
}
```

---

# **7. Find Maximum and Minimum in an Array**

**Problem:** Write a program to find the maximum and minimum element in an array.  
**Example:**  
Input: `{3, 1, 4, 1, 5}` → Output: Max: `5`, Min: `1`

### **Solution:**
```csharp
using System;

class ArrayMinMax
{
    static void Main()
    {
        int[] arr = { 3, 1, 4, 1, 5 };

        int max = arr[0], min = arr[0];

        foreach (int num in arr)
        {
            if (num > max) max = num;
            if (num < min) min = num;
        }

        Console.WriteLine($"Max: {max}, Min: {min}");
    }
}
```

---

# **8. Count Vowels in a String**

**Problem:** Write a program to count the number of vowels in a string.  
**Example:**  
Input: `"hello"` → Output: `2`

### **Solution:**
```csharp
using System;

class CountVowels
{
    static void Main()
    {
        Console.Write("Enter a string: ");
        string input = Console.ReadLine().ToLower();
        int count = 0;

        foreach (char c in input)
            if ("aeiou".Contains(c)) count++;

        Console.WriteLine($"Number of vowels: {count}");
    }
}
```

---

# **9. Check Armstrong Number**

**Problem:** A number is called an Armstrong number if the sum of its digits raised to the power of the number of digits equals the number itself.  
**Example:**  
Input: `153` → Output: `Armstrong Number`

### **Solution:**
```csharp
using System;

class ArmstrongNumber
{
    static void Main()
    {
        Console.Write("Enter a number: ");
        int number = int.Parse(Console.ReadLine());
        int sum = 0, temp = number, digits = number.ToString().Length;

        while (temp > 0)
        {
            int remainder = temp % 10;
            sum += (int)Math.Pow(remainder, digits);
            temp /= 10;
        }

        Console.WriteLine(number == sum ? "Armstrong Number" : "Not an Armstrong Number");
    }
}
```

---

# **10. Bubble Sort**

**Problem:** Sort an array using the bubble sort algorithm.  
**Example:**  
Input: `{5, 1, 4, 2, 8}` → Output: `{1, 2, 4, 5, 8}`

### **Solution:**
```csharp
using System;

class BubbleSort
{
    static void Main()
    {
        int[] arr = { 5, 1, 4, 2, 8 };

        for (int i = 0; i < arr.Length - 1; i++)
        {
            for (int j = 0; j < arr.Length - i - 1; j++)
            {
                if (arr[j] > arr[j + 1])
                {
                    int temp = arr[j];
                    arr[j] = arr[j + 1];
                    arr[j + 1] = temp;
                }
            }
        }

        Console.WriteLine("Sorted Array: " + string.Join(", ", arr));
    }
}
```

---

These **C# problems** and solutions will help you practice problem-solving, improve your logical thinking, and become confident in coding. Let me know if you need more problems or further explanations! 🚀



Here are **unique problem-solving exercises** focusing on **Data Structures and Algorithms (DSA)** as well as **Object-Oriented Programming (OOP)** in **C#**.

---

# **Data Structures and Algorithms (DSA)**

---

## **1. Find the Missing Number in an Array**
**Problem:** Given an array containing `n-1` integers in the range `[1, n]`, find the missing number.  
**Example:**  
Input: `{1, 2, 4, 5}` → Output: `3`

### **Solution:**
```csharp
using System;

class MissingNumber
{
    static void Main()
    {
        int[] arr = { 1, 2, 4, 5 };
        int n = arr.Length + 1;

        int expectedSum = n * (n + 1) / 2;
        int actualSum = 0;

        foreach (int num in arr)
            actualSum += num;

        int missingNumber = expectedSum - actualSum;
        Console.WriteLine($"Missing Number: {missingNumber}");
    }
}
```

---

## **2. Find Duplicate Elements in an Array**
**Problem:** Identify duplicate elements in an array.  
**Example:**  
Input: `{4, 2, 4, 5, 2, 3}` → Output: `4, 2`

### **Solution:**
```csharp
using System;
using System.Collections.Generic;

class FindDuplicates
{
    static void Main()
    {
        int[] arr = { 4, 2, 4, 5, 2, 3 };
        HashSet<int> seen = new HashSet<int>();
        HashSet<int> duplicates = new HashSet<int>();

        foreach (int num in arr)
        {
            if (seen.Contains(num))
                duplicates.Add(num);
            else
                seen.Add(num);
        }

        Console.WriteLine("Duplicate Elements: " + string.Join(", ", duplicates));
    }
}
```

---

## **3. Check for Balanced Parentheses (Stack)**
**Problem:** Write a program to check if a string of parentheses is balanced.  
**Example:**  
Input: `"({[]})"` → Output: `Balanced`  
Input: `"({[})"` → Output: `Not Balanced`

### **Solution:**
```csharp
using System;
using System.Collections.Generic;

class BalancedParentheses
{
    static void Main()
    {
        Console.Write("Enter parentheses string: ");
        string input = Console.ReadLine();
        Stack<char> stack = new Stack<char>();

        foreach (char ch in input)
        {
            if (ch == '(' || ch == '{' || ch == '[')
                stack.Push(ch);
            else if (ch == ')' && stack.Count > 0 && stack.Peek() == '(')
                stack.Pop();
            else if (ch == '}' && stack.Count > 0 && stack.Peek() == '{')
                stack.Pop();
            else if (ch == ']' && stack.Count > 0 && stack.Peek() == '[')
                stack.Pop();
            else
            {
                Console.WriteLine("Not Balanced");
                return;
            }
        }

        Console.WriteLine(stack.Count == 0 ? "Balanced" : "Not Balanced");
    }
}
```

---

## **4. Find Kth Largest Element (Heap/Sorting)**
**Problem:** Find the Kth largest element in an unsorted array.  
**Example:**  
Input: `{3, 2, 1, 5, 6, 4}`, K = 2 → Output: `5`

### **Solution:**
```csharp
using System;
using System.Linq;

class KthLargest
{
    static void Main()
    {
        int[] arr = { 3, 2, 1, 5, 6, 4 };
        int k = 2;

        Array.Sort(arr);
        Console.WriteLine($"The {k}th largest element is: {arr[arr.Length - k]}");
    }
}
```

---

## **5. Implement a Linked List**
**Problem:** Implement a simple singly linked list and display its elements.

### **Solution:**
```csharp
using System;

class Node
{
    public int Data;
    public Node Next;

    public Node(int data)
    {
        Data = data;
        Next = null;
    }
}

class LinkedList
{
    private Node head;

    public void AddNode(int data)
    {
        Node newNode = new Node(data);
        if (head == null)
            head = newNode;
        else
        {
            Node current = head;
            while (current.Next != null)
                current = current.Next;
            current.Next = newNode;
        }
    }

    public void Display()
    {
        Node current = head;
        while (current != null)
        {
            Console.Write(current.Data + " -> ");
            current = current.Next;
        }
        Console.WriteLine("null");
    }
}

class LinkedListDemo
{
    static void Main()
    {
        LinkedList list = new LinkedList();
        list.AddNode(1);
        list.AddNode(2);
        list.AddNode(3);
        list.Display();
    }
}
```

---

# **Object-Oriented Programming (OOP)**

---

## **6. Create a Student Management System**

**Problem:** Design a program to store and display student details using a class. Include fields for name, ID, and marks.

### **Solution:**
```csharp
using System;
using System.Collections.Generic;

class Student
{
    public int ID { get; set; }
    public string Name { get; set; }
    public double Marks { get; set; }

    public void Display()
    {
        Console.WriteLine($"ID: {ID}, Name: {Name}, Marks: {Marks}");
    }
}

class StudentManagement
{
    static void Main()
    {
        List<Student> students = new List<Student>
        {
            new Student { ID = 1, Name = "Alice", Marks = 85.5 },
            new Student { ID = 2, Name = "Bob", Marks = 78.0 },
            new Student { ID = 3, Name = "Charlie", Marks = 92.3 }
        };

        Console.WriteLine("Student Details:");
        foreach (var student in students)
            student.Display();
    }
}
```

---

## **7. Bank Account Management with Encapsulation**

**Problem:** Create a `BankAccount` class with private fields and public methods for deposit, withdrawal, and balance check.

### **Solution:**
```csharp
using System;

class BankAccount
{
    private double balance;

    public void Deposit(double amount)
    {
        balance += amount;
        Console.WriteLine($"Deposited: {amount}, Balance: {balance}");
    }

    public void Withdraw(double amount)
    {
        if (amount > balance)
            Console.WriteLine("Insufficient balance.");
        else
        {
            balance -= amount;
            Console.WriteLine($"Withdrawn: {amount}, Balance: {balance}");
        }
    }

    public void CheckBalance()
    {
        Console.WriteLine($"Balance: {balance}");
    }
}

class BankDemo
{
    static void Main()
    {
        BankAccount account = new BankAccount();
        account.Deposit(500);
        account.Withdraw(200);
        account.CheckBalance();
    }
}
```

---

## **8. Shape Hierarchy Using Polymorphism**

**Problem:** Create a base class `Shape` with a virtual method `Area()`. Inherit `Circle` and `Rectangle` classes and override `Area()`.

### **Solution:**
```csharp
using System;

abstract class Shape
{
    public abstract double Area();
}

class Circle : Shape
{
    public double Radius { get; set; }

    public Circle(double radius)
    {
        Radius = radius;
    }

    public override double Area()
    {
        return Math.PI * Radius * Radius;
    }
}

class Rectangle : Shape
{
    public double Length { get; set; }
    public double Width { get; set; }

    public Rectangle(double length, double width)
    {
        Length = length;
        Width = width;
    }

    public override double Area()
    {
        return Length * Width;
    }
}

class ShapeDemo
{
    static void Main()
    {
        Shape circle = new Circle(5);
        Shape rectangle = new Rectangle(4, 6);

        Console.WriteLine($"Circle Area: {circle.Area()}");
        Console.WriteLine($"Rectangle Area: {rectangle.Area()}");
    }
}
```

---

These **problems** tackle critical areas of **DSA** and **OOP** and give you practical experience with stacks, linked lists, polymorphism, and encapsulation. Let me know if you'd like further advanced problems or explanations on any topic! 🚀
