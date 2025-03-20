// C++ program to solve chocolate distribution
// problem using Sliding Window

#include <iostream>
#include <vector>
#include <algorithm>
#include <limits.h>
using namespace std;

int findMinDiff(vector<int> &arr, int m) {
    int n = arr.size();
  
    // Sort the given packets
    sort(arr.begin(), arr.end());

    int minDiff = INT_MAX;

    for (int i = 0; i + m - 1 < n; i++) {
          
          // calculate difference of current window
        int diff = arr[i + m - 1] - arr[i];
      
          // if current difference is smaller
          // then update the minimum difference
        if (diff < minDiff)
            minDiff = diff;
    }
    return minDiff;
}

int main() {
    vector<int> arr = {7, 3, 2, 4, 9, 12, 56};
    int m = 5;
      
    cout << findMinDiff(arr, m);
    return 0;
}

