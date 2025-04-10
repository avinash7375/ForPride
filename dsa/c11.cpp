//selection sort

#include <iostream>
using namespace std;

int main() {
    int arr[5] = {29, 10, 14, 37, 13};

    for (int i = 0; i < 5; i++) {
        int min = i;
        for (int j = i + 1; j < 5; j++) {
            if (arr[j] < arr[min])
                min = j;
        }
        // Swap
        int temp = arr[i];
        arr[i] = arr[min];
        arr[min] = temp;
    }

    // Print sorted array
    for (int i = 0; i < 5; i++)
        cout << arr[i] << " ";

    return 0;
}

