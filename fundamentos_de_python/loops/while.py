
counter = 0

# while counter < 20:
#   counter += 1
#   print(counter)
#   if counter == 15:
#     break  # ? si el counter llega a 15, el bucle debe detenerse.

while counter < 20: 
  counter += 1
  if counter < 15:
    continue  # ? Si la condicion se cumple se saltara la iteracion hasta que la condicion se rompa.
  print(counter)