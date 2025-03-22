# Introduction to R
R is a powerful statistical programming language used for data analysis, visualization, and machine learning. It is widely used in research, academia, and industry for statistical modeling and data science.

## Installation
You can download and install R from [CRAN](https://cran.r-project.org/). Additionally, you may install RStudio, an integrated development environment (IDE) for R, from [RStudio](https://posit.co/download/rstudio-desktop/).

---

# Data Types and Operators

## Data Types
R supports various data types:
- **Numeric:** Decimal values (e.g., `3.14`, `42`)
- **Integer:** Whole numbers (e.g., `5L`, `100L`)
- **Character:** Text strings (e.g., `"Hello"`, `"R Programming"`)
- **Logical:** Boolean values (`TRUE`, `FALSE`)
- **Complex:** Complex numbers (e.g., `2+3i`)

## Operators
- **Arithmetic Operators:** `+`, `-`, `*`, `/`, `^` (exponent), `%%` (modulus), `%/%` (integer division)
- **Relational Operators:** `>`, `<`, `>=`, `<=`, `==`, `!=`
- **Logical Operators:** `&` (AND), `|` (OR), `!` (NOT)
- **Assignment Operators:** `<-`, `=`

Example:
```r
x <- 10
y <- 5
z <- x + y  # Addition
print(z)  # Output: 15
```

---

# Decision Making
Decision-making structures control the flow of execution in an R program.

## if-else
```r
x <- 10
if (x > 5) {
  print("x is greater than 5")
} else {
  print("x is 5 or less")
}
```

## ifelse
```r
x <- 10
y <- ifelse(x > 5, "Greater than 5", "5 or less")
print(y)
```

## switch
```r
x <- "b"
result <- switch(x,
                 "a" = "Apple",
                 "b" = "Banana",
                 "c" = "Cherry")
print(result)  # Output: Banana
```

---

# Loops
Loops help automate repetitive tasks in R.

## for Loop
```r
for (i in 1:5) {
  print(i)
}
```

## while Loop
```r
x <- 1
while (x <= 5) {
  print(x)
  x <- x + 1
}
```

## repeat Loop
```r
x <- 1
repeat {
  print(x)
  x <- x + 1
  if (x > 5) break
}
```

---

# Functions
Functions help in reusing code efficiently.

## Defining a Function
```r
add_numbers <- function(a, b) {
  return(a + b)
}
result <- add_numbers(5, 10)
print(result)  # Output: 15
```

---

# Lists
Lists can contain elements of different types.
```r
my_list <- list(10, "R", TRUE, c(1,2,3))
print(my_list)
```
Accessing elements:
```r
print(my_list[[2]])  # Output: "R"
```

---

# Vectors
Vectors are one-dimensional arrays.
```r
vec <- c(1, 2, 3, 4, 5)
print(vec)
```
Operations on vectors:
```r
print(vec * 2)  # Element-wise multiplication
```

---

# Matrices
Matrices are two-dimensional data structures.
```r
mat <- matrix(1:9, nrow=3, ncol=3)
print(mat)
```
Accessing elements:
```r
print(mat[2, 3])  # Output: 6
```

---

# Data Frames
Data frames are used for tabular data.
```r
data <- data.frame(Name = c("Alice", "Bob"), Age = c(25, 30))
print(data)
```
Accessing elements:
```r
print(data$Name)
```

---

# ggplot2 (Data Visualization)
`ggplot2` is a popular R package for data visualization.

## Installing and Loading ggplot2
```r
install.packages("ggplot2")
library(ggplot2)
```

## ggplot Basics
```r
ggplot(data, aes(x=Age, y=Name)) + geom_point()
```

## ggplot-2: Advanced Visualization
```r
ggplot(data, aes(x=Age, fill=Name)) + geom_bar(stat="identity")
```

---

This tutorial covers the basics of R, including data structures, decision-making, loops, functions, and data visualization. Happy coding!
----
<h1>OR</h1>
# Introduction to R

R is a powerful statistical programming language used for data analysis, visualization, and machine learning. It is widely used in research, academia, and industry for statistical modeling and data science.

## Installation
You can download and install R from [CRAN](https://cran.r-project.org/). Additionally, you may install RStudio, an integrated development environment (IDE) for R, from [RStudio](https://posit.co/download/rstudio-desktop/).

To check if R is installed correctly, open R or RStudio and run:
```r
version
```

---

# Data Types and Operators

## Data Types
R supports various data types:
- **Numeric:** Decimal values (e.g., `3.14`, `42`). Example:
  ```r
  x <- 3.14
  class(x)  # Output: "numeric"
  ```
- **Integer:** Whole numbers (e.g., `5L`, `100L`). Example:
  ```r
  y <- 10L
  class(y)  # Output: "integer"
  ```
- **Character:** Text strings (e.g., `"Hello"`, `"R Programming"`). Example:
  ```r
  z <- "Hello"
  class(z)  # Output: "character"
  ```
- **Logical:** Boolean values (`TRUE`, `FALSE`). Example:
  ```r
  a <- TRUE
  class(a)  # Output: "logical"
  ```
- **Complex:** Complex numbers (e.g., `2+3i`). Example:
  ```r
  b <- 2+3i
  class(b)  # Output: "complex"
  ```

## Operators

### Arithmetic Operators
```r
x <- 10
y <- 5
print(x + y)  # Output: 15
print(x - y)  # Output: 5
print(x * y)  # Output: 50
print(x / y)  # Output: 2
print(x ^ y)  # Output: 100000
print(x %% y) # Output: 0 (modulus)
print(x %/% y) # Output: 2 (integer division)
```

### Relational Operators
```r
print(x > y)   # TRUE
print(x < y)   # FALSE
print(x >= y)  # TRUE
print(x <= y)  # FALSE
print(x == y)  # FALSE
print(x != y)  # TRUE
```

### Logical Operators
```r
a <- TRUE
b <- FALSE
print(a & b)  # Output: FALSE
print(a | b)  # Output: TRUE
print(!a)     # Output: FALSE
```

### Assignment Operators
```r
x <- 10  # Left assignment
10 -> x  # Right assignment
x = 10   # Can also be used, but not preferred
```

---

# Decision Making

## if-else
```r
x <- 10
if (x > 5) {
  print("x is greater than 5")
} else {
  print("x is 5 or less")
}
```

## ifelse (Vectorized Decision Making)
```r
x <- c(3, 7, 10)
y <- ifelse(x > 5, "Greater than 5", "5 or less")
print(y)
```

## switch
```r
x <- "b"
result <- switch(x,
                 "a" = "Apple",
                 "b" = "Banana",
                 "c" = "Cherry",
                 "Unknown")
print(result)  # Output: Banana
```

---

# Loops

## for Loop
```r
for (i in 1:5) {
  print(i)
}
```

## while Loop
```r
x <- 1
while (x <= 5) {
  print(x)
  x <- x + 1
}
```

## repeat Loop
```r
x <- 1
repeat {
  print(x)
  x <- x + 1
  if (x > 5) break
}
```

---

# Functions

## Defining a Function
```r
add_numbers <- function(a, b) {
  return(a + b)
}
result <- add_numbers(5, 10)
print(result)  # Output: 15
```

## Function with Default Arguments
```r
multiply <- function(a, b = 2) {
  return(a * b)
}
print(multiply(3))  # Output: 6
print(multiply(3, 4))  # Output: 12
```

---

# Lists

```r
my_list <- list(10, "R", TRUE, c(1,2,3))
print(my_list)
```

Accessing elements:
```r
print(my_list[[2]])  # Output: "R"
```

---

# Vectors

```r
vec <- c(1, 2, 3, 4, 5)
print(vec)
```
Operations on vectors:
```r
print(vec * 2)  # Element-wise multiplication
```

---

# Matrices
```r
mat <- matrix(1:9, nrow=3, ncol=3)
print(mat)
```

Accessing elements:
```r
print(mat[2, 3])  # Output: 6
```

---

# Data Frames
```r
data <- data.frame(Name = c("Alice", "Bob"), Age = c(25, 30))
print(data)
```

Accessing elements:
```r
print(data$Name)
```

---

# ggplot2 (Data Visualization)

## Installing and Loading ggplot2
```r
install.packages("ggplot2")
library(ggplot2)
```

## ggplot Basics
```r
ggplot(data, aes(x=Age, y=Name)) + geom_point()
```

## ggplot-2: Advanced Visualization
```r
ggplot(data, aes(x=Age, fill=Name)) + geom_bar(stat="identity")
```

---

This tutorial covers the basics of R, including data structures, decision-making, loops, functions, and data visualization with more details. Happy coding!

