#include <iostream>
using namespace std;

class Product {
private:
    string productName;
    double price;
    int stock;

public:
    // Constructor to initialize product details
    Product(string name, double p, int s) {
        productName = name;
        price = p;
        stock = s;
        cout << "Product Added: " << productName << " | Price: $" << price << " | Stock: " << stock << endl;
    }

    // Method to sell a product
    void sellProduct(int quantity) {
        if (quantity > stock) {
            cout << "Not enough stock available!\n";
        } else {
            stock -= quantity;
            cout << quantity << " " << productName << "(s) sold! Remaining stock: " << stock << endl;
        }
    }

    // Method to restock product
    void restock(int quantity) {
        stock += quantity;
        cout << productName << " restocked! New stock: " << stock << endl;
    }

    // Display product details
    void displayProduct() {
        cout << "Product: " << productName << " | Price: $" << price << " | Stock: " << stock << endl;
    }

    // Destructor
    ~Product() {
        cout << "Product " << productName << " is removed from inventory.\n";
    }
};

int main(void) {
    // Creating a product object
    Product laptop("Laptop", 1200.50, 10);

    // Performing sales operations
    laptop.sellProduct(3);
    laptop.restock(5);
    laptop.sellProduct(8);
    laptop.displayProduct();
    
    cout << "-------------------" << endl;
    Product sam("mobile", 12000, 20);
    sam.sellProduct(8);
    sam.restock(8);
    sam.displayProduct();
    
    // return 0; // Destructor is called automatically when object goes out of scope
}
