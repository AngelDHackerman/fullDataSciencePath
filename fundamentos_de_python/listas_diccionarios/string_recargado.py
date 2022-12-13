
text = 'Ella sabe programar en Python.'
print('Javascript' in text)  # ? In, verifica si el valor de la izquierda se encuentra en la variable de la derecha
print('Python' in text)  # True

      # ? Metodo In():

if 'Python' in text:
  print('Elegiste bien!!!')
else:
  print('Tambien elegiste bien')



print('\n')
      # ? Metodo len(), largo del texto

size = len(text)
print(f'Hay {size} caracteres en ese texto')



      # ? Metodos upper(), lower().

print(text, text.upper())  # transforma todo a mayusculas
print(text, text.lower())  # transforma todo a minusculas



print('\n')
      # ? Metodo count()

print(text.count('a'))  # cuanta las "a" en el texto



print('\n')
      # ? Metodo swapcase()

print(text.swapcase())  # las minusculas pasan a mayusculas, y las mayusculas a minusculas



print('\n')
      # ? Metodo startswith(), endswith(), replace()

print(text.startswith('Ella'))  # verifica si el string comienza con la palabra pasada como valor -> devuelve un boolean
print(text.endswith('Rust')) # False
print(text.replace('Python', 'Go'))  # ? Este es un metodo inmutable, no cambia el string original
print(text)



print('\n')
      # ? Metodos capitalize(), title(), isdigit()

text_2 = 'este es un titulo'
print(text_2)
print(text_2.capitalize())  # Inicial en mayuscula
print(text_2.title())  # Cada inicial se devuelve en mayuscula
print(text_2.isdigit())  # Ve si el valor es un digito -> regresa booleans
print('398'.isdigit())  # * apesar de que es un "string", se reconoce como un numero (integer)