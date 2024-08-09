import sys

def greet():
    print("Привет, мир!")

def calculate_sum():
    print(2 + 2)

def greet_user(name):
    print(f"Привет, {name}!")

def print_numbers():
    for i in range(1, 11):
        print(i)

def user_age(age):
    print(f"Ваш возраст {age} лет")

def multiply_numbers(num1, num2):
    print(f"Произведение {num1} и {num2} равно {num1 * num2}")

def first_letter(word):
    print(f"Первая буква слова: {word[0]}")

def square_number(number):
    print(f"Квадрат числа {number} равен {number ** 2}")

def multiplication_table():
    for i in range(1, 11):
        print(f"5 x {i} = {5 * i}")

def average_of_two(num1, num2):
    print(f"Среднее арифметическое {num1} и {num2} равно {(num1 + num2) / 2}")

if __name__ == "__main__":
    if len(sys.argv) < 2:
        print("Пожалуйста, укажите приложение для запуска.")
        print("Доступные приложения: greet, calculate_sum, greet_user, print_numbers, user_age, multiply_numbers, first_letter, square_number, multiplication_table, average_of_two")
        sys.exit(1)

    app = sys.argv[1]

    if app == "greet":
        greet()
    elif app == "calculate_sum":
        calculate_sum()
    elif app == "greet_user":
        if len(sys.argv) < 3:
            print("Пожалуйста, укажите имя.")
            sys.exit(1)
        name = sys.argv[2]
        greet_user(name)
    elif app == "print_numbers":
        print_numbers()
    elif app == "user_age":
        if len(sys.argv) < 3:
            print("Пожалуйста, укажите возраст.")
            sys.exit(1)
        age = sys.argv[2]
        user_age(age)
    elif app == "multiply_numbers":
        if len(sys.argv) < 4:
            print("Пожалуйста, укажите два числа.")
            sys.exit(1)
        num1 = float(sys.argv[2])
        num2 = float(sys.argv[3])
        multiply_numbers(num1, num2)
    elif app == "first_letter":
        if len(sys.argv) < 3:
            print("Пожалуйста, укажите слово.")
            sys.exit(1)
        word = sys.argv[2]
        first_letter(word)
    elif app == "square_number":
        if len(sys.argv) < 3:
            print("Пожалуйста, укажите целое число.")
            sys.exit(1)
        number = int(sys.argv[2])
        square_number(number)
    elif app == "multiplication_table":
        multiplication_table()
    elif app == "average_of_two":
        if len(sys.argv) < 4:
            print("Пожалуйста, укажите два числа.")
            sys.exit(1)
        num1 = float(sys.argv[2])
        num2 = float(sys.argv[3])
        average_of_two(num1, num2)
    else:
        print("Неверное приложение. Пожалуйста, выберите одно из доступных.")