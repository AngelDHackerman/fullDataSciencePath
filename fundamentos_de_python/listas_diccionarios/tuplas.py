
numbers = (1, 2, 3, 4, 5)
strings = ('nico', 'zule', 'santi', 'nico')
print(numbers)
print('0 =>',numbers[0])
print('-1 => ', numbers[-1])
print(type(numbers))

print(strings)
print(type(strings))

      # ? CRUD

# numbers.append(10)  # ? Esto no es posible ya que las tuplas SON inmutables
print(numbers)
# numbers[1] = 'change'  # No es posible reasignar valores en tuplas


print(strings)
print(strings.index('zule')) # * dice el indice del valor que buscamos
print(strings.count('nico'))  # ? .count(), busca cuantas veces se repite el valor buscado, en este caso se repite 2.


my_list = list(strings)  # ? Asi convertimos una tupla en un array, no es mutable, el original se queda como tupla
print(my_list)
print(type(my_list))