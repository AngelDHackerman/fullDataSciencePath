
# ? 'w+' significa: 'lectura' y 'escritura', pero este si sobreescribe el texto original (elimina el texto anterior)

with open('/home/angel/fullDataSciencePath/python_comprenhensions_funciones_manejo_errores/manipulacion_archivos_errores/texto.txt', 'w+') as file:
  for line in file:
    print(line)
  file.write('\nNuevas cosas en este archivo') 
  file.write('\notra linea')
  file.write('\nmas lineas')

