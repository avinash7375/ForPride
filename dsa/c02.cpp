#include <bits/stdc++.h>
using namespace std;

// Returns count of rotations for an array which
// is first sorted in ascending order, then rotated
int countRotations(vector<int>& arr)
{
    // Find index of minimum element
    int min = arr[0], min_index = 0;
    for (int i = 0; i < arr.size(); i++) {
        if (min > arr[i]) {
            min = arr[i];
            min_index = i;
        }
    }
    return min_index;
}

// Driver code
int main()
{
    vector<int> arr = { 19, 22,32,  2, 3, 6, 12 };
    cout << countRotations(arr);
    return 0;
}

