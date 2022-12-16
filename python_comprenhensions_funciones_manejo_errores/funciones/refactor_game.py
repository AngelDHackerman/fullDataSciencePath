import random

rounds = 1

# Eligiendo las opciones del usuario y de la computadora:

def choose_options ():
    options = ('piedra', 'papel', 'tijera')
    user_option = input('piedra, papel o tijera => ')
    user_option = user_option.lower()

    if not user_option in options:
      print('esa opcion no es valida')
      # continue
      return None, None  # Se indica que si la opcion no es valida, tanto el user como computer, deben retornar un "none"

    computer_option = random.choice(options)

    print('User option =>', user_option)
    print('Computer option =>', computer_option)
    return user_option, computer_option # retornamos los valores para ser usados mas adelante


# Haciendo las validaciones de las elecciones del usuario y de la computadora:

def check_rules(user_option, computer_option, user_wins, computer_wins):
  if user_option == computer_option:
    print('Empate!')
  elif user_option == 'piedra':
    if computer_option == 'tijera':
      print('piedra gana a tijera')
      print('user gano!')
      user_wins += 1
    else:
      print('Papel gana a piedra')
      print('computer gano!')
      computer_wins += 1
  elif user_option == 'papel':
    if computer_option == 'piedra':
      print('papel gana a piedra')
      print('user gano')
      user_wins += 1
    else:
      print('tijera gana a papel')
      print('computer gano!')
      computer_wins += 1
  elif user_option == 'tijera':
    if computer_option == 'papel':
      print('tijera gana a papel')
      print('user gano!')
      user_wins += 1
    else:
      print('piedra gana a tijera')
      print('computer gano!')
      computer_wins += 1


# Funcion maestra, que corre la logica del juego:

def run_game():
  user_wins = 0
  computer_wins = 0
  while True:

    print('*' * 10)
    print('ROUND', rounds)
    print('*' * 10)

    print('computer_wins', computer_wins)
    print('user_wins', user_wins)
    rounds += 1

    user_option, computer_option = choose_options()  # aqui recuperamos los valores que retorna la funcion choose_options()
    check_rules(user_option, computer_option)  # se ejecuta la funcion para validar las selecciones

    if computer_wins == 2:
      print('El ganador es la computadora')
      break

    if user_wins == 2:
      print('El ganador es el usuario')
      break

    