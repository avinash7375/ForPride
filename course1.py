#try:
#	num = int(input("Enter a Number : "))
#	print(f"The number is {num}")
#except ValueError:
#	print("Invalid Input! Please enter a valid number")
	
	
#num = int(input("Enter a Number : "))
#print(f"The number is {num}")

# file handeling with exceptions
#try:
#	with open("filename.txt", "r") as file:
#		data = file.read()
#		print(data)
#except FileNotFoundError as e:
#	print(f"Error: {e}")
#finally:
#	print("Execution completed!!")


# raising an exception
def divide(a, b):
	if b==0:
		raise ZeroDivisionError("Cannot divide by zero")
	return a/b
	
try:
	result = divide(12, 3)
	print(result)
except ZeroDivisionError as e:
	print(e)