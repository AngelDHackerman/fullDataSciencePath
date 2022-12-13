
my_dict = {}
print(type(my_dict))

my_dict = { 
  'avion': 'bla bla bla',
  'name': 'Angel',
  'last_name': 'Hernandez',
  'age': 27
}

print(my_dict)
print('len =>', len(my_dict)) # 4 valores

print(my_dict['age'])  # * Si buscamos segun la clave, luego nos dara el valor
print(my_dict['last_name'])
print(my_dict.get('age'))  # * funciona igual si usamos el metodo "get" para buscar el valor segun su clave.

print('avion' in my_dict)  # True, porque verificia si la clave "avion" esta en el diccionario.
print('este_no' in my_dict)  # False.