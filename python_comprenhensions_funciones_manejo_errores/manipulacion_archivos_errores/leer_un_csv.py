
import csv # ? modulo nativo de python para leer csv 

def read_csv(path):
  with open(path, 'r+') as csvFile:
    reader = csv.reader(csvFile, delimiter=',')  # ? delimiter=, Delimitador que en los csv es una ',' o a veces ';' # csv.reader(), es la funcion que nos permite leer el archivo csv
    for row in reader:
      print('****' * 10)
      print(row)

if __name__ == "__main__":
  read_csv('/home/angel/fullDataSciencePath/python_comprenhensions_funciones_manejo_errores/manipulacion_archivos_errores/world_population.csv')
