
dict = {}
for i in range(1, 5):
  dict[i] = i * 2  # la clave sera 1, 2, 3 mientras que el valor: 2, 4, 6...

print(dict)


  # todo: dict comprenhension: 

dict_v2 = {i: i * 2 for i in range(1, 5)}  # i: se refiere a la clave, i * 2 se refiere al valor, luego esta el ciclo for.
print(dict_v2)



print('\n')
  # todo: Dict usando un array y dict comprenhension

import random
countries = ['col', 'mex', 'bol', 'pe']  # lista de paises
population = {}  # diccionario vacio
for country in countries:  # iterando sobre los paises
  population[country] = random.randint(1, 100)  # por cada "country" iterado, le damos el valor generado por un numero aleatorio entre 1 y 100.

print(population)

# * usando la version de dict comprenhension:

population_v2 = {country: random.randint(1, 100) for country in countries}  # ? Este codigo hace lo mismo que el de arriba pero mas simple
print(population_v2)



print('\n')
  # todo: zip(): Generando diccionarios apartir de 2 listas

names = ['nico', 'zule', 'santi']
ages = [12, 56, 98]

print(list(zip(names, ages)))  # Asi unimos los 2 arrays usando el metodo zip(), pero aqui se generan tuplas dentro de un array

new_dict = {name: age for (name, age) in zip(names, ages)}  # ? Asi creamos un diccionaro apartir de 2 arrays, usando dict comprenhension y el metodo zip()
print(new_dict)