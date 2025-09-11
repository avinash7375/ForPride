# **1. Packages in Java**

A **package** in Java is like a **folder** that groups related classes, interfaces, and sub-packages together. It helps in organizing code and avoiding name conflicts.

### **Types of Packages**

1. **Predefined Packages (Built-in)**

   * Provided by Java libraries.
   * Contain ready-to-use classes and interfaces.
   * Examples:

     * `java.lang` → Contains fundamental classes (`String`, `Math`, `Object`, `Integer`).
     * `java.util` → Data structures (`ArrayList`, `HashMap`, `Collections`).
     * `java.io` → Input/Output (`File`, `BufferedReader`, `PrintWriter`).
     * `java.sql` → Database handling (`Connection`, `ResultSet`).
     * `javax.swing` → GUI components.

   ✅ Usage example:

   ```java
   import java.util.ArrayList;

   public class PredefinedPackageExample {
       public static void main(String[] args) {
           ArrayList<String> list = new ArrayList<>();
           list.add("Hello");
           list.add("Java");
           System.out.println(list);
       }
   }
   ```

---

2. **User-defined Packages**

   * Created by the programmer to organize custom classes.
   * **Steps to create and use:**

     1. Create a package.
     2. Place classes inside it.
     3. Compile using `javac -d . MyClass.java`.
     4. Import and use it.

   ✅ Example:

   ```java
   // File: MyPackage/MyClass.java
   package MyPackage;

   public class MyClass {
       public void showMessage() {
           System.out.println("Hello from User-defined Package!");
       }
   }
   ```

   ```java
   // File: Main.java
   import MyPackage.MyClass;

   public class Main {
       public static void main(String[] args) {
           MyClass obj = new MyClass();
           obj.showMessage();
       }
   }
   ```

---

# **2. Access Specifiers in Java**

Access specifiers (a.k.a. **access modifiers**) define the **scope (visibility)** of classes, methods, and variables.

### **Types of Access Specifiers**

1. **public**

   * Accessible from **anywhere**.
   * Example:

     ```java
     public class Test {
         public void display() {
             System.out.println("Public Method");
         }
     }
     ```

2. **protected**

   * Accessible within the **same package** and by **subclasses** (even in different packages).
   * Example:

     ```java
     class Parent {
         protected void show() {
             System.out.println("Protected Method");
         }
     }

     class Child extends Parent {
         void call() {
             show(); // accessible in subclass
         }
     }
     ```

3. **default** (no modifier)

   * Accessible **only within the same package**.
   * Example:

     ```java
     class DefaultExample {
         void display() {
             System.out.println("Default Method");
         }
     }
     ```

4. **private**

   * Accessible **only within the same class**.
   * Example:

     ```java
     class PrivateExample {
         private void show() {
             System.out.println("Private Method");
         }
         void call() {
             show(); // allowed
         }
     }
     ```

---

# **Comparison Table**

| Specifier     | Within Class | Same Package | Subclass (diff pkg) | Other Packages |
| ------------- | ------------ | ------------ | ------------------- | -------------- |
| **public**    | ✅ Yes        | ✅ Yes        | ✅ Yes               | ✅ Yes          |
| **protected** | ✅ Yes        | ✅ Yes        | ✅ Yes               | ❌ No           |
| **default**   | ✅ Yes        | ✅ Yes        | ❌ No                | ❌ No           |
| **private**   | ✅ Yes        | ❌ No         | ❌ No                | ❌ No           |

---

We’ll use **user-defined packages + access specifiers** and then apply them in **quadratic equation solving** and a **Pythagoras theorem use case**.

---

# **Step 1: Create User-defined Package**

📁 Folder structure:

```
MyMath/
   Quadratic.java
   Pythagoras.java
Main.java
```

---

# **Step 2: Quadratic Equation Class**

🔹 Formula:

$$
x = \frac{-b \pm \sqrt{b^2 - 4ac}}{2a}
$$

```java
// File: MyMath/Quadratic.java
package MyMath;

public class Quadratic {
    // public method (accessible anywhere)
    public void solve(double a, double b, double c) {
        double discriminant = (b * b) - (4 * a * c);

        if (discriminant > 0) {
            double root1 = (-b + Math.sqrt(discriminant)) / (2 * a);
            double root2 = (-b - Math.sqrt(discriminant)) / (2 * a);
            System.out.println("Two Real Roots: " + root1 + " and " + root2);
        } else if (discriminant == 0) {
            double root = -b / (2 * a);
            System.out.println("One Real Root: " + root);
        } else {
            System.out.println("No Real Roots (Complex Roots)");
        }
    }

    // private helper method (accessible only inside this class)
    private void debugEquation(double a, double b, double c) {
        System.out.println("Equation: " + a + "x² + " + b + "x + " + c);
    }
}
```

---

# **Step 3: Pythagoras Theorem Class**

🔹 Formula:

$$
c = \sqrt{a^2 + b^2}
$$

```java
// File: MyMath/Pythagoras.java
package MyMath;

public class Pythagoras {
    // protected method (accessible in same package or subclass)
    protected double hypotenuse(double base, double height) {
        return Math.sqrt((base * base) + (height * height));
    }
}
```

---

# **Step 4: Main Program (Use Case)**

```java
// File: Main.java
import MyMath.Quadratic;
import MyMath.Pythagoras;

public class Main extends Pythagoras {
    public static void main(String[] args) {
        // --- Quadratic Equation Example ---
        Quadratic q = new Quadratic();
        q.solve(1, -3, 2);  // x² - 3x + 2 = 0 → Roots: 2, 1

        // --- Pythagoras Example ---
        Main obj = new Main(); // subclass, can access protected method
        double hyp = obj.hypotenuse(3, 4); // classic 3-4-5 triangle
        System.out.println("Hypotenuse = " + hyp);
    }
}
```

---

# **Step 5: Compile & Run**

```bash
javac -d . MyMath/Quadratic.java MyMath/Pythagoras.java Main.java
java Main
```

✅ **Output:**

```
Two Real Roots: 2.0 and 1.0
Hypotenuse = 5.0
```

---

👉 This example shows:

* **`public`** (Quadratic `solve()` method → accessible in Main).
* **`protected`** (Pythagoras `hypotenuse()` → accessible via inheritance).
* **`private`** (debugEquation in Quadratic → not accessible outside class).
* **User-defined package (`MyMath`)** used in **Main**.

---
