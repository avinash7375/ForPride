#include <stdio.h>

int main() {
    int a = 10, b = 5;
    
    // Arithmetic operators
    printf("Addition: %d\n", a + b);
    printf("Subtraction: %d\n", a - b);
    printf("Multiplication: %d\n", a * b);
    printf("Division: %d\n", a / b);
    printf("Modulus: %d\n", a % b);

    // Relational operators
    printf("a > b: %d\n", a > b);
    printf("a < b: %d\n", a < b);

    // Logical operators
    printf("a > 5 && b < 10: %d\n", (a > 5 && b < 10));
    printf("a > 5 || b > 10: %d\n", (a > 5 || b > 10));

    // Bitwise operators
    printf("a & b: %d\n", a & b);
    printf("a | b: %d\n", a | b);
    printf("a ^ b: %d\n", a ^ b);

    return 0;
}
