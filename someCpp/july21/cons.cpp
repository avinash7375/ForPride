#include <iostream>
using namespace std;

class A {
public:
    int x;
    A(){};
  
  	// Copy Constructor definition
    A (A& obj) {
        x = obj.x;
      	cout << "Copy constructor "
      	        "called" << endl;
    }
};

int main() {
  
  	// Creating an object of
  	// class A
    A obj1;
    obj1.x = 10;
    cout << "obj1's x = " << obj1.x << endl;

    // Creating another object by
    // copying already created object
    A obj2(obj1);
    cout << "obj2's x = " << obj2.x;
    return 0;
}