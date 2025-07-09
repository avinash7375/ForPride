#include <iostream>
#include <string>
using namespace std;

class Animal {
public:
    // Properties
    string name;
    string color;
    int age;
    double weight;

    // Constructor
    Animal(string n, string c) {
        name = n;
        color = c;
    }

    // Method to display info
    void displayInfo() {
        cout << "Animal Name: " << name << endl;
        cout << "Color: " << color << endl;
        cout << "Age: " << age << " years" << endl;
        cout << "Weight: " << weight << " kg" << endl;
    }
};

int main() {
    // Create an object with constructor
    Animal myAnimal("Tiger", "Orange");

    // Set remaining properties
    myAnimal.age = 5;
    myAnimal.weight = 220.5;

    // Display information
    myAnimal.displayInfo();

    return 0;
}
