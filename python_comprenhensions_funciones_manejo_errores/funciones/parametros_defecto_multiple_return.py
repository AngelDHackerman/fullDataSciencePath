
def find_volume(length = 1, width = 1, depth = 1):  # ? depth = 1, asi se crean los parametros por defecto
  return length * width * depth, width, 'Hola' # ? length * width * depth: es el primer resultado que se retorna; width Es el segundo en retornar, ' HOla' el ultimo parametro en ser retornado

result, width, text = find_volume(length=2, width=10) # * la funcion "find_volume", regresa los 3 valores y se asignan por orden a las variables: result, width, text.

print(result) # 20
print(width) # 10
print(text) # Hola