### 01
```#include <stdio.h>

int main() {
    printf("Size of int: %lu bytes\n", sizeof(int));
    printf("Size of float: %lu bytes\n", sizeof(float));
    printf("Size of double: %lu bytes\n", sizeof(double));
    printf("Size of char: %lu bytes\n", sizeof(char));
    return 0;
}
```

### 02
```
#include <stdio.h>

int main() {
    char ch = 'A';
    printf("ASCII value of %c is %d\n", ch, ch);
    return 0;
}

```

### 03
```
#include <stdio.h>

int main() {
    int x = 10, y = 4;
    printf("Result of x / y: %d\n", x / y);
    return 0;
}
```

### 04

```
#include <stdio.h>

int main() {
    float f = 3.1415926535f;
    double d = 3.1415926535;

    printf("Float value: %.10f\n", f);
    printf("Double value: %.10f\n", d);
    
    return 0;
}
```

### 05

```
#include <stdio.h>

int main() {
    float f = 3.1415926535f;
    double d = 3.1415926535;

    printf("Float value: %.10f\n", f);
    printf("Double value: %.10f\n", d);
    
    return 0;
}
```

### 06
```
#include <stdio.h>

int main() {
    int a = 5, b = 3;
    printf("a & b = %d\n", a & b);
    return 0;
}
```

### 07
```
#include <stdio.h>

int main() {
    int result = 10 + 5 * 2;
    printf("Result: %d\n", result); // Multiplication has higher precedence than addition
    return 0;
}
```

### 08
```
#include <stdio.h>

int main() {
    int a = 1, b = 0, c = 3;
    printf("a || (b && c) = %d\n", a || (b && c));
    return 0;
}
```

### 09
```
#include <stdio.h>

int main() {
    int x = 10, y = 20;
    printf("Is x greater than y? %d\n", x > y);
    return 0;
}
```

### 10
```
#include <stdio.h>

int main() {
    printf("5 %% 2 = %d\n", 5 % 2);
    return 0;
}
```
