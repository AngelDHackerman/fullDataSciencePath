
# print( 0 / 0 ) # zeroDivisionError
# print(result)  # NameError
print('Hola')

suma = lambda x, y: x + y
assert suma(2, 3) == 5  # ? Assert, sirve para capturar errores y dejar que almenos parte del codigo corra

print('Hola 2')



print('')
age = 10
if age < 18:
  raise Exception('No se permiten menores de edad')  # ? raise Exception(), es una forma de enviar mensajes si la condicion no se cumple, en lugar de mostrar algun error en consola

print('Hola 3')

