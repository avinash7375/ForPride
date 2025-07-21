#include <iostream>
using namespace std;

class Call {
//encapsulation mechanism - protected
protected:
   string message;
public:
   
	//tools of polymorphism - multiple uses of function and classes
   virtual void print() {		//function overriding
       cout << message << endl;
   }
   void hello() {
	cout << "hello" << endl;
   };
};

class Missed : public Call {
public:
	//method overloading
   void print() override {
       cout << message << endl;
       cout << "Please call back!" << endl;
   };

};

int main() {
   Missed c;
   
   c.print();
   c.hello();

	
   return 0;
}