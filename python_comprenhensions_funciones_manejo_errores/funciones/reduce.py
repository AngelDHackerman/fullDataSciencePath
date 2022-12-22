
# ? .reduce(), reduce el array a UN solo elemento 

import functools # esta libreria nos sirve para usar el .reduce()

numbers = [1, 2, 3, 4, 5, 6]

result = functools.reduce(lambda counter, item: counter + item, numbers) # suma los valores del array.
# Counter: es la variable contador (almacena el valor de operacion lambda)
# item: es la variable que va a iterar
# counter + item: es la operacion de lambda

# numbers: el array sobre el cual iterar

print(result) # 21 