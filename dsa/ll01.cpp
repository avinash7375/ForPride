//This is Singly LInked List - example

#include <iostream>

using namespace std;

// A linked list node
class Node {
public:
    int data;
    Node* next;

    // Constructor to initialize a new node with data
    Node(int new_data) {
        this->data = new_data;
        this->next = nullptr;
    }
};

// Function to traverse and print the singly linked list
void traverseList(Node* head) {

    // A loop that runs till head is nullptr
    while (head != nullptr) {

        // Printing data of current node
        cout << &head->data << " ";

        // Moving to the next node
        head = head->next;
    }
    cout << endl;
}

// Driver Code
int main() {
  
    // Create a hard-coded linked list:
    // 10 -> 20 -> 30 -> 40
    Node* head = new Node(10);
    head->next = new Node(20);
    head->next->next = new Node(30);
    head->next->next->next = new Node(40);

    // Example of traversing the node and printing
    traverseList(head);

    return 0;
}



// Employye system with lisked list
