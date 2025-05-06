#include <iostream>           // For input/output operations
#include <stack>              // For using the stack container
#include <vector>             // Not used in this code, but included (can be removed)
#include <string>             // For using the string class

using namespace std;          // To avoid prefixing std:: before standard names

const int MAX_SIZE = 10;      // Constant for the maximum number of names in primaryStack

int main() {
    stack<string> primaryStack;               // Stack to temporarily store names (max 10)
    stack<stack<string>> secondaryStack;      // Stack of stacks to store batches of 10 names
    string name;                              // Variable to hold input name

    while (true) {                            // Infinite loop to take user input
        cout << "Enter a name (or type 'exit' to stop): ";
        getline(cin, name);                   // Read full line including spaces

        if (name == "exit") break;            // Exit loop if user types "exit"

        primaryStack.push(name);              // Push the entered name to the primary stack

        if (primaryStack.size() == MAX_SIZE) {  // Check if primary stack is full
            stack<string> batch;              // Create a new stack to hold the batch

            // Reverse elements to maintain input order in the batch stack
            while (!primaryStack.empty()) {
                batch.push(primaryStack.top());  // Push top name to batch
                primaryStack.pop();              // Remove it from primary stack
            }

            secondaryStack.push(batch);       // Push the batch into secondary stack
            cout << "Primary stack full. Moved batch to secondary stack." << endl;
        }
    }

    // If any names are left after user exits and it's not a full batch
    if (!primaryStack.empty()) {
        stack<string> batch;                  // Create a new batch stack

        while (!primaryStack.empty()) {
            batch.push(primaryStack.top());   // Reverse order again
            primaryStack.pop();
        }

        secondaryStack.push(batch);           // Push final batch into secondary stack
        cout << "Moved final batch to secondary stack." << endl;
    }

    // Display all the batches stored in the secondary stack
    cout << "\nNames in secondary stack (batches):" << endl;
    int batchNum = 1;                          // To label batch numbers

    while (!secondaryStack.empty()) {
        cout << "Batch " << batchNum++ << ":" << endl;
        stack<string> batch = secondaryStack.top(); // Get top batch
        secondaryStack.pop();                        // Remove it from secondary stack

        while (!batch.empty()) {
            cout << "  " << batch.top() << endl;  // Print each name
            batch.pop();                          // Remove name from batch
        }
    }

    return 0; // End of program
}
