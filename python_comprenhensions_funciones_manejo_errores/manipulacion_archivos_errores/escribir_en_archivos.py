
# ? 'r+' significa: 'lectura' y 'escritura', respetando el texto original (no lo sobreescribe)

with open('/home/angel/fullDataSciencePath/python_comprenhensions_funciones_manejo_errores/manipulacion_archivos_errores/texto.txt', 'r+') as file:
  for line in file:
    print(line)
  file.write('\nNuevas cosas en este archivol')  # ? .write(): este metodo nos permite escribir sobre el archivo seleccionado. 

