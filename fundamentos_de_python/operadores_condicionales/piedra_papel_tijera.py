
import random

user_action = input("Elige entre: piedra, papel o tijera: ")
possible_actions = ["piedra", "papel", "tijera"]
computer_action = random.choice(possible_actions)  # ? usamos la libreria random para elegir entre las 3 opciones con random.choice
print(f"\n Si elegiste: {user_action}, la computadora elige: {computer_action}.\n")

if user_action == computer_action:
    print(f"Ambos seleccionaron {user_action}. Es un empate!")
elif user_action == "piedra":
    if computer_action == "tijera":
        print("Piedra derrota a las tijeras, tu ganas! 🥳")
    else:
        print("El papel cubre la roca, tu pierdes 😞")
elif user_action == "papel":
    if computer_action == "piedra":
        print("El papel cubre a la roca, tu ganas! 🥳")
    else:
        print("Las tijeras cortan el papel, tu pierdes 😞")
elif user_action == "tijera":
    if computer_action == "papel":
        print("Las tijeras cortan el papel, tu ganas! 🥳")
    else:
        print("Piedra derrota a las tijeras, tu pierdes. 😞")