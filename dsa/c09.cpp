#include <iostream>
#include <vector>
using namespace std;

int main() {
    vector<int> arr = {5, 2, 4, 1, 7, 21, 11, 12, 43, 32};
    int size = arr.size();

    // Bubble Sort
    for(int i = 0; i < size - 1; i++) {
        for (int j = 0; j < size - i - 1; j++) {
            if(arr[j] > arr[j+1]) {
                int temp = arr[j];
                arr[j] = arr[j+1];
                arr[j+1] = temp;
            }
        }
        // Optional: print array after each pass to trace sorting
        cout << "Pass " << i+1 << ": ";
        for (int k = 0; k < size; k++) {
            cout << arr[k] << " ";
        }
        cout << endl;
    }

    // Final Sorted Array
    cout << "Sorted Array: ";
    for (int val : arr) {
        cout << val << " ";
    }
    cout << endl;

    return 0;
}
