
numbers = [1, 2, 3, 4, 5] # array de numeros
print(numbers)
print(type(numbers))  # tipo de dato: list


tasks = ['make a dishes', 'play videogames'] # array de strings
print(tasks) 


types = [1, True, 'hola'] # array de varios tipos
print(types)


print(numbers[0])
print(tasks[0])
text = 'Hola'
# text[0] = 'W'  # ? Esto no es permitido, los strings no se puede mutar



tasks[0] = 'watch platzi courses'  # ? Esto si es posible porque los arrays son mutables
print(tasks)

tasks[0] = 'do the dishes'  # ? Esto si es posible porque los arrays son mutables
print(tasks)



print(numbers[:3])  # ? muestra los indices del 0, 1, 2. El indice 3 queda excluido
print(True in types)  # true, porque el valor "True" si esta en el array de types
print("hola" in types) 