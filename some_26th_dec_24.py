# ALL ABOUT OPERATORS

# Arithmetic - +, -, *, /, %, //
# Logical - and, or, not
# Relational - ==, !=, <=, >=, <, >
# bitwise - &, |, !

a = 10
b = 20

if(a == b):
    print("Same")
else:
    print("Not same")


# Control Structure

# 1 conditions

a = 10
b = 20

if(a<b):
    print("B is Great")
else:
    print("A is great")

# 2 Loops

# 2.1 while loop

i = 0
while(i<10):
    print("Something")

    i = i + 1

# 2.2 for loop
for i in range(0, 20, 3):
    print(i)




for num in range(2, 10):

    if num % 2 == 0:
        if(num == 6):
            print(f"Found an even number  6 {num}")
            break
        continue

        print(f"Found an even number {num}")


for n in range(2, 10):

    for x in range(2, n):

        if n % x == 0:

            print(n, 'equals', x, '*', n//x)

            break

    else:

        # loop fell through without finding a factor

        print(n, 'is a prime number')


def hello(n):
    pass

print(hello(5))



x = 5

if x < 0:

    x = 0

    print('Negative changed to zero')

elif x == 0:

    print('Zero')

elif x == 1:

    print('Single')

else:

    print('More')



list2 = ["orange", "blue", "green", "yellow", "indigo"]

for color in list2:
    if(color == "green"):
        print(color)


# if you are able to see this screen - kindly ask doubts

# if you are using range function 

a = tuple(range(20))
for i in range(len(a)):
    print(i, a[i])


print(sum(a))

def hellll(args):
    print(args)


print()




def something(anything):
    match (anything):
        case 1:
            print("1")
        case 2:
            print("2")
        case 3:
            print("3")
        case _:     #underscore is for default
            print("nothing")

something(int(input("Something here : ")))
