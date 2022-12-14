
numbers = []
for element in range(1, 11):
  numbers.append(element * 2)

print(numbers)

  # todo: List comprenhensions para hacer lo mismo que la linea de arriba

numbers_v2 = [element * 2 for element in range(1, 11)] # se recorre el rango usando 'element' como indice, y cada 'element' recorrido se multiplica * 2 luego agrega al array de numbers_v2
print(numbers_v2)



print('\n')
  # todo: List comprenhensions con condiciones

# Si el percentil de i es = 0, entonces multiplicalo por 2 y agregalo al array
numeros = []
for i in range (1, 11):
  if i % 2 == 0:
    numeros.append(i * 2)
print(numeros)

# Lo mismo de arriba pero con list comprenhension
numeors = [i * 2  for i in range(1, 11) if i % 2 == 0]  # ? Las condiciones en list comprenhensions se ponen al final de la sitaxis
print(numeors)
