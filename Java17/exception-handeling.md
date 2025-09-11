Let’s go through **Java Exception Handling** step by step with **examples**.

---

# **1. What is Exception Handling?**

* An **exception** is an **unexpected event/error** that occurs during program execution (like divide by zero, file not found, array out of bounds).
* **Exception Handling** ensures the program does not crash; instead, it handles errors gracefully.

---

# **2. Predefined Exceptions in Java**

Java provides many **built-in exceptions** (from `java.lang.Exception`).

### Common Examples:

* `ArithmeticException` → divide by zero
* `ArrayIndexOutOfBoundsException` → invalid array index
* `NullPointerException` → using a null object reference
* `NumberFormatException` → converting string to number incorrectly

✅ Example:

```java
public class PredefinedExceptionDemo {
    public static void main(String[] args) {
        try {
            int result = 10 / 0;  // Division by zero
        } catch (ArithmeticException e) {
            System.out.println("Error: " + e);
        }
    }
}
```

---

# **3. try-catch-finally**

* **try** → block of code that may throw an exception
* **catch** → handles the exception
* **finally** → executes whether exception occurs or not

✅ Example:

```java
public class TryCatchFinallyDemo {
    public static void main(String[] args) {
        try {
            int[] arr = {1, 2, 3};
            System.out.println(arr[5]);  // Error: out of bounds
        } catch (ArrayIndexOutOfBoundsException e) {
            System.out.println("Caught Exception: " + e);
        } finally {
            System.out.println("Finally block always executes");
        }
    }
}
```

**Output:**

```
Caught Exception: java.lang.ArrayIndexOutOfBoundsException: Index 5 out of bounds
Finally block always executes
```

---

# **4. throw Keyword**

* Used to **manually throw** an exception.

✅ Example:

```java
public class ThrowDemo {
    public static void main(String[] args) {
        int age = 15;
        if (age < 18) {
            throw new ArithmeticException("Not eligible to vote");
        }
        System.out.println("You can vote!");
    }
}
```

---

# **5. throws Keyword**

* Used in **method declaration** to say that a method **might throw an exception**.

✅ Example:

```java
import java.io.*;

public class ThrowsDemo {
    static void readFile() throws IOException {
        FileReader fr = new FileReader("test.txt"); // may throw exception
        BufferedReader br = new BufferedReader(fr);
        System.out.println(br.readLine());
    }

    public static void main(String[] args) {
        try {
            readFile();
        } catch (IOException e) {
            System.out.println("File error: " + e);
        }
    }
}
```

---

# **6. Custom (User-Defined) Exceptions**

* Java allows creation of custom exceptions by **extending Exception** class.

✅ Example:

```java
// Custom Exception
class InvalidMarksException extends Exception {
    public InvalidMarksException(String message) {
        super(message);
    }
}

public class CustomExceptionDemo {
    static void checkMarks(int marks) throws InvalidMarksException {
        if (marks < 0 || marks > 100) {
            throw new InvalidMarksException("Marks must be between 0 and 100");
        }
        System.out.println("Valid Marks: " + marks);
    }

    public static void main(String[] args) {
        try {
            checkMarks(120); // invalid marks
        } catch (InvalidMarksException e) {
            System.out.println("Error: " + e.getMessage());
        }
    }
}
```

**Output:**

```
Error: Marks must be between 0 and 100
```

---

# **7. Summary Table**

| Keyword/Concept  | Purpose                                         |
| ---------------- | ----------------------------------------------- |
| `try`            | Block where exception may occur                 |
| `catch`          | Block to handle exception                       |
| `finally`        | Always executes (cleanup code)                  |
| `throw`          | Used to **manually throw** an exception         |
| `throws`         | Declares exceptions that a method may throw     |
| Custom Exception | User-defined exception by extending `Exception` |

---

# EXAMPLE WITH QUADRATIC EQUATION
---
Perfect 👌 Let’s build a **Quadratic Equation Solver** that demonstrates **all exception handling concepts**:

* **Predefined exception** (`ArithmeticException`)
* **try-catch-finally**
* **throw**
* **throws**
* **Custom exception (`InvalidQuadraticEquationException`)**

---

# ✅ Full Example: Quadratic Equation with Exception Handling

```java
import java.util.Scanner;

// --- Custom Exception ---
class InvalidQuadraticEquationException extends Exception {
    public InvalidQuadraticEquationException(String message) {
        super(message);
    }
}

public class QuadraticEquationSolver {
    // Method that may throw custom exception
    static void solveQuadratic(double a, double b, double c) throws InvalidQuadraticEquationException {
        if (a == 0) {
            // Not a quadratic equation
            throw new InvalidQuadraticEquationException("Coefficient 'a' cannot be zero. Not a quadratic equation!");
        }

        double discriminant = (b * b) - (4 * a * c);

        try {
            if (discriminant > 0) {
                double root1 = (-b + Math.sqrt(discriminant)) / (2 * a);
                double root2 = (-b - Math.sqrt(discriminant)) / (2 * a);
                System.out.println("Two Real Roots: " + root1 + " and " + root2);
            } else if (discriminant == 0) {
                double root = -b / (2 * a);
                System.out.println("One Real Root: " + root);
            } else {
                throw new ArithmeticException("Discriminant < 0, Complex Roots not handled here!");
            }
        } catch (ArithmeticException e) {
            System.out.println("Caught Exception: " + e.getMessage());
        } finally {
            System.out.println("Finished solving equation: " + a + "x² + " + b + "x + " + c);
        }
    }

    public static void main(String[] args) {
        Scanner sc = new Scanner(System.in);

        try {
            // User input
            System.out.print("Enter coefficients a, b, c: ");
            double a = sc.nextDouble();
            double b = sc.nextDouble();
            double c = sc.nextDouble();

            // Method may throw custom exception
            solveQuadratic(a, b, c);

        } catch (InvalidQuadraticEquationException e) {
            System.out.println("Custom Exception: " + e.getMessage());
        } finally {
            sc.close();
            System.out.println("Program Ended Safely ✅");
        }
    }
}
```

---

# 🔎 How Each Concept is Used

* **Predefined Exception**:
  `ArithmeticException` → when discriminant < 0.

* **try-catch-finally**:
  Inside `solveQuadratic()` → tries to compute roots, catches errors, `finally` always runs.

* **throw**:
  `throw new ArithmeticException("Discriminant < 0...")`
  `throw new InvalidQuadraticEquationException("a cannot be zero...")`

* **throws**:
  `static void solveQuadratic(...) throws InvalidQuadraticEquationException`

* **Custom Exception**:
  `InvalidQuadraticEquationException` → for invalid equations (`a == 0`).

---

# ✅ Example Runs

### Case 1: Valid equation → two roots

```
Enter coefficients a, b, c: 1 -3 2
Two Real Roots: 2.0 and 1.0
Finished solving equation: 1.0x² + -3.0x + 2.0
Program Ended Safely ✅
```

### Case 2: Discriminant < 0

```
Enter coefficients a, b, c: 1 2 5
Caught Exception: Discriminant < 0, Complex Roots not handled here!
Finished solving equation: 1.0x² + 2.0x + 5.0
Program Ended Safely ✅
```

### Case 3: Not a quadratic (a = 0)

```
Enter coefficients a, b, c: 0 2 3
Custom Exception: Coefficient 'a' cannot be zero. Not a quadratic equation!
Program Ended Safely ✅
```

