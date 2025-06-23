### **1. Print Numbers from 1 to 10**

```cpp
#include <iostream>
using namespace std;

int main() {
    for (int i = 1; i <= 10; ++i) {
        cout << i << " ";
    }
    return 0;
}
```

---

### **2. Print Even Numbers from 1 to 20**

```cpp
#include <iostream>
using namespace std;

int main() {
    for (int i = 2; i <= 20; i += 2) {
        cout << i << " ";
    }
    return 0;
}
```

---

### **3. Sum of First N Natural Numbers**

```cpp
#include <iostream>
using namespace std;

int main() {
    int n, sum = 0;
    cout << "Enter n: ";
    cin >> n;
    for (int i = 1; i <= n; ++i)
        sum += i;
    cout << "Sum = " << sum;
    return 0;
}
```

---

### **4. Factorial of a Number**

```cpp
#include <iostream>
using namespace std;

int main() {
    int n, fact = 1;
    cout << "Enter a number: ";
    cin >> n;
    for (int i = 1; i <= n; ++i)
        fact *= i;
    cout << "Factorial = " << fact;
    return 0;
}
```

---

### **5. Multiplication Table of a Number**

```cpp
#include <iostream>
using namespace std;

int main() {
    int n;
    cout << "Enter number: ";
    cin >> n;
    for (int i = 1; i <= 10; ++i)
        cout << n << " x " << i << " = " << n * i << endl;
    return 0;
}
```

---

### **6. Reverse Counting from 10 to 1**

```cpp
#include <iostream>
using namespace std;

int main() {
    for (int i = 10; i >= 1; --i)
        cout << i << " ";
    return 0;
}
```

---

### **7. Check if a Number is Prime**

```cpp
#include <iostream>
using namespace std;

int main() {
    int n, count = 0;
    cout << "Enter number: ";
    cin >> n;
    for (int i = 1; i <= n; ++i)
        if (n % i == 0) count++;
    if (count == 2) cout << "Prime";
    else cout << "Not Prime";
    return 0;
}
```

---

### **8. Fibonacci Series up to N Terms**

```cpp
#include <iostream>
using namespace std;

int main() {
    int n, a = 0, b = 1, c;
    cout << "Enter terms: ";
    cin >> n;
    cout << a << " " << b << " ";
    for (int i = 3; i <= n; ++i) {
        c = a + b;
        cout << c << " ";
        a = b;
        b = c;
    }
    return 0;
}
```

---

### **9. Sum of Digits of a Number**

```cpp
#include <iostream>
using namespace std;

int main() {
    int n, sum = 0;
    cout << "Enter number: ";
    cin >> n;
    while (n != 0) {
        sum += n % 10;
        n /= 10;
    }
    cout << "Sum = " << sum;
    return 0;
}
```

---

### **10. Reverse a Number**

```cpp
#include <iostream>
using namespace std;

int main() {
    int n, rev = 0;
    cout << "Enter number: ";
    cin >> n;
    while (n != 0) {
        rev = rev * 10 + n % 10;
        n /= 10;
    }
    cout << "Reversed = " << rev;
    return 0;
}
```

---

### **11. Count Digits in a Number**

```cpp
#include <iostream>
using namespace std;

int main() {
    int n, count = 0;
    cout << "Enter number: ";
    cin >> n;
    while (n != 0) {
        n /= 10;
        count++;
    }
    cout << "Digits = " << count;
    return 0;
}
```

---

### **12. Armstrong Number Check**

```cpp
#include <iostream>
#include <cmath>
using namespace std;

int main() {
    int n, temp, sum = 0;
    cout << "Enter number: ";
    cin >> n;
    temp = n;
    while (temp != 0) {
        int r = temp % 10;
        sum += pow(r, 3);
        temp /= 10;
    }
    if (sum == n)
        cout << "Armstrong Number";
    else
        cout << "Not Armstrong";
    return 0;
}
```

---

### **13. Display ASCII Values from A to Z**

```cpp
#include <iostream>
using namespace std;

int main() {
    for (char c = 'A'; c <= 'Z'; ++c)
        cout << c << " = " << int(c) << endl;
    return 0;
}
```

---

### **14. Print a Right-Angle Triangle of Stars**

```cpp
#include <iostream>
using namespace std;

int main() {
    int n;
    cout << "Enter rows: ";
    cin >> n;
    for (int i = 1; i <= n; ++i) {
        for (int j = 1; j <= i; ++j)
            cout << "*";
        cout << endl;
    }
    return 0;
}
```

---

### **15. Find GCD of Two Numbers**

```cpp
#include <iostream>
using namespace std;

int main() {
    int a, b, gcd;
    cout << "Enter two numbers: ";
    cin >> a >> b;
    for (int i = 1; i <= min(a, b); ++i)
        if (a % i == 0 && b % i == 0)
            gcd = i;
    cout << "GCD = " << gcd;
    return 0;
}
```

---

### **16. Palindrome Number Check**

```cpp
#include <iostream>
using namespace std;

int main() {
    int n, rev = 0, temp;
    cout << "Enter number: ";
    cin >> n;
    temp = n;
    while (temp != 0) {
        rev = rev * 10 + temp % 10;
        temp /= 10;
    }
    if (rev == n) cout << "Palindrome";
    else cout << "Not Palindrome";
    return 0;
}
```

---

### **17. Print Pattern of Numbers (1 to n)**

```cpp
#include <iostream>
using namespace std;

int main() {
    int n, num = 1;
    cout << "Enter rows: ";
    cin >> n;
    for (int i = 1; i <= n; ++i) {
        for (int j = 1; j <= i; ++j)
            cout << num++ << " ";
        cout << endl;
    }
    return 0;
}
```

---

### **18. Check for Perfect Number**

```cpp
#include <iostream>
using namespace std;

int main() {
    int n, sum = 0;
    cout << "Enter number: ";
    cin >> n;
    for (int i = 1; i < n; ++i)
        if (n % i == 0) sum += i;
    if (sum == n) cout << "Perfect Number";
    else cout << "Not Perfect";
    return 0;
}
```

---

### **19. Find Power of a Number (a^b)**

```cpp
#include <iostream>
using namespace std;

int main() {
    int a, b, result = 1;
    cout << "Enter base and exponent: ";
    cin >> a >> b;
    for (int i = 1; i <= b; ++i)
        result *= a;
    cout << "Result = " << result;
    return 0;
}
```

---

### **20. Print Hollow Rectangle Pattern**

```cpp
#include <iostream>
using namespace std;

int main() {
    int rows, cols;
    cout << "Enter rows and columns: ";
    cin >> rows >> cols;
    for (int i = 1; i <= rows; ++i) {
        for (int j = 1; j <= cols; ++j) {
            if (i == 1 || i == rows || j == 1 || j == cols)
                cout << "*";
            else
                cout << " ";
        }
        cout << endl;
    }
    return 0;
}
```

