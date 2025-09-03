#include <iostream>
#include <fstream>
#include <string>
#include <vector>
#include <memory>

using namespace std;

// Structure to demonstrate pointer usage
struct Student {
    int id;
    string name;
    double gpa;
    //constructor of the struct
    Student(int id, string name, double gpa) : id(id), name(name), gpa(gpa) {}
    
    void display() const {
        cout << "ID: " << id << ", Name: " << name << ", GPA: " << gpa << endl;
    }
};

// Function to demonstrate basic pointer operations
void demonstratePointers() {
    cout << "\n=== POINTER DEMONSTRATION ===\n" << endl;
    
    // 1. Basic pointer declaration and usage
    int num = 42;
    int* ptr = &num;
    cout << "Value of num: " << num << endl;
    cout << "Address of num: " << &num << endl;
    cout << "Value via pointer: " << *ptr << endl;
    cout << "Pointer address: " << ptr << endl;
    
    // 2. Pointer arithmetic
    int arr[] = {10, 20, 30, 40, 50};
    int* arrPtr = arr;
    cout << "\nArray elements via pointer arithmetic:" << endl;
    for(int i = 0; i < 5; i++) {
        cout << "arr[" << i << "] = " << *(arrPtr + i) << " at address: " << (arrPtr + i) << endl;
    }
    
    // 3. Dynamic memory allocation
    int* dynamicInt = new int(100);
    cout << "\nDynamically allocated integer: " << *dynamicInt << endl;
    delete dynamicInt; // Don't forget to free memory!
    
    // 4. Pointer to structure
    Student student1(101, "Alice", 3.8);
    Student* studentPtr = &student1;
    cout << "\nStudent via pointer:" << endl;
    studentPtr->display();
    
    // 5. Dynamic object creation
    Student* dynamicStudent = new Student(102, "Bob", 3.9);
    cout << "Dynamic student:" << endl;
    dynamicStudent->display();
    delete dynamicStudent;
}


int main() {
    cout << "C++ Pointers and File Handling Demonstration" << endl;
    cout << "============================================" << endl;
    
    demonstratePointers();
    //demonstrateFileHandling();
    //demonstrateSmartPointers();
    
    cout << "\n=== PROGRAM COMPLETED ===" << endl;
    return 0;
}
