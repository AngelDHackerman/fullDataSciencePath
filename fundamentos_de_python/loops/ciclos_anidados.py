
matriz = [
  [1, 2, 3],
  [4, 5, 6],
  [7, 8, 9]
]

print(matriz[0][1])  # Res: 2, imprime el indice 1 del primer array dentro del array
print('')


for fila in matriz:  # ? Esto recorre los arrays "filas" dentro del array e imprime el array.
  print(fila)
  for columna in fila:  # ? Esto recorre los indices "columnas" dentro de cada array e imprime los indices
    print (columna)