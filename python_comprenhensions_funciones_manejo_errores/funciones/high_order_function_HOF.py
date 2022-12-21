
# ? HOF high order function, una funcion dentro de otra funcion. Similar a los call back function

def increment(x):
  return x + 1


def high_order_func(x, func): # * el parametro x sera un "numero" y el parametro "func" sera otra funcion que sera ejecutada
  return x + func(x)  # * regresa "x" sumando lo que retorne la funcion "func(x)" 

result = high_order_func(2, increment) # pasamos el parametro "2" y la funcion "increment" en el parametro de la high order function. 
                      # (2 + (2 + 1))
print(result)



print('\n')
# ? HOF usando lambdas: 

increment_v2 = lambda x: x + 1  # version lambda de la primer funcion "increment"


high_order_func_V2 = lambda x, func: x + func(x)  # * se crea la funcion "x" que retorna el mismo parametro que le demos. Se crea "func" que retorna "x" + el retorno de la funcion invocada

result = high_order_func_V2(2, increment_v2) # (2 + (2 + 1))
print('Segunda version de HOF: ', result)



