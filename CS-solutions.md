## C# Programming Problems and Full Solutions Repository

### 1. Swap Numbers Without Third Variable
```csharp
using System;

class NumberSwapper
{
    static void Main()
    {
        int a = 10, b = 20;
        Console.WriteLine($"Before Swap: a = {a}, b = {b}");
        
        // Swap logic
        a = a + b;
        b = a - b;
        a = a - b;
        
        Console.WriteLine($"After Swap: a = {a}, b = {b}");
    }
}
```

### 2. Palindrome Checker
```csharp
using System;

class PalindromeChecker
{
    static bool IsPalindrome(string input)
    {
        // Remove spaces and convert to lowercase
        input = input.Replace(" ", "").ToLower();
        
        // Two-pointer approach
        int left = 0;
        int right = input.Length - 1;
        
        while (left < right)
        {
            if (input[left] != input[right])
                return false;
            
            left++;
            right--;
        }
        
        return true;
    }
    
    static void Main()
    {
        string[] testStrings = {
            "racecar",
            "hello",
            "A man a plan a canal Panama"
        };
        
        foreach (string str in testStrings)
        {
            Console.WriteLine($"{str} is palindrome: {IsPalindrome(str)}");
        }
    }
}
```

### 3. Prime Number Checker
```csharp
using System;

class PrimeNumberChecker
{
    static bool IsPrime(int number)
    {
        // Handle edge cases
        if (number <= 1) return false;
        if (number == 2) return true;
        if (number % 2 == 0) return false;
        
        // Check odd numbers up to square root
        int sqrt = (int)Math.Sqrt(number);
        for (int i = 3; i <= sqrt; i += 2)
        {
            if (number % i == 0)
                return false;
        }
        
        return true;
    }
    
    static void Main()
    {
        int[] numbers = { 2, 7, 10, 13, 17, 20, 29 };
        
        foreach (int num in numbers)
        {
            Console.WriteLine($"{num} is prime: {IsPrime(num)}");
        }
    }
}
```

### 4. Bank Account Management System
```csharp
using System;

class BankAccount
{
    // Private fields
    private string accountNumber;
    private decimal balance;
    private string accountHolder;

    // Constructor
    public BankAccount(string holder, string accNumber, decimal initialBalance = 0)
    {
        accountHolder = holder;
        accountNumber = accNumber;
        balance = initialBalance;
    }

    // Deposit method
    public void Deposit(decimal amount)
    {
        if (amount > 0)
        {
            balance += amount;
            Console.WriteLine($"Deposited: {amount:C}. New Balance: {balance:C}");
        }
        else
        {
            Console.WriteLine("Invalid deposit amount");
        }
    }

    // Withdrawal method with overdraft protection
    public bool Withdraw(decimal amount)
    {
        if (amount > 0 && balance >= amount)
        {
            balance -= amount;
            Console.WriteLine($"Withdrawn: {amount:C}. New Balance: {balance:C}");
            return true;
        }
        else
        {
            Console.WriteLine("Insufficient funds or invalid amount");
            return false;
        }
    }

    // Display account information
    public void DisplayAccountInfo()
    {
        Console.WriteLine($"Account Holder: {accountHolder}");
        Console.WriteLine($"Account Number: {accountNumber}");
        Console.WriteLine($"Current Balance: {balance:C}");
    }
}

class BankProgram
{
    static void Main()
    {
        BankAccount account = new BankAccount("John Doe", "123456", 1000);
        
        account.DisplayAccountInfo();
        account.Deposit(500);
        account.Withdraw(200);
        account.DisplayAccountInfo();
    }
}
```

### 5. Student Management System
```csharp
using System;
using System.Collections.Generic;
using System.Linq;

class Student
{
    public int Id { get; set; }
    public string Name { get; set; }
    public int Age { get; set; }
    public List<double> Grades { get; set; }

    // Calculate average grade
    public double CalculateAverageGrade()
    {
        return Grades.Count > 0 ? Grades.Average() : 0;
    }
}

class StudentManagementSystem
{
    private List<Student> students = new List<Student>();

    // Add new student
    public void AddStudent(Student student)
    {
        students.Add(student);
    }

    // Get student by ID
    public Student GetStudentById(int id)
    {
        return students.FirstOrDefault(s => s.Id == id);
    }

    // Get top performing students
    public List<Student> GetTopPerformers(int count)
    {
        return students
            .OrderByDescending(s => s.CalculateAverageGrade())
            .Take(count)
            .ToList();
    }

    // Display all students
    public void DisplayAllStudents()
    {
        foreach (var student in students)
        {
            Console.WriteLine($"ID: {student.Id}, Name: {student.Name}, " +
                              $"Age: {student.Age}, Avg Grade: {student.CalculateAverageGrade():F2}");
        }
    }
}

class Program
{
    static void Main()
    {
        StudentManagementSystem sms = new StudentManagementSystem();

        // Add students
        sms.AddStudent(new Student 
        { 
            Id = 1, 
            Name = "Alice", 
            Age = 20, 
            Grades = new List<double> { 85, 90, 92 } 
        });

        sms.AddStudent(new Student 
        { 
            Id = 2, 
            Name = "Bob", 
            Age = 22, 
            Grades = new List<double> { 75, 80, 85 } 
        });

        // Display all students
        sms.DisplayAllStudents();
    }
}
```

### 6. Generic Stack Implementation
```csharp
using System;

public class GenericStack<T>
{
    private T[] items;
    private int top;
    private int capacity;

    public GenericStack(int size)
    {
        items = new T[size];
        capacity = size;
        top = -1;
    }

    // Push an item
    public void Push(T item)
    {
        if (IsFull())
        {
            throw new StackOverflowException("Stack is full");
        }
        items[++top] = item;
    }

    // Pop an item
    public T Pop()
    {
        if (IsEmpty())
        {
            throw new InvalidOperationException("Stack is empty");
        }
        return items[top--];
    }

    // Peek top item
    public T Peek()
    {
        if (IsEmpty())
        {
            throw new InvalidOperationException("Stack is empty");
        }
        return items[top];
    }

    // Check if stack is empty
    public bool IsEmpty()
    {
        return top == -1;
    }

    // Check if stack is full
    public bool IsFull()
    {
        return top == capacity - 1;
    }
}

class StackDemo
{
    static void Main()
    {
        GenericStack<int> intStack = new GenericStack<int>(5);
        
        intStack.Push(10);
        intStack.Push(20);
        intStack.Push(30);

        Console.WriteLine($"Top item: {intStack.Peek()}");
        Console.WriteLine($"Popped item: {intStack.Pop()}");
    }
}
```

### Learning Tips
1. Practice these problems regularly
2. Understand the logic behind each solution
3. Try to optimize and refactor the code
4. Experiment with different approaches
5. Learn from each implementation

### Recommended Next Steps
- Solve more complex algorithmic problems
- Learn design patterns
- Study advanced C# features
- Practice coding challenges on platforms like LeetCode
- Contribute to open-source projects
