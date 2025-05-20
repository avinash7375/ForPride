#include <iostream>
using namespace std;

// Node structure
struct Node {
    int data;
    Node* left;
    Node* right;

    Node(int value) {
        data = value;
        left = right = nullptr;
    }
};

// BST class
class BST {
private:
    Node* root;

    // Helper for insert
    Node* insert(Node* node, int value) {
        if (node == nullptr) {
            return new Node(value);
        }
        if (value < node->data) {
            node->left = insert(node->left, value);
        } else if (value > node->data) {
            node->right = insert(node->right, value);
        }
        return node;
    }

    // Helper for in-order traversal
    void inorder(Node* node) {
        if (node != nullptr) {
            inorder(node->left);
            cout << node->data << " ";
            inorder(node->right);
        }
    }

    // Helper for search
    bool search(Node* node, int value) {
        if (node == nullptr) return false;
        if (value == node->data) return true;
        if (value < node->data) return search(node->left, value);
        return search(node->right, value);
    }

    // Helper for deleting a node
    Node* deleteNode(Node* node, int value) {
        if (node == nullptr) return nullptr;

        if (value < node->data) {
            node->left = deleteNode(node->left, value);
        } else if (value > node->data) {
            node->right = deleteNode(node->right, value);
        } else {
            // Node with only one child or no child
            if (node->left == nullptr) {
                Node* temp = node->right;
                delete node;
                return temp;
            } else if (node->right == nullptr) {
                Node* temp = node->left;
                delete node;
                return temp;
            }

            // Node with two children: Get the inorder successor (smallest in the right subtree)
            Node* temp = minValueNode(node->right);
            node->data = temp->data;
            node->right = deleteNode(node->right, temp->data);
        }
        return node;
    }

    // Helper to find the minimum value node
    Node* minValueNode(Node* node) {
        Node* current = node;
        while (current && current->left != nullptr)
            current = current->left;
        return current;
    }

public:
    BST() { root = nullptr; }

    void insert(int value) {
        root = insert(root, value);
    }

    void inorder() {
        inorder(root);
        cout << endl;
    }

    bool search(int value) {
        return search(root, value);
    }

    void deleteValue(int value) {
        root = deleteNode(root, value);
    }
};

// Main function
int main() {
    BST tree;
    tree.insert(50);
    tree.insert(30);
    tree.insert(20);
    tree.insert(40);
    tree.insert(70);
    tree.insert(60);
    tree.insert(80);

    cout << "In-order traversal: ";
    tree.inorder();

    cout << "Search 40: " << (tree.search(40) ? "Found" : "Not Found") << endl;
    cout << "Delete 20\n";
    tree.deleteValue(20);
    cout << "In-order traversal after deletion: ";
    tree.inorder();

    return 0;
}
