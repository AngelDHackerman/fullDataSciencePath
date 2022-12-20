
# ? las funciones lambda son funciones anonimas con sintaxis simple

increment_v2 = lambda x : x + 1  # el parametro "x" : "regrea" x + 1   # Y la funcion no tiene ningun nombre. Y se asigna a la variable increment_v2

result = increment_v2(20)
print(result)



# * Otra forma de hacer lambdas: 

full_name = lambda name, last_name : f'Full name is {name.title()} and last name is: {last_name.title()}'  # .title: hace que cada primera letra se haga mayuscula

text = full_name('Angel', 'Hernandez')
print(text)