
for element in range(1, 21):  # ? indicamos que inicie en 1, y que finalice en 21, pero es exclusivo y solo nos dara el 20
  print(element)



      # todo: Recorriendo tuplas y arrays

print('\n')
my_list = [23, 45, 67, 89, 12]
for element in my_list:  # ? asi podemos recorrer arrays en python
  print(element)

my_tuple = ('angel', 'nadia', 'esteba')
for element in my_tuple:  # ? recorrer tuplas
  print(element)


      # todo: Recorriendo diccionarios


print('\n')
product = { 
  'name': 'Camisa',
  'price': 100,
  'stock': 89
}

for element in product:
  print(element)  # se recorre solamente las claves
print('')

for clave in product:  # ? De esta manera recorremos las claves de un diccionario
  print(f'{clave} => {product[clave]}')  # ? Se pone la clave en el indice para obtener los valores
print('')

# * Generando el mismo resultado de arriba pero mas simple:

for clave, valor in product.items():  # ? Recuerda que item, regresa un array de claves y valores del diccionario recorrido
  print(f'{clave} => {valor}')



      # todo: Respuestas que pueden dar los servidores

people = [
  {
    'name': 'angel',
    'age': 27
  },
  {
    'name': 'zule',
    'age': 45
  },
  {
    'name': 'santi',
    'age': 4
  }
]

for person in people:  # * Es un array de diccionarios, y cada indice nos devuelve la clave y el valor de cada diccionario
  print(person)
print('')


for person in people:
  print(f"nombre => {person['name']}")  # ? Usando la CLAVE obtenemos el VALOR del indice recorrido.