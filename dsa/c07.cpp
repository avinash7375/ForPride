// C++ program to implement iterative Binary Search
#include <bits/stdc++.h>
using namespace std;

// An iterative binary search function.
int binarySearch(int arr[], int low, int high, int target)
{
    while (low <= high) {
        int mid = low + (high - low) / 2;

        // Check if target is present at mid
        if (arr[mid] == target)
            return mid;

        // If target greater, ignore left half
        if (arr[mid] < target)
            low = mid + 1;

        // If target is smaller, ignore right half
        else
            high = mid - 1;
    }

    // If we reach here, then element was not present
    return -1;
}

// Driver code
int main(void)
{
    int arr[] = { 2, 3, 4, 10, 40 };
    
    int target = 42;
    cout << "Target = " << target << endl;
    int n = sizeof(arr) / sizeof(arr[0]);
    for(int i = 0;i<n;i++){
        cout << arr[i] << " ";
    }
    cout << endl;
    int result = binarySearch(arr, 0, n - 1, target);
    if(result == -1) cout << "Element is not present in array";
    else cout << "Element is present at indetarget " << result;
    return 0;
}
