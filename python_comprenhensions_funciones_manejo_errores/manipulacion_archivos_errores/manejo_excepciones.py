
print('Hola 1')
try:  # ? Try: analizara el codigo que puede fallar. 
  print(0 / 0)
  assert 1 != 1, 'Error => Uno NO es igual a uno'  # ? Este string es un exception propio del assert, tambien usado para mandar mensajes a la consola
  age = 10
  if age < 18: 
    raise Exception('No se permite menores de edad')

# todo: asi es como unimos todos los except del mismo try, para evitar escribir muchos try/except en el codigo
# ! Si un except falla, los demas NO se ejecutan, pero si el codigo fuera de este bloque.
except ZeroDivisionError as error:  # ? Except: le pasamos el posible error, asignamos un alias y al final nos puede imprimer el error SIN cortar el programa
  print(error) # integer division or modulo by zero
except AssertionError as error:  # ? El assert de arriba falla por eso nos devuelve un assertionError
  print(error)
except Exception as error:
  print(error)

print('Hola 3')