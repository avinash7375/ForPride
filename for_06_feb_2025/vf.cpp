// Base class with virtual function
class Calculator {
public:
   virtual int add(int a, int b) {
       return a + b;
   }
};

// Derived class implementing virtual function 
class AdvancedCalculator : public Calculator {
public:
   int add(int a, int b) override {
       return Calculator::add(a, b);
   }
};

int main() {
   Calculator* calc = new AdvancedCalculator();
   cout << calc->add(10, 20) << endl; // Outputs: 30
   delete calc;
   return 0;
}