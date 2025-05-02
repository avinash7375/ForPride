Below are three problem-solving questions in C that involve structs, functions, and arrays, along with their solutions. Each question includes a problem description, solution code, and a brief explanation. These are adapted from the C++ versions to work in C, accounting for C's differences (e.g., no string class, manual memory management, and different I/O).
Question 1: Student Record Management
Problem Description:
Create a program to manage student records using a struct. Each student has a name, roll number, and marks in three subjects. Write a function to calculate the average marks of a student and another to display all student details. Use an array to store multiple student records.
Solution Code:
c

#include <stdio.h>
#include <string.h>

#define MAX_NAME 50

// Define Student struct
struct Student {
    char name[MAX_NAME];
    int rollNo;
    float marks[3]; // Array for marks in 3 subjects
};

// Function to calculate average marks of a student
float calculateAverage(struct Student s) {
    float sum = 0;
    for (int i = 0; i < 3; i++) {
        sum += s.marks[i];
    }
    return sum / 3.0;
}

// Function to display student details
void displayStudents(struct Student students[], int n) {
    for (int i = 0; i < n; i++) {
        printf("Student %d:\n", i + 1);
        printf("Name: %s\n", students[i].name);
        printf("Roll No: %d\n", students[i].rollNo);
        printf("Marks: ");
        for (int j = 0; j < 3; j++) {
            printf("%.2f ", students[i].marks[j]);
        }
        printf("\nAverage Marks: %.2f\n\n", calculateAverage(students[i]));
    }
}

int main() {
    int n;
    printf("Enter number of students: ");
    scanf("%d", &n);
    getchar(); // Clear newline from input buffer

    // Array of Student structs
    struct Student students[n];

    // Input student details
    for (int i = 0; i < n; i++) {
        printf("Enter details for student %d:\n", i + 1);
        printf("Name: ");
        fgets(students[i].name, MAX_NAME, stdin);
        students[i].name[strcspn(students[i].name, "\n")] = 0; // Remove newline
        printf("Roll No: ");
        scanf("%d", &students[i].rollNo);
        printf("Enter marks in 3 subjects: ");
        for (int j = 0; j < 3; j++) {
            scanf("%f", &students[i].marks[j]);
        }
        getchar(); // Clear newline for next iteration
    }

    // Display all student details
    displayStudents(students, n);

    return 0;
}

Explanation:  

    The Student struct uses a fixed-size character array for the name (since C lacks string).
    The calculateAverage function computes the average of a student’s marks.
    The displayStudents function prints each student’s details, including their average marks.
    In main, an array of Student structs is created, and fgets is used for name input. The strcspn function removes the trailing newline from fgets.

Question 2: Inventory Management System
Problem Description:
Design a program to manage an inventory of products using a struct. Each product has an ID, name, and price. Write a function to find the product with the highest price and another to sort products by price in ascending order. Store products in an array.
Solution Code:
c

#include <stdio.h>
#include <string.h>

#define MAX_NAME 50

// Define Product struct
struct Product {
    int id;
    char name[MAX_NAME];
    float price;
};

// Function to find product with highest price
struct Product findMostExpensive(struct Product products[], int n) {
    struct Product maxProduct = products[0];
    for (int i = 1; i < n; i++) {
        if (products[i].price > maxProduct.price) {
            maxProduct = products[i];
        }
    }
    return maxProduct;
}

// Function to sort products by price (ascending)
void sortByPrice(struct Product products[], int n) {
    for (int i = 0; i < n - 1; i++) {
        for (int j = 0; j < n - i - 1; j++) {
            if (products[j].price > products[j + 1].price) {
                // Swap products
                struct Product temp = products[j];
                products[j] = products[j + 1];
                products[j + 1] = temp;
            }
        }
    }
}

// Function to display products
void displayProducts(struct Product products[], int n) {
    for (int i = 0; i < n; i++) {
        printf("Product %d:\n", i + 1);
        printf("ID: %d\n", products[i].id);
        printf("Name: %s\n", products[i].name);
        printf("Price: $%.2f\n\n", products[i].price);
    }
}

int main() {
    int n;
    printf("Enter number of products: ");
    scanf("%d", &n);
    getchar();

    // Array of Product structs
    struct Product products[n];

    // Input product details
    for (int i = 0; i < n; i++) {
        printf("Enter details for product %d:\n", i + 1);
        printf("ID: ");
        scanf("%d", &products[i].id);
        getchar();
        printf("Name: ");
        fgets(products[i].name, MAX_NAME, stdin);
        products[i].name[strcspn(products[i].name, "\n")] = 0;
        printf("Price: ");
        scanf("%f", &products[i].price);
        getchar();
    }

    // Display all products
    printf("\nAll Products:\n");
    displayProducts(products, n);

    // Find and display most expensive product
    struct Product mostExpensive = findMostExpensive(products, n);
    printf("Most Expensive Product:\n");
    printf("ID: %d\n", mostExpensive.id);
    printf("Name: %s\n", mostExpensive.name);
    printf("Price: $%.2f\n\n", mostExpensive.price);

    // Sort and display products by price
    sortByPrice(products, n);
    printf("Products Sorted by Price:\n");
    displayProducts(products, n);

    return 0;
}

Explanation:  

    The Product struct uses a character array for the name and stores ID and price.
    The findMostExpensive function returns the product with the highest price.
    The sortByPrice function uses bubble sort to arrange products by price.
    The displayProducts function prints all product details.
    In main, products are input using fgets for names and scanf for numeric data, with newline handling.

Question 3: Library Book Tracker
Problem Description:
Create a program to track library books using a struct. Each book has a title, author, and year of publication. Write a function to find all books published before a given year and another to count books by a specific author. Use an array to store the books.
Solution Code:
c

#include <stdio.h>
#include <string.h>

#define MAX_STR 50

// Define Book struct
struct Book {
    char title[MAX_STR];
    char author[MAX_STR];
    int year;
};

// Function to display books published before a given year
void findBooksBeforeYear(struct Book books[], int n, int year) {
    int found = 0;
    printf("Books published before %d:\n", year);
    for (int i = 0; i < n; i++) {
        if (books[i].year < year) {
            printf("Title: %s\n", books[i].title);
            printf("Author: %s\n", books[i].author);
            printf("Year: %d\n\n", books[i].year);
            found = 1;
        }
    }
    if (!found) {
        printf("No books found.\n\n");
    }
}

// Function to count books by a specific author
int countBooksByAuthor(struct Book books[], int n, char *author) {
    int count = 0;
    for (int i = 0; i < n; i++) {
        if (strcmp(books[i].author, author) == 0) {
            count++;
        }
    }
    return count;
}

int main() {
    int n;
    printf("Enter number of books: ");
    scanf("%d", &n);
    getchar();

    // Array of Book structs
    struct Book books[n];

    // Input book details
    for (int i = 0; i < n; i++) {
        printf("Enter details for book %d:\n", i + 1);
        printf("Title: ");
        fgets(books[i].title, MAX_STR, stdin);
        books[i].title[strcspn(books[i].title, "\n")] = 0;
        printf("Author: ");
        fgets(books[i].author, MAX_STR, stdin);
        books[i].author[strcspn(books[i].author, "\n")] = 0;
        printf("Year: ");
        scanf("%d", &books[i].year);
        getchar();
    }

    // Find books published before a specific year
    int year;
    printf("\nEnter year to filter books published before: ");
    scanf("%d", &year);
    findBooksBeforeYear(books, n, year);

    // Count books by a specific author
    char author[MAX_STR];
    getchar();
    printf("Enter author name to count their books: ");
    fgets(author, MAX_STR, stdin);
    author[strcspn(author, "\n")] = 0;
    int count = countBooksByAuthor(books, n, author);
    printf("Number of books by %s: %d\n", author, count);

    return 0;
}

Explanation:  

    The Book struct uses character arrays for title and author, plus an integer for the year.
    The findBooksBeforeYear function prints books published before a given year.
    The countBooksByAuthor function uses strcmp to compare author names and count matches.
    In main, books are input with fgets for strings and scanf for the year, with proper newline handling.

Key Differences from C++ Version

    Strings: C uses fixed-size character arrays instead of C++'s string class. fgets and strcspn handle input and newline removal.
    I/O: C uses printf and scanf instead of cout and cin. getchar() clears input buffer newlines.
    String Comparison: C uses strcmp from string.h for string comparisons.
    No STL: Sorting in C requires manual implementation (e.g., bubble sort) since there’s no std::sort.

Key Concepts Covered

    Structs: Group related data (e.g., student, product, book details).
    Functions: Modularize tasks like calculating averages, sorting, and filtering.
    Arrays: Store multiple struct instances.
    Input/Output: Use fgets, scanf, and printf with careful buffer management.

These problems are suitable for beginner-to-intermediate C programmers. They can be extended with features like dynamic memory allocation (malloc) or file I/O for advanced practice. Let me know if you need more questions or modifications!
