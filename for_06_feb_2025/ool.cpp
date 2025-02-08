class Number {
private:
    int value;

public:
    // Constructor
    Number(int val = 0) {
        value = val;
    }

    // Addition operator
    Number operator + (Number obj) {
        Number temp;
        temp.value = value + obj.value;
        return temp;
    }

    // Subtraction operator
    Number operator - (Number obj) {
        Number temp;
        temp.value = value - obj.value;
        return temp;
    }

    // Multiplication operator
    Number operator * (Number obj) {
        Number temp;
        temp.value = value * obj.value;
        return temp;
    }

    // Division operator
    Number operator / (Number obj) {
        Number temp;
        if (obj.value != 0) {
            temp.value = value / obj.value;
        }
        return temp;
    }

    // Prefix increment (++x)
    Number operator ++ () {
        Number temp;
        value = value + 1;
        temp.value = value;
        return temp;
    }

    // Postfix increment (x++)
    Number operator ++ (int) {
        Number temp;
        temp.value = value;
        value = value + 1;
        return temp;
    }

    // Less than operator
    bool operator < (Number obj) {
        return value < obj.value;
    }

    // Greater than operator
    bool operator > (Number obj) {
        return value > obj.value;
    }

    // Equality operator
    bool operator == (Number obj) {
        return value == obj.value;
    }

    // Get value
    int getValue() {
        return value;
    }
};

// Example usage:
int main() {
    Number n1(10);
    Number n2(5);

    // Basic arithmetic
    Number sum = n1 + n2;
    Number diff = n1 - n2;
    Number prod = n1 * n2;
    Number quot = n1 / n2;

    cout << "n1 = " << n1.getValue() << endl;
    cout << "n2 = " << n2.getValue() << endl;
    cout << "Sum = " << sum.getValue() << endl;
    cout << "Difference = " << diff.getValue() << endl;
    cout << "Product = " << prod.getValue() << endl;
    cout << "Quotient = " << quot.getValue() << endl;

    // Increment operators
    Number n3(1);
    Number n4;
    
    n4 = ++n3;    // Prefix increment
    cout << "After prefix increment: " << endl;
    cout << "n3 = " << n3.getValue() << endl;
    cout << "n4 = " << n4.getValue() << endl;

    n4 = n3++;    // Postfix increment
    cout << "After postfix increment: " << endl;
    cout << "n3 = " << n3.getValue() << endl;
    cout << "n4 = " << n4.getValue() << endl;

    // Comparison operators
    if (n1 > n2) {
        cout << n1.getValue() << " is greater than " << n2.getValue() << endl;
    }

    if (n1 < n2) {
        cout << n1.getValue() << " is less than " << n2.getValue() << endl;
    }

    Number n5(10);
    if (n1 == n5) {
        cout << n1.getValue() << " is equal to " << n5.getValue() << endl;
    }

    return 0;
}
