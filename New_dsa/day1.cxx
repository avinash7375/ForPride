#include <iostream>
using namespace std;

class Node {
public:
    int data;
    Node *left, *right;
    Node(int x) {
        data = x;
        left = nullptr;
        right = nullptr;
    }
};

// Function to traverse the tree in preorder
// and check if the given node exists in it
bool ifNodeExists(Node* root, int key) {
    if (root == nullptr)
        return false;

    if (root->data == key)
        return true;

    bool res1 = ifNodeExists(root->left, key);
    if (res1) return true;

    return ifNodeExists(root->right, key);
}

int main() {
    // Build the binary tree
    Node* root = new Node(0);
    root->left = new Node(1);
    root->left->left = new Node(3);
    root->left->left->left = new Node(7);
    root->left->right = new Node(4);
    root->left->right->left = new Node(8);
    root->left->right->right = new Node(9);
    root->right = new Node(2);
    root->right->left = new Node(5);
    root->right->right = new Node(6);

    int key;
    cout << "Enter the key to search in the binary tree: ";
    cin >> key;

    if (ifNodeExists(root, key))
        cout << "True\n";
    else
        cout << "False\n";

    return 0;
}
