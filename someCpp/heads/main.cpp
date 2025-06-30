#include "quadratic.h"

int main() {
    double a, b, c;

    std::cout << "Enter coefficients a, b and c: ";
    std::cin >> a >> b >> c;

    if (a == 0) {
        std::cout << "Not a quadratic equation (a cannot be 0)." << std::endl;
    } else {
        findRoots(a, b, c);
    }

    return 0;
}
