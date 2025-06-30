#ifndef QUADRATIC_H
#define QUADRATIC_H

#include <iostream>
#include <cmath>

// Function to calculate the discriminant
double getDiscriminant(double a, double b, double c) {
    return (b * b) - (4 * a * c);
}

// Function to calculate and print roots
void findRoots(double a, double b, double c) {
    double d = getDiscriminant(a, b, c);

    if (d > 0) {
        double root1 = (-b + sqrt(d)) / (2 * a);
        double root2 = (-b - sqrt(d)) / (2 * a);
        std::cout << "Real and distinct roots: " << root1 << ", " << root2 << std::endl;
    }
    else if (d == 0) {
        double root = -b / (2 * a);
        std::cout << "Real and equal roots: " << root << std::endl;
    }
    else {
        double realPart = -b / (2 * a);
        double imagPart = sqrt(-d) / (2 * a);
        std::cout << "Complex roots: " << realPart << " + " << imagPart << "i, ";
        std::cout << realPart << " - " << imagPart << "i" << std::endl;
    }
}

#endif // QUADRATIC_H
