
# ! Este script vuelve el archivo csv en una array de diccionarios 

import csv # ? modulo nativo de python para leer csv 

def read_csv(path):
  with open(path, 'r+') as csvFile:
    reader = csv.reader(csvFile, delimiter=',')  # ? delimiter=, Delimitador que en los csv es una ',' o a veces ';' # csv.reader(), es la funcion que nos permite leer el archivo csv
    header = next(reader)  # * Esto nos da la primera fila del csv (donde esta los titulos de los datos)
    data = []
    for row in reader:
      iterable = zip(header, row)  # * zip(), unira el header con los valores restantes del csv en un array e tuplas
      # country_dict = {key: value for key, value in iterable}  # creamos un comprenhension para que el header 'key' y los valores 'value' se unan en un DICCIONARIO.
      country_dict = dict(iterable)  # ? Esto es una mejor opcion que la de arriba
      data.append(country_dict)  # * Creamos una lista de diccionarios 
    print(data[0])

if __name__ == "__main__":
  read_csv('/home/angel/fullDataSciencePath/python_comprenhensions_funciones_manejo_errores/manipulacion_archivos_errores/world_population.csv')
