//merge sort
#include <iostream>
using namespace std;

// Merge two parts - 29, 10, 14, 37, 13
void merge(int a[], int l, int m, int r) {
    int i = l, j = m + 1, k = 0;
    int temp[5];

    while (i <= m && j <= r) {
        if (a[i] < a[j])
            temp[k++] = a[i++];
        else
            temp[k++] = a[j++];
    }

    while (i <= m)
        temp[k++] = a[i++];
    while (j <= r)
        temp[k++] = a[j++];

    for (int x = 0; x < k; x++)
        a[l + x] = temp[x];
}

// Recursive merge sort
void mergeSort(int a[], int l, int r) {
    if (l < r) {
        int m = (l + r) / 2;
        mergeSort(a, l, m);
        mergeSort(a, m + 1, r);
        merge(a, l, m, r);
    }
}

int main() {
    int arr[5] = {29, 10, 14, 37, 13};

    mergeSort(arr, 0, 4); // Sort array from index 0 to 4

    for (int i = 0; i < 5; i++)
        cout << arr[i] << " ";

    return 0;
}
