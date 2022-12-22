
import sys  # todo: proporcina acceso a variables y funciones del sistema operativo. 

print(sys.path)  # imprime la direccion del archivo y el path de python en el sistema operativo.



print('')
import re # todo: Este modulo es para expresiones regulares. 
text = 'Mi numero de telefono es el 311 333 123 212, el codigo del pais es 57, mi numero de la suerte es el 3'
result = re.findall('[0-9]+', text)  # encuentra 1 o mas coincidencias de los numeros del 0 al 9 en la variable 'text'

print(result)



print('')
import time # todo: sirve para medir tiempos o crear timestamps
timestamp = time.time() # aqui devuelve el la hora en un formato unix 
print(timestamp)

local = time.localtime() # devuelve la hora local en formato unix
result = time.asctime(local) # transforma el formato unix en un formato ascii (mas entendible)
print(result)



print('')
import collections  # todo: Este modulo es usado para manejar listas 
numbers = [1, 21, 2, 3, 3, 1, 5, 6, 34, 32, 32, 21]
counter = collections.Counter(numbers)  # ? .Counter(), muestra la frecuencia de cada elemento dentro de la lista.
print(counter)

