
person = { 
  'name': 'angel',
  'last_name': 'hernandez',
  'langs': ['python', 'bash', 'sql', 'javascript'],
  'age': 99
}

print(person)

person['name'] = 'santi'
person['age'] -= 50  # ? Asi hacemos una resta en el valor de la clave "age"
person['langs'].append('rust')  # ? .append(), agrega el valor 'rust' en el array de la clave "langs"
print(person)



del person['last_name']  # ? del, nos permite eliminar la clave y el valor e 'last_name'
person.pop('age')  # ? .pop(), igual manera nos permite eliminar claves y valores
print('\t person =>',person)



print('\t items:')
print(person.items())  # ? Nos devuelve la clave y el valor, agrupados en parentesis en un array

print('\t keys:')
print(person.keys())  # ? Devuelve solo las claves, devuelve un array

print('\t values:')
print(person.values())  # ? Devuelve solo los valores, devuevel un array