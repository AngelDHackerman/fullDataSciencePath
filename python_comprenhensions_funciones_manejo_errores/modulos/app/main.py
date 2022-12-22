
import mods  # ? Este el archivo que esta al lado del main.py

def run():
  keys, values = mods.get_population()  # * asi se invoca el modulo y con .get_population() entramos a sus funciones. 

  print(keys, values)


if __name__ == '__main__':  # ? Estos son los entry point de python para ejecutar los archivos como modulos de manera mas controlada.
  run()