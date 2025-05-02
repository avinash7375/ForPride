Below is a comprehensive tutorial on arrays in the C programming language, covering their definition, declaration, initialization, and various operations that can be performed on them. The tutorial includes explanations, code examples, and output for clarity.
Tutorial on Arrays in C
1. Introduction to Arrays
An array in C is a collection of elements of the same data type stored in contiguous memory locations. Arrays are used to store multiple values in a single variable, accessed using an index (starting from 0).
Key Features of Arrays:

    Fixed size: The size of an array is defined at declaration and cannot be changed.
    Homogeneous: All elements in an array must be of the same data type.
    Indexed: Elements are accessed using their index (0 to size-1).
    Contiguous memory: Elements are stored in adjacent memory locations.

2. Declaring and Initializing Arrays
Syntax for Declaration:
c

data_type array_name[size];

    data_type: Type of elements (e.g., int, float, char).
    array_name: Name of the array.
    size: Number of elements the array can hold (must be a positive integer).

Examples of Declaration:
c

int numbers[5]; // Array of 5 integers
float prices[10]; // Array of 10 floating-point numbers
char letters[3]; // Array of 3 characters

Initializing Arrays:
Arrays can be initialized at the time of declaration or later.
Initialization at Declaration:
c

int numbers[5] = {10, 20, 30, 40, 50}; // All elements initialized
int partial[5] = {1, 2}; // First two elements initialized, rest are 0
int auto_size[] = {1, 2, 3, 4}; // Size inferred as 4

Initialization After Declaration:
c

int numbers[3];
numbers[0] = 100;
numbers[1] = 200;
numbers[2] = 300;

3. Accessing Array Elements
Array elements are accessed using their index, which starts at 0 and goes up to size-1.
Example: Accessing Elements
c

#include <stdio.h>
int main() {
    int arr[5] = {10, 20, 30, 40, 50};
    printf("Element at index 0: %d\n", arr[0]); // Access first element
    printf("Element at index 3: %d\n", arr[3]); // Access fourth element
    return 0;
}

Output:

Element at index 0: 10
Element at index 3: 40

4. Common Operations on Arrays
Below are various operations that can be performed on arrays, with code examples.
4.1. Traversing an Array
Traversing means visiting each element of the array, typically using a loop.
Example: Print All Elements
c

#include <stdio.h>
int main() {
    int arr[5] = {10, 20, 30, 40, 50};
    printf("Array elements: ");
    for (int i = 0; i < 5; i++) {
        printf("%d ", arr[i]);
    }
    printf("\n");
    return 0;
}

Output:

Array elements: 10 20 30 40 50

4.2. Inserting an Element
Inserting an element at a specific position requires shifting elements to make space.
Example: Insert Element at Given Position
c

#include <stdio.h>
int main() {
    int arr[10] = {1, 2, 3, 4, 5};
    int size = 5, pos = 2, element = 99;

    // Shift elements to the right
    for (int i = size - 1; i >= pos; i--) {
        arr[i + 1] = arr[i];
    }
    arr[pos] = element; // Insert the element
    size++; // Increase size

    printf("Array after insertion: ");
    for (int i = 0; i < size; i++) {
        printf("%d ", arr[i]);
    }
    printf("\n");
    return 0;
}

Output:

Array after insertion: 1 2 99 3 4 5

4.3. Deleting an Element
Deleting an element involves shifting elements to fill the gap left by the deleted element.
Example: Delete Element at Given Position
c

#include <stdio.h>
int main() {
    int arr[10] = {1, 2, 3, 4, 5};
    int size = 5, pos = 2;

    // Shift elements to the left
    for (int i = pos; i < size - 1; i++) {
        arr[i] = arr[i + 1];
    }
    size--; // Decrease size

    printf("Array after deletion: ");
    for (int i = 0; i < size; i++) {
        printf("%d ", arr[i]);
    }
    printf("\n");
    return 0;
}

Output:

Array after deletion: 1 2 4 5

4.4. Updating an Element
Updating involves changing the value of an element at a specific index.
Example: Update Element
c

#include <stdio.h>
int main() {
    int arr[5] = {10, 20, 30, 40, 50};
    int index = 2, new_value = 99;

    arr[index] = new_value; // Update element at index 2

    printf("Array after update: ");
    for (int i = 0; i < 5; i++) {
        printf("%d ", arr[i]);
    }
    printf("\n");
    return 0;
}

Output:

Array after update: 10 20 99 40 50

4.5. Searching for an Element
Searching involves finding an element in the array. A simple approach is linear search.
Example: Linear Search
c

#include <stdio.h>
int main() {
    int arr[5] = {10, 20, 30, 40, 50};
    int key = 30, found = 0;

    for (int i = 0; i < 5; i++) {
        if (arr[i] == key) {
            printf("Element %d found at index %d\n", key, i);
            found = 1;
            break;
        }
    }
    if (!found) {
        printf("Element %d not found\n", key);
    }
    return 0;
}

Output:

Element 30 found at index 2

