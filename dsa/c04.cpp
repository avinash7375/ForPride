#include <iostream>
#include <vector>
#include <climits>

using namespace std;

int maxSumSubarrayBruteForce(vector<int>& arr, int k) {
    int maxSum = INT_MIN;
    
    for (int i = 0; i <= arr.size() - k; i++) {
        int currentSum = 0;
        for (int j = i; j < i + k; j++) {
            currentSum += arr[j];
        }
        maxSum = max(maxSum, currentSum);
    }

    return maxSum;
}

int main() {
    vector<int> arr = {2, 1, 5, 1, 3, 2};
    int k = 4;
    cout << maxSumSubarrayBruteForce(arr, k) << endl; // Output: 9
    return 0;
}

