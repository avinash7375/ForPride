Certainly! Here's a list of 20 logic-building exercises in C using loops. These problems help you practice different types of loops (like `for`, `while`, and `do-while`), and build strong logic in programming:

---

### 1. **Print "Hello World" 10 Times**
   Print "Hello World" 10 times using a loop.

```c
#include <stdio.h>

int main() {
    for (int i = 0; i < 10; i++) {
        printf("Hello World\n");
    }
    return 0;
}
```

---

### 2. **Odd or Even Number**
   Ask the user for a number and determine if it's odd or even using a loop (loop through multiple numbers).

```c
#include <stdio.h>

int main() {
    int num;
    printf("Enter a number: ");
    scanf("%d", &num);

    if (num % 2 == 0)
        printf("%d is even\n", num);
    else
        printf("%d is odd\n", num);
    return 0;
}
```

---

### 3. **Sum of First N Natural Numbers**
   Write a program that calculates the sum of the first N natural numbers using a `for` loop.

```c
#include <stdio.h>

int main() {
    int n, sum = 0;
    printf("Enter a number: ");
    scanf("%d", &n);
    
    for (int i = 1; i <= n; i++) {
        sum += i;
    }
    printf("Sum of first %d natural numbers is %d\n", n, sum);
    return 0;
}
```

---

### 4. **Factorial of a Number**
   Calculate the factorial of a number using a loop.

```c
#include <stdio.h>

int main() {
    int num, factorial = 1;
    printf("Enter a number: ");
    scanf("%d", &num);
    
    for (int i = 1; i <= num; i++) {
        factorial *= i;
    }
    printf("Factorial of %d is %d\n", num, factorial);
    return 0;
}
```

---

### 5. **Fibonacci Sequence**
   Print the first N numbers in the Fibonacci sequence using a `for` loop.

```c
#include <stdio.h>

int main() {
    int n, a = 0, b = 1, next;
    printf("Enter the number of terms: ");
    scanf("%d", &n);
    
    for (int i = 1; i <= n; i++) {
        printf("%d ", a);
        next = a + b;
        a = b;
        b = next;
    }
    return 0;
}
```

---

### 6. **Reverse a Number**
   Reverse a given number using a `while` loop.

```c
#include <stdio.h>

int main() {
    int num, reversed = 0;
    printf("Enter a number: ");
    scanf("%d", &num);
    
    while (num != 0) {
        reversed = reversed * 10 + num % 10;
        num /= 10;
    }
    printf("Reversed number is: %d\n", reversed);
    return 0;
}
```

---

### 7. **Check Prime Number**
   Check if a number is prime using a `for` loop.

```c
#include <stdio.h>

int main() {
    int num, flag = 0;
    printf("Enter a number: ");
    scanf("%d", &num);
    
    for (int i = 2; i <= num / 2; i++) {
        if (num % i == 0) {
            flag = 1;
            break;
        }
    }
    if (num <= 1) {
        printf("%d is not a prime number.\n", num);
    } else if (flag == 0) {
        printf("%d is a prime number.\n", num);
    } else {
        printf("%d is not a prime number.\n", num);
    }
    return 0;
}
```

---

### 8. **Print Multiplication Table**
   Print the multiplication table of a number up to 10 using a loop.

```c
#include <stdio.h>

int main() {
    int num;
    printf("Enter a number: ");
    scanf("%d", &num);
    
    for (int i = 1; i <= 10; i++) {
        printf("%d x %d = %d\n", num, i, num * i);
    }
    return 0;
}
```

---

### 9. **Palindrome Number Check**
   Check whether a number is a palindrome using a loop.

```c
#include <stdio.h>

int main() {
    int num, reversed = 0, original, digit;
    printf("Enter a number: ");
    scanf("%d", &num);
    
    original = num;
    while (num != 0) {
        digit = num % 10;
        reversed = reversed * 10 + digit;
        num /= 10;
    }
    
    if (original == reversed)
        printf("%d is a palindrome number.\n", original);
    else
        printf("%d is not a palindrome number.\n", original);
    return 0;
}
```

---

### 10. **Count Digits in a Number**
   Count the number of digits in a given number using a `while` loop.

```c
#include <stdio.h>

int main() {
    int num, count = 0;
    printf("Enter a number: ");
    scanf("%d", &num);
    
    while (num != 0) {
        num /= 10;
        count++;
    }
    
    printf("The number has %d digits.\n", count);
    return 0;
}
```

---

### 11. **Sum of Digits**
   Find the sum of digits of a number using a loop.

```c
#include <stdio.h>

int main() {
    int num, sum = 0;
    printf("Enter a number: ");
    scanf("%d", &num);
    
    while (num != 0) {
        sum += num % 10;
        num /= 10;
    }
    
    printf("Sum of digits is %d\n", sum);
    return 0;
}
```

---

### 12. **Print a Square of Stars**
   Print a square of stars (`*`) with size N using nested loops.

```c
#include <stdio.h>

int main() {
    int n;
    printf("Enter the size of the square: ");
    scanf("%d", &n);
    
    for (int i = 1; i <= n; i++) {
        for (int j = 1; j <= n; j++) {
            printf("* ");
        }
        printf("\n");
    }
    return 0;
}
```

---

### 13. **Print a Pyramid Pattern**
   Print a pyramid of stars with a given height.

```c
#include <stdio.h>

int main() {
    int n;
    printf("Enter the height of the pyramid: ");
    scanf("%d", &n);
    
    for (int i = 1; i <= n; i++) {
        for (int j = 1; j <= n - i; j++) {
            printf(" ");
        }
        for (int k = 1; k <= 2 * i - 1; k++) {
            printf("*");
        }
        printf("\n");
    }
    return 0;
}
```

---

### 14. **Find the GCD of Two Numbers**
   Find the greatest common divisor (GCD) of two numbers using a loop.

```c
#include <stdio.h>

int main() {
    int a, b, i, gcd;
    printf("Enter two numbers: ");
    scanf("%d %d", &a, &b);
    
    for (i = 1; i <= a && i <= b; i++) {
        if (a % i == 0 && b % i == 0) {
            gcd = i;
        }
    }
    printf("GCD of %d and %d is %d\n", a, b, gcd);
    return 0;
}
```

---

### 15. **Find the LCM of Two Numbers**
   Find the least common multiple (LCM) of two numbers using a loop.

```c
#include <stdio.h>

int main() {
    int a, b, lcm;
    printf("Enter two numbers: ");
    scanf("%d %d", &a, &b);
    
    for (lcm = (a > b) ? a : b; lcm <= a * b; lcm++) {
        if (lcm % a == 0 && lcm % b == 0) {
            printf("LCM of %d and %d is %d\n", a, b, lcm);
            break;
        }
    }
    return 0;
}
```

---

### 16. **Multiplication Table in Reverse Order**
   Print the multiplication table of a number in reverse order.

```c
#include <stdio.h>

int main() {
    int num;
    printf("Enter a number: ");
    scanf("%d", &num);
    
    for (int i = 10; i >= 1; i--) {
        printf("%d x %d = %d\n", num, i, num * i);
    }
    return 0;
}
```

---

### 17. **Find the Number of Vowels in a String**
   Count the number of vowels in a string using a loop.

```c
#include <stdio.h>
#include <ctype.h>

int main() {
    char str[100];
    int count = 0;
    
    printf("Enter a string: ");
    fgets(str, sizeof(str), stdin);
    
    for (int i = 0; str[i] != '\0'; i++) {
        char c = tolower(str[i]);
        if (c == 'a' || c == 'e' || c == 'i' || c == 'o' || c == 'u') {
            count++;
        }
    }
    printf("Number of vowels: %d\n", count);
    return 0;
}
```

---

### 18. **Print a Right-Angled Triangle of Stars**
   Print a right-angled triangle pattern using stars.

```c
#include <stdio.h>

int main() {
    int n;
    printf("Enter the height of the triangle: ");
    scanf("%d", &n);
    
    for (int i = 1; i <= n; i++) {
        for (int j = 1; j <= i; j++) {
            printf("*");
        }
        printf("\n");
    }
    return 0;
}
```

---

### 19. **Find Armstrong Number**
   Check if a number is an Armstrong number (sum of cubes of digits equals the number itself).

```c
#include <stdio.h>
#include <math.h>

int main() {
    int num, sum = 0, temp, remainder, digits;
    printf("Enter a number: ");
    scanf("%d", &num);
    
    temp = num;
    digits = (int)log10(num) + 1;
    
    while (temp != 0) {
        remainder = temp % 10;
        sum += pow(remainder, digits);
        temp /= 10;
    }
    
    if (sum == num)
        printf("%d is an Armstrong number.\n", num);
    else
        printf("%d is not an Armstrong number.\n", num);
    
    return 0;
}
```

---

### 20. **Print a Diamond Pattern**
   Print a diamond shape pattern of stars.

```c
#include <stdio.h>

int main() {
    int n;
    printf("Enter the height of the diamond: ");
    scanf("%d", &n);
    
    // Upper part of the diamond
    for (int i = 1; i <= n; i++) {
        for (int j = 1; j <= n - i; j++) {
            printf(" ");
        }
        for (int k = 1; k <= 2 * i - 1; k++) {
            printf("*");
        }
        printf("\n");
    }
    
    // Lower part of the diamond
    for (int i = n - 1; i >= 1; i--) {
        for (int j = 1; j <= n - i; j++) {
            printf(" ");
        }
        for (int k = 1; k <= 2 * i - 1; k++) {
            printf("*");
        }
        printf("\n");
    }
    
    return 0;
}
```

---
