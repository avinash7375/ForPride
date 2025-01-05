## R Programming Tutorial: Comprehensive Code Examples

### 1. Basic Data Types and Operations

```r
# Numeric Operations
x <- 10
y <- 5
sum_result <- x + y  # Addition
diff_result <- x - y  # Subtraction
mult_result <- x * y  # Multiplication
div_result <- x / y  # Division

# Explanation: Basic arithmetic operations in R

# Vector Creation
numeric_vector <- c(1, 2, 3, 4, 5)
character_vector <- c("apple", "banana", "cherry")
logical_vector <- c(TRUE, FALSE, TRUE)

# Vector Operations
mean_value <- mean(numeric_vector)
max_value <- max(numeric_vector)
```

### 2. Data Frames Creation and Manipulation

```r
# Creating a Data Frame
student_data <- data.frame(
  name = c("Alice", "Bob", "Charlie"),
  age = c(22, 23, 21),
  grade = c(85, 90, 88)
)

# Accessing Data Frame Columns
student_names <- student_data$name
specific_row <- student_data[2, ]  # Select second row

# Filtering Data
high_performers <- student_data[student_data$grade > 85, ]
```

### 3. Data Import and Cleaning

```r
# Import CSV File
library(readr)
dataset <- read_csv("data_file.csv")

# Data Cleaning Functions
# Remove NA values
clean_data <- na.omit(dataset)

# Replace NA with mean
dataset$column <- ifelse(is.na(dataset$column), 
                         mean(dataset$column, na.rm = TRUE), 
                         dataset$column)
```

### 4. Data Visualization with ggplot2

```r
library(ggplot2)

# Scatter Plot
ggplot(dataset, aes(x = age, y = salary)) +
  geom_point() +
  labs(title = "Age vs Salary",
       x = "Age",
       y = "Salary")

# Bar Plot
ggplot(dataset, aes(x = category)) +
  geom_bar() +
  theme_minimal()
```

### 5. Statistical Analysis

```r
# Correlation Analysis
correlation <- cor(dataset$variable1, dataset$variable2)

# Linear Regression
regression_model <- lm(dependent_variable ~ independent_variable, data = dataset)
summary(regression_model)

# T-Test
t_test_result <- t.test(group1, group2)
```

### 6. Advanced Data Manipulation with dplyr

```r
library(dplyr)

# Pipe Operator for Data Transformation
result <- dataset %>%
  filter(age > 25) %>%
  group_by(category) %>%
  summarise(
    avg_salary = mean(salary),
    count = n()
  )
```

### 7. Machine Learning Example

```r
# Basic Machine Learning with Caret
library(caret)

# Split Data
set.seed(123)
split_index <- createDataPartition(dataset$target, p = 0.7, list = FALSE)
train_data <- dataset[split_index, ]
test_data <- dataset[-split_index, ]

# Train Model
model <- train(
  target ~ ., 
  data = train_data,
  method = "rf"  # Random Forest
)
```

## Key Learning Objectives Covered
- Basic R programming syntax
- Data manipulation techniques
- Statistical analysis
- Data visualization
- Machine learning fundamentals

## Recommended Practice
1. Type out each code example
2. Experiment with different datasets
3. Modify parameters and observe results
4. Create your own variations

## Pro Tips
- Always use `set.seed()` for reproducibility
- Comment your code
- Handle missing data carefully
- Learn package documentation

## Common Challenges
- Data type conversions
- Handling missing values
- Performance optimization
- Understanding package ecosystems

## Learning Resources
- R Documentation
- Coursera R Programming Course
- DataCamp R Tracks
- Kaggle R Notebooks

**Additional Recommendation:**
Practice consistently and work on real-world projects to enhance your skills.