4.6. Sorting an Array
Sorting arranges elements in ascending or descending order. A simple algorithm is Bubble Sort.
Example: Bubble Sort (Ascending Order)
c

#include <stdio.h>
int main() {
    int arr[5] = {50, 20, 40, 10, 30};
    int n = 5;

    // Bubble Sort
    for (int i = 0; i < n - 1; i++) {
        for (int j = 0; j < n - i - 1; j++) {
            if (arr[j] > arr[j + 1]) {
                // Swap elements
                int temp = arr[j];
                arr[j] = arr[j + 1];
                arr[j + 1] = temp;
            }
        }
    }

    printf("Sorted array: ");
    for (int i = 0; i < n; i++) {
        printf("%d ", arr[i]);
    }
    printf("\n");
    return 0;
}

Output:

Sorted array: 10 20 30 40 50

4.7. Finding Maximum and Minimum Elements
This involves traversing the array to find the largest and smallest elements.
Example: Find Max and Min
c

#include <stdio.h>
int main() {
    int arr[5] = {50, 20, 40, 10, 30};
    int max = arr[0], min = arr[0];

    for (int i = 1; i < 5; i++) {
        if (arr[i] > max) {
            max = arr[i];
        }
        if (arr[i] < min) {
            min = arr[i];
        }
    }

    printf("Maximum element: %d\n", max);
    printf("Minimum element: %d\n", min);
    return 0;
}

Output:

Maximum element: 50
Minimum element: 10

4.8. Reversing an Array
Reversing an array involves swapping elements from the start and end.
Example: Reverse Array
c

#include <stdio.h>
int main() {
    int arr[5] = {10, 20, 30, 40, 50};
    int n = 5;

    // Reverse array
    for (int i = 0; i < n / 2; i++) {
        int temp = arr[i];
        arr[i] = arr[n - 1 - i];
        arr[n - 1 - i] = temp;
    }

    printf("Reversed array: ");
    for (int i = 0; i < n; i++) {
        printf("%d ", arr[i]);
    }
    printf("\n");
    return 0;
}

Output:

Reversed array: 50 40 30 20 10

5. Multi-Dimensional Arrays
C supports multi-dimensional arrays, such as 2D or 3D arrays. The most common is a 2D array, used to represent matrices.
Declaring a 2D Array:
c

data_type array_name[rows][columns];

Example: 2D Array Operations
c

#include <stdio.h>
int main() {
    // Declare and initialize a 2x3 matrix
    int matrix[2][3] = {{1, 2, 3}, {4, 5, 6}};

    // Print the matrix
    printf("2D Array (Matrix):\n");
    for (int i = 0; i < 2; i++) {
        for (int j = 0; j < 3; j++) {
            printf("%d ", matrix[i][j]);
        }
        printf("\n");
    }

    return 0;
}

Output:

2D Array (Matrix):
1 2 3
4 5 6

6. Common Errors and Best Practices
Common Errors:

    Array Index Out of Bounds: Accessing arr[5] in an array of size 5 (valid indices are 0 to 4) causes undefined behavior.
    c

    int arr[5];
    arr[5] = 10; // Error: Out of bounds

    Uninitialized Arrays: Using an array without initializing it may result in garbage values.
    Fixed Size Limitation: Arrays cannot be resized dynamically (use dynamic memory allocation with malloc for resizable arrays).

Best Practices:

    Always initialize arrays to avoid garbage values.
    Use loops for repetitive tasks like traversal or initialization.
    Check array bounds to prevent undefined behavior.
    Use const int for array sizes to make code more maintainable.
    c

    const int SIZE = 5;
    int arr[SIZE];

7. Advanced Topic: Dynamic Arrays
For arrays whose size is determined at runtime, use dynamic memory allocation with malloc or calloc.
Example: Dynamic Array
c

#include <stdio.h>
#include <stdlib.h>
int main() {
    int size;
    printf("Enter size of array: ");
    scanf("%d", &size);

    // Allocate memory dynamically
    int *arr = (int *)malloc(size * sizeof(int));

    // Initialize array
    for (int i = 0; i < size; i++) {
        arr[i] = i + 1;
    }

    // Print array
    printf("Dynamic array: ");
    for (int i = 0; i < size; i++) {
        printf("%d ", arr[i]);
    }
    printf("\n");

    // Free memory
    free(arr);
    return 0;
}

Output (if size = 5):

Enter size of array: 5
Dynamic array: 1 2 3 4 5

8. Summary

    Arrays are a fundamental data structure in C for storing multiple elements of the same type.
    Key operations include traversal, insertion, deletion, updating, searching, sorting, and reversing.
    Multi-dimensional arrays (e.g., 2D arrays) are used for matrices and complex data.
    Dynamic arrays allow flexible sizing using malloc or calloc.
    Always handle array bounds carefully to avoid errors.

This tutorial provides a solid foundation for working with arrays in C. Practice these operations to build proficiency, and explore advanced topics like dynamic memory and multi-dimensional arrays for more complex applications.
If you have specific questions about arrays or want more examples, let me know!
