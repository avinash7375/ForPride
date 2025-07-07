#include <stdio.h>

// Function to sort the array using Bubble Sort (simple but not the most efficient)
void sortArray(int arr[], int size) {
    for (int i = 0; i < size - 1; i++) {
        for (int j = 0; j < size - i - 1; j++) {
            if (arr[j] > arr[j + 1]) {
                // Swap
                int temp = arr[j];
                arr[j] = arr[j + 1];
                arr[j + 1] = temp;
            }
        }
    }
}

int main() {
    int n1, n2;
    n1 = 5;
    n2 = 5;
	int a[5] = {12,15,11,7,2};
	int b[5] = {5,17,9,6,1};
    
    // Merging arrays
    int c[n1 + n2];
    for (int i = 0; i < n1; i++) {
        c[i] = a[i];
    }
    for (int i = 0; i < n2; i++) {
        c[n1 + i] = b[i];
    }
    //printing unsorted merged array
    printf("Printing unsorted arrays\n");
	for (int i = 0; i < n1 + n2; i++) {
        printf("%d ", c[i]);
    }
    printf("\n");
    
    // Sorting merged array
    sortArray(c, n1 + n2);

    // Printing sorted merged array
    printf("\nSorted merged array:\n");
    for (int i = 0; i < n1 + n2; i++) {
        printf("%d ", c[i]);
    }
    printf("\n");

    return 0;
}
