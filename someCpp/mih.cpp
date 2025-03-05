#include <iostream>
using namespace std;

class Call {
protected:
   string message;
public:
   Call() {
       message = "Parent Call class";
   }
   virtual void print() {
       cout << message << endl;
   }
};

class Message {
protected:
   string notification;
public:
   Message() {
       notification = "Parent Message class";
   }
   virtual void notify() {
       cout << notification << endl;
   }
};

class Missed : public Call, public Message {
private:
   int missedCount;
public:
   Missed() {
       message = "You have a missed call";
       notification = "New notification!";
       missedCount = 1;
   }
   void print() override {
       cout << message << endl;
       cout << "Number of missed calls: " << missedCount << endl;
   }
   void notify() override {
       cout << notification << endl;
       cout << "Please check your phone!" << endl;
   }
};

int main() {
   Missed m;
   m.print();    // Call class method
   m.notify();   // Message class method
   return 0;
}