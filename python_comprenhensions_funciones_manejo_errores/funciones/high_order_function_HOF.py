
# ? HOF high order function, una funcion dentro de otra funcion. Similar a los call back function

def increment(x):
  return x + 1


def high_order_func(x, func): # * el parametro x sera un "numero" y el parametro "func" sera otra funcion que sera ejecutada
  return x + func(x)  # * regresa "x" sumando lo que retorne la funcion "func(x)" 

result = high_order_func(2, increment) # pasamos el parametro "2" y la funcion "increment" en el parametro de la high order function. 
                      # (2 + (2 + 1))
print(result)



# ? HOF usando lambdas: 



