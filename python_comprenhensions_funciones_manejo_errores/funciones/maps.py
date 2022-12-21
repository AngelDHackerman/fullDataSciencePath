
# ? Map, transforma los elementos de un array, si el original tenia 4 el nuevo tambien tendra 4 elementos. 
# ? Map tambien es una de las funciones mas usadas. 


# Aqui un ejemplo de trasnformacion: 

numbers_1 = [1, 2, 3, 4] 
numbers_2 = [5, 6, 7]
numbers_v2 = []

for i in numbers_1:
  numbers_v2.append(i * 2)  # aqui se ejecuta la transformacion.

print(numbers_1)
print(numbers_v2)



print('\n')
# * Transformacion usando Map. Lo mismo de arriba pero en una linea: 

numbers_v3 = list(map(lambda i: i * 2, numbers_1))  # ? el PRIMER parametro es una funcion lambda con la que se trabaja, 
                                                  # ? el SEGUNDO es la lista a mutar e iterar, 
                                                  # ? IMPORTANTE transformarlo a lista, sino solo devuelve la referenica a un Map

print(numbers_v3) 



print('\n')
# * Transformacion usando 2 arrays: 

print(numbers_1)
print(numbers_2)
result = list(map(lambda x, y: x + y, numbers_1, numbers_2)) # ? La funcion lambda toma como parametros "numbers_1" y "numbers_2", con eso se ejecuta el .map()

print(result)  # todo: solo se obtiene un array de 3 elementos de largo. 

