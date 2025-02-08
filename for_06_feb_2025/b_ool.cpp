// Code for operator overloading for 2 operators in class names 'Num'
#include<iostream>
using namespace std;

class Num {
private:
    int value;
    
public:
    //constructor
    Num(int val = 0) {
        value = val;
    }
    
    // Add the operator+ function
    Num operator+(Num obj) {
        Num temp;
        temp.value = value + obj.value;
        return temp;
    }
    // Add the operator+ function
    Num operator-(Num obj) {
        Num temp;
        temp.value = value - obj.value;
        return temp;
    }

  
    int get_value() {
        return value;  // Changed from val to value
    }
};

int main(void) {
    Num n1 = 20;
    Num n2 = 30;
    
    Num sum = n1.operator+(n2);  // You can also write this as: Num sum = n1 + n2;
    Num sub = n1.operator-(n2);
    cout << sum.get_value() << "\n";
    cout << sub.get_value() << "\n";
    
    return 0;
}
