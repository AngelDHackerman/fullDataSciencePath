
name = "Angel" 
print(type(name))

name = 12 
print(type(name))

name = True
print(type(name))

print('Angel' + 'Hernandez')
print(10 + 20)
print('Angel ' + '12')

age = 20 
print(f'Mi edad es {str(age)}')  # ? Aqui cambiamos el tipo de dato de 'number' a 'string'
print(f'Mi edad es {age}')


age = input('Escribe tu edad => ')
print(type(age))
age = int(age)  # ? Input es de tipo string, aqui lo pasamos a number
age += 10
print(f'Tu edad en 10 años sera: {age}')