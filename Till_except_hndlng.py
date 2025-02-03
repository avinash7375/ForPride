# Python Tutorial: Comprehensive Guide to Core Concepts

# 1. DATA TYPES
# Numeric Types
integer_example = 42
float_example = 3.14
complex_example = 3 + 4j

# Text Type
string_example = "Hello, Python!"

# Sequence Types
list_example = [1, 2, 3, 4, 5]
tuple_example = (1, 2, 3)
range_example = range(5)  # 0, 1, 2, 3, 4

# Mapping Type
dictionary_example = {"name": "John", "age": 30}

# Set Types
set_example = {1, 2, 3, 4, 5}
frozenset_example = frozenset([1, 2, 3])

# Boolean Type
boolean_example = True
boolean_example = False

# None Type
none_example = None

# 2. VARIABLES
# Dynamic typing
x = 10  # integer
x = "Hello"  # now a string
x = 3.14  # now a float

# Multiple assignment
a, b, c = 1, 2, 3

# 3. OPERATORS
# Arithmetic Operators
addition = 5 + 3
subtraction = 5 - 3
multiplication = 5 * 3
division = 5 / 3
floor_division = 5 // 3
modulus = 5 % 3
exponentiation = 5 ** 3

# Comparison Operators
equal = (5 == 5)
not_equal = (5 != 3)
greater_than = (5 > 3)
less_than = (5 < 3)
greater_or_equal = (5 >= 3)
less_or_equal = (5 <= 3)

# Logical Operators
and_operator = True and False
or_operator = True or False
not_operator = not True

# 4. CONDITIONS
# If-Elif-Else
def check_number(num):
    if num > 0:
        return "Positive"
    elif num < 0:
        return "Negative"
    else:
        return "Zero"

# Ternary Operator
result = "Even" if 10 % 2 == 0 else "Odd"

# 5. LOOPS
# For Loop
for item in [1, 2, 3, 4, 5]:
    print(item)

# While Loop
count = 0
while count < 5:
    print(count)
    count += 1

# Loop Control
for num in range(10):
    if num == 3:
        continue  # Skip iteration
    if num == 6:
        break  # Exit loop

# 6. FUNCTIONS
def greet(name, greeting="Hello"):
    return f"{greeting}, {name}!"

# Lambda Functions
square = lambda x: x ** 2

# 7. LISTS
numbers = [1, 2, 3, 4, 5]
numbers.append(6)  # Add element
numbers.remove(3)  # Remove specific element
sorted_numbers = sorted(numbers)
numbers.sort()  # In-place sorting

# List Comprehension
squared_numbers = [x**2 for x in numbers]

# 8. SETS
unique_numbers = {1, 2, 3, 4, 5}
unique_numbers.add(6)
unique_numbers.remove(3)
union_set = unique_numbers.union({7, 8})

# 9. TUPLES
coordinates = (10, 20)
x, y = coordinates  # Unpacking

# 10. DICTIONARIES
person = {
    "name": "Alice",
    "age": 30,
    "city": "New York"
}
person["email"] = "alice@example.com"  # Add new key
del person["city"]  # Remove key

# 11. INHERITANCE
class Animal:
    def __init__(self, name):
        self.name = name
    
    def speak(self):
        pass

class Dog(Animal):
    def speak(self):
        return "Woof!"

# 12. FILE HANDLING
def write_file(filename, content):
    with open(filename, 'w') as file:
        file.write(content)

def read_file(filename):
    with open(filename, 'r') as file:
        return file.read()

# 13. EXCEPTION HANDLING
def divide_numbers(a, b):
    try:
        result = a / b
    except ZeroDivisionError:
        print("Cannot divide by zero!")
        result = None
    except TypeError:
        print("Invalid input type!")
        result = None
    finally:
        return result

# Example usage of exception handling
result = divide_numbers(10, 2)  # Normal division
result = divide_numbers(10, 0)  # Handles division by zero
