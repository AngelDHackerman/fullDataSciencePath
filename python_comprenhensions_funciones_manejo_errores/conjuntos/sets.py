
      # ! Conjuntos
      # * Se pueden modificar
      # * No tienen un orden
      # * No permiten duplucados.

set_countries = {'col', 'mex', 'bol', 'col'}  # 'col', esta repetido y por eso NO se mostrara en el conjunto final
print(set_countries)  # ? Solo mostrara 3 resultados diferentes
print(type(set_countries))

set_number = {1, 2, 2, 443, 32}  # 2, esta repedito y no se mostrara en el conjuto 
print(set_number)


set_types = {1, 'hola', False, 12,12}  # Al final NO poseen ningun orden especifico. 
print(set_types)


print('\n')
  # ! Set, palabra reservada para crear conjuntos

# todo: conjuntos apartir de un string:

set_from_string = set('hoola')
print(set_from_string) # ? {'l', 'a', 'h', 'o'}, solo se mostrara un 'o', no repite caracteres.


# todo: conjuntos apartir de tuplas:

set_from_tuples = set(('abc', 'cbv', 'as', 'abc'))
print(set_from_tuples)


# todo: Conjuntos apartir de arrays: 

numbers = [1, 2, 3, 4, 1, 2, 3, 4]  # mostrara solo la mitad de valores porque hay repetidos.
set_numbers = set(numbers)
print(set_numbers)

unique_numbers = list(set_numbers)
print(unique_numbers)