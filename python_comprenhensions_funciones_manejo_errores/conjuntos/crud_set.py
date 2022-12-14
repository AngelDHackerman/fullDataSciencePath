
set_countries = {'col', 'mex', 'bol'}

size = len(set_countries)
print(size) # 3 

print('col' in set_countries)  # True, verifica si 'col' esta en nuestro conjunto
print('pe' in set_countries)  # False


  # todo: Metodo: .Add() en conjuntos

set_countries.add('pe')  # asi agregamos valores a los conjuntos
print(set_countries)
set_countries.add('pe')  # Este No se mostrara porque esta repetido.
print(set_countries)


  # todo: .update(), similar a .add() pero aqui se pueden enviar conjuntos que se sumaran al conjunto original

set_countries.update({'ar', 'ecua', 'pe', 'gt'})
print(set_countries)


  # todo: .remove(), .discard() & .clear()

set_countries.remove('col')  # ? asi eliminamos elementos de los conjuntos
print(set_countries)

# set_countries.remove('arg') # ? Esto nos daria error porque 'arg' no existe
set_countries.discard('arg') # ? .discard(), no nos lanzara el error y el codigo continuara su funcion.
print(set_countries)

set_countries.clear()  # ? Esto eliminara todos los elementos del conjunto
print(set_countries)
