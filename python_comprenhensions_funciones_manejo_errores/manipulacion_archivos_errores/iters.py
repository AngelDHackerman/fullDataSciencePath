
for i in range (1, 11):  # esto es un iterador normal 
  print(i)


print('')
my_iter = iter(range(1, 3))  # ? iter() vuelve el rango en un interable
print(my_iter) # <listiterator object at 0x7fdb25cfbd10> # ? Solo nos devuelve la referencia en memoria, NO un iterable tal cual 
print(next(my_iter)) # 1, # ? next() es la forma de iterar manualmente
print(next(my_iter)) # 2 
print(next(my_iter)) # 3 
print(next(my_iter)) # 4  # ? Aqui se lanza una excepcion porque no hay tantos valores para iterar. 