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

---------------------------------

## Comprehensive R Programming Tutorial

### 1. R Hadoop Integration

#### A. RHadoop Integration Setup
```r
# Install Required Packages
install.packages(c("rmr2", "rhdfs", "rhbase"))

# Load Hadoop Libraries
library(rmr2)
library(rhdfs)

# Initialize Hadoop Connection
hdfs.init()

# Read Hadoop File
hadoop_data <- hdfs.read("/user/hadoop/input_file.csv")
```

#### B. MapReduce Example
```r
# MapReduce Word Count Implementation
word_count_mr <- function() {
  map <- function(k, v) {
    words <- strsplit(v, " ")[[1]]
    keyval(words, 1)
  }
  
  reduce <- function(k, v) {
    total_count <- sum(v)
    keyval(k, total_count)
  }
  
  # Execute MapReduce Job
  mapreduce(
    input = "/input/text_file.txt",
    output = "/output/word_count",
    map = map,
    reduce = reduce
  )
}
```

### 2. Advanced R Packages

#### A. Data Manipulation Packages
```r
# Dplyr Advanced Operations
library(dplyr)

# Complex Data Transformation
result <- mtcars %>%
  group_by(cyl) %>%
  summarise(
    avg_mpg = mean(mpg),
    max_hp = max(hp),
    total_cars = n()
  ) %>%
  arrange(desc(avg_mpg))
```

#### B. Machine Learning Package Example
```r
# Caret Package for Machine Learning
library(caret)
library(randomForest)

# Model Training
set.seed(123)
train_control <- trainControl(
  method = "cv",
  number = 10,
  savePredictions = TRUE
)

# Random Forest Model
rf_model <- train(
  Species ~ ., 
  data = iris,
  method = "rf",
  trControl = train_control
)
```

### 3. Control Flow Advanced Techniques

#### A. Enhanced Switch Statement
```r
# Contextual Switch Function
smart_switch <- function(input_value) {
  switch(
    as.character(input_value),
    "1" = list(action = "Low Priority", color = "green"),
    "2" = list(action = "Medium Priority", color = "yellow"),
    "3" = list(action = "High Priority", color = "red"),
    default = list(action = "Unknown", color = "gray")
  )
}

# Usage Example
result <- smart_switch(2)
print(result$color)
```

#### B. Advanced Break and Next
```r
# Complex Loop Control
advanced_loop <- function(max_iterations = 100) {
  error_count <- 0
  
  for(i in 1:max_iterations) {
    # Skip even numbers
    if(i %% 2 == 0) next
    
    # Break if error threshold reached
    if(error_count > 5) break
    
    # Simulated error handling
    tryCatch({
      # Potential error-prone operation
      result <- 1 / (i - 50)
    }, error = function(e) {
      error_count <<- error_count + 1
    })
  }
  
  return(error_count)
}
```

### 4. Advanced Data Visualization

#### A. Interactive Visualization
```r
# Plotly Interactive Plots
library(plotly)

# Interactive Scatter Plot
plot_ly(
  data = mtcars,
  x = ~wt,
  y = ~mpg,
  color = ~cyl,
  type = "scatter",
  mode = "markers"
) %>%
  layout(
    title = "Car Weight vs Mileage",
    xaxis = list(title = "Weight"),
    yaxis = list(title = "Miles per Gallon")
  )
```

#### B. Geospatial Visualization
```r
# Leaflet Maps
library(leaflet)

# Create Interactive Map
leaflet() %>%
  addTiles() %>%
  addMarkers(
    lat = c(40.7128, 34.0522),
    lng = c(-74.0060, -118.2437),
    popup = c("New York", "Los Angeles")
  )
```

### 5. Big Data Processing

#### A. Spark Integration
```r
# Spark Connection
library(sparklyr)

# Connect to Spark
spark_connection <- spark_connect(master = "local")

# Read Large Dataset
big_data <- spark_read_csv(
  spark_connection, 
  name = "large_dataset",
  path = "/path/to/large/file.csv"
)
```

### Key Learning Objectives
- Advanced R programming techniques
- Big data processing
- Machine learning implementation
- Interactive data visualization
- Error handling and control flow

### Recommended Learning Path
1. Master basic R syntax
2. Learn package ecosystems
3. Practice with real datasets
4. Explore advanced techniques
5. Build complex data solutions

### Pro Tips
- Always use version control
- Document your code
- Understand package dependencies
- Practice continuous learning
- Attend R programming workshops

### Recommended Resources
- Coursera R Programming Specialization
- DataCamp R Tracks
- RStudio Official Documentation
- Kaggle R Notebooks
- GitHub R Programming Repositories
