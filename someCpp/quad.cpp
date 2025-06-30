#include <iostream>
#include <cmath>
using namespace std;

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
        cout << "Real and distinct roots: " << root1 << ", " << root2 << endl;
    }
    else if (d == 0) {
        double root = -b / (2 * a);
        cout << "Real and equal roots: " << root << endl;
    }
    else {
        double realPart = -b / (2 * a);
        double imagPart = sqrt(-d) / (2 * a);
        cout << "Complex roots: " << realPart << " + " << imagPart << "i, ";
        cout << realPart << " - " << imagPart << "i" << endl;
    }
}

int main() {
    double a, b, c;

    cout << "Enter coefficients a, b and c: ";
    cin >> a >> b >> c;

    if (a == 0) {
        cout << "Not a quadratic equation (a cannot be 0)." << endl;
    } else {
        findRoots(a, b, c);
    }

    return 0;
}
