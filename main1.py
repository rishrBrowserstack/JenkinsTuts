my_variable = "Hello, Python!"
another_number = 123

print(my_variable)
print(f"The number is: {another_number}")

def greet(name):
    return f"Greetings, {name}!"

greeting_message = greet("World")
print(greeting_message)

if another_number > 100:
    print("The number is greater than 100.")
else:
    print("The number is 100 or less.")
