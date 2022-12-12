
x = 3.3 
print(x)  # 3.3
y = 1.1 + 2.2 
print(y)  # 3.300000000000003
print(x == y)  # False

        # todo: Comparacion por transformacion en strings

print('\n')
y_str = format(y, '.2g')  # ? Esto le elimina los demas decimales y solo nos deja con: 3.3. Pero lo convierte en 'string'
print('str => ', y_str)
print(y_str == str(x))  # * 3.3 (string) == 3.3 (string), Aqui si nos dice que tanto y como x, son iguales.

print('*' * 10)

print(y, x) 

        # todo: Comparacion por medio de matematica y tolerancias.

tolerance = 0.00001 
print(abs(x - y) < tolerance)  # ? abs(), se refiere al valor absoluto
                               # ? la resta NO puede dar negativos,por eso haciendo esta resta. Es la forma correcta de hacer la comparacion.
