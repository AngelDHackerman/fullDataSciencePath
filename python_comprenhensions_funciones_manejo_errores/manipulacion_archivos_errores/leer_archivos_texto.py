
file = open('/home/angel/fullDataSciencePath/python_comprenhensions_funciones_manejo_errores/manipulacion_archivos_errores/texto.txt')  # ? open(), habre los archivos con python
# print(file.read())  # ? el metodo .read() lee los archivos por completo (Ocupa mucho espacio en memoria)
# print(file.readline())  # ? .readline() lee el archivo linea por linea (Ocupa poco espacio en memoria)
# print(file.readline())

for line in file:  # ? Esto es mas liviano que .read() y lee todo el archivo con la LIGERESA DE .readline()
  print(line)

file.close()  # ? Cierra el archivo y LIBERA espacio en memoria de python. 



# todo: Esta es la forma mas comun de abrir archivos en python. 

# ? with: Es la mejor forma de abrir archivos en python porque automaticamente cerrara el archivo y no se perdera memoria. 
with open('/home/angel/fullDataSciencePath/python_comprenhensions_funciones_manejo_errores/manipulacion_archivos_errores/texto.txt') as file:
  for line in file:
    print(line)

