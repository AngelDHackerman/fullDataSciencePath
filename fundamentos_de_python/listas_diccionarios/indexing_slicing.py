
      # ? Indexing:

text = "Ella sabe Python"
print(text[0])  # * Los strings se comportan de manera similar a los arrays en cuando a index
print(text[1])
# print(text[999]) # Esto nos da error porque esta fuera de rango

size = len(text)
print('size => ', size)

print(text[-1]) # * Asi se imprime el ultimo caracter del string sin saber su valor total



print('\n')
      # ? Slicing:

print(text[0:5])  # * el 5 es exclusivo, es decir solo se llegara hasta el 4to caracter, iniciando desde 0
print(text[10:16])
print(text[:10])  # * aqui Va desde el indice 0 hasta el 10

print(text[5:-1]) # * desde el 5to hasta el penultimo caracter
print(text[5:])  # * desde el 5to hasta el ultimo caracter
print(text[:])  # * muestra todo el string

print(text[10:16:1]) # * del char 10 hasta el char 16 dando saltos de 1 en 1 
print(text[10:16:2]) # * del char 10 hasta el char 16 dando saltos de 2 en 2
print(text[::2])