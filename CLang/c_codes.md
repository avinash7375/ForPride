Sure! Below is a complete set of C programs for each topic, including the necessary headers. These will help you understand the concepts better while preparing for OS programming.  

---

# **1. Introduction to C**
```c
#include <stdio.h>

int main() {
    printf("Hello, World!\n");
    return 0;
}
```
---

# **2. Operators in C**
```c
#include <stdio.h>

int main() {
    int a = 10, b = 5;

    // Arithmetic Operators
    printf("Addition: %d\n", a + b);
    printf("Subtraction: %d\n", a - b);
    printf("Multiplication: %d\n", a * b);
    printf("Division: %d\n", a / b);
    printf("Modulus: %d\n", a % b);

    // Relational Operators
    printf("Equal: %d\n", a == b);
    printf("Greater: %d\n", a > b);

    // Logical Operators
    printf("AND: %d\n", (a > 5 && b < 10));
    printf("OR: %d\n", (a > 5 || b > 10));

    // Bitwise Operators
    printf("Bitwise AND: %d\n", a & b);
    printf("Bitwise OR: %d\n", a | b);

    return 0;
}
```
---

# **3. Data Types and Variables in C**
```c
#include <stdio.h>

int main() {
    int age = 25;
    float pi = 3.14;
    char grade = 'A';

    printf("Age: %d\n", age);
    printf("Pi: %.2f\n", pi);
    printf("Grade: %c\n", grade);

    return 0;
}
```
---

# **4. Decision-Making Statements**
```c
#include <stdio.h>

int main() {
    int age;
    printf("Enter your age: ");
    scanf("%d", &age);

    if (age >= 18) {
        printf("You are an adult.\n");
    } else {
        printf("You are a minor.\n");
    }

    char grade = 'B';
    switch (grade) {
        case 'A': printf("Excellent!\n"); break;
        case 'B': printf("Good\n"); break;
        default: printf("Invalid Grade\n");
    }

    return 0;
}
```
---

# **5. Loops in C**
```c
#include <stdio.h>

int main() {
    printf("For Loop:\n");
    for (int i = 1; i <= 5; i++) {
        printf("%d ", i);
    }

    printf("\nWhile Loop:\n");
    int i = 1;
    while (i <= 5) {
        printf("%d ", i);
        i++;
    }

    printf("\nDo-While Loop:\n");
    i = 1;
    do {
        printf("%d ", i);
        i++;
    } while (i <= 5);

    return 0;
}
```
---

# **6. Functions in C**
```c
#include <stdio.h>

int add(int a, int b) {
    return a + b;
}

int main() {
    int result = add(5, 10);
    printf("Sum: %d\n", result);
    return 0;
}
```
---

# **7. Arrays in C**
```c
#include <stdio.h>

int main() {
    int numbers[5] = {1, 2, 3, 4, 5};

    for (int i = 0; i < 5; i++) {
        printf("Element %d: %d\n", i, numbers[i]);
    }

    return 0;
}
```
---

# **8. String Functions in C**
```c
#include <stdio.h>
#include <string.h>

int main() {
    char str1[20] = "Hello";
    char str2[20] = "World";

    strcat(str1, str2);
    printf("Concatenated String: %s\n", str1);

    printf("Length of String: %ld\n", strlen(str1));

    return 0;
}
```
---

# **9. Pointers in C**
```c
#include <stdio.h>

int main() {
    int x = 10;
    int *ptr = &x;

    printf("Value of x: %d\n", x);
    printf("Address of x: %p\n", &x);
    printf("Value using pointer: %d\n", *ptr);

    return 0;
}
```
---

# **10. Structure in C**
```c
#include <stdio.h>
#include <string.h>

struct Person {
    char name[50];
    int age;
};

int main() {
    struct Person p1;
    strcpy(p1.name, "John");
    p1.age = 25;

    printf("Name: %s, Age: %d\n", p1.name, p1.age);

    return 0;
}
```
---

# **11. Union in C**
```c
#include <stdio.h>

union Data {
    int i;
    float f;
};

int main() {
    union Data d;
    d.i = 10;
    printf("Integer: %d\n", d.i);

    d.f = 3.14;
    printf("Float: %.2f\n", d.f); // Overwrites previous value

    return 0;
}
```
---

# **12. Input and Output in C**
```c
#include <stdio.h>

int main() {
    char name[20];
    printf("Enter your name: ");
    scanf("%s", name);
    printf("Hello, %s!\n", name);

    return 0;
}
```
---

# **13. File Handling in C**
```c
#include <stdio.h>

int main() {
    FILE *fptr;

    // Writing to a file
    fptr = fopen("test.txt", "w");
    if (fptr == NULL) {
        printf("Error opening file.\n");
        return 1;
    }
    fprintf(fptr, "Hello, File Handling!");
    fclose(fptr);

    // Reading from a file
    char buffer[50];
    fptr = fopen("test.txt", "r");
    if (fptr == NULL) {
        printf("Error opening file.\n");
        return 1;
    }
    fgets(buffer, 50, fptr);
    printf("File content: %s\n", buffer);
    fclose(fptr);

    return 0;
}
```
---

This tutorial gives you fully working C programs with the required headers. Let me know if you need explanations or modifications! 🚀
