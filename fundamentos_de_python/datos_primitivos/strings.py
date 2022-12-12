
name = "Angel"
last_name = 'Hernandez' 
print(name)
print(last_name)

full_name = name + " " + last_name
print(full_name)

quote = 'I\'m Angel'
print(quote)

quote2 = 'She said "Hello"'
print(quote2)



print('\n')
# * Format 

template = "Hola, mi nombre es " + name + "y mi apellido es " + last_name
print('v1 ',  template)

template = "Hola, mi nombre es {} y mi apellido es {}".format(name, last_name)  # ? Estos es formato de texto, similar a hacer string interpolation
print('v2 ', template)

template = f"Hola, mi nombre es {name} y mi apellido es {last_name}"  # todo: Esta es una mejor forma de dar formto a los strings 
print('v3 ', template)
