
from paquetes.mod_1 import func_1, func_2 # ? Esto es un paquete, una carpeta con varios modulos dentro. 
from paquetes.mod_2 import func_3, func_4
# ? Primero indicamos el paquete luego el modulo, y el import nos toma las funciones el modulo
# todo: El archivo __init__.py se inica cada que ejecutamos un paquete. (si es que lo hemos creado)

print(func_1())
print(func_2())

print(func_3()) 
print(func_4())



print('')
import paquetes  # * llamamos a todos los modulos del paquete "paquetes"
print(paquetes.URL)  # * Este metodo "URL" esta en el archivo "__init__.py"