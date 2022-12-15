
price = 100 # global

def increment():
  price = 200 # local
  price = price + 10
  print(price)  # imprime el scope local

print(price)  # imprime el scope global
increment()