#include <iostream>
using namespace std;

class Call {
protected:
   string message;
public:
   Call() {
       message = "Parent class message";
   }
   virtual void print() {
       cout << message << endl;
   }
};

class Missed : public Call {
public:
   Missed() {
       message = "You have a missed call";
   }
   void print() override {
       cout << message << endl;
       cout << "Please call back!" << endl;
   }
};

int main() {
   Call* c = new Missed();
   c->print();
   delete c;
   return 0;
}