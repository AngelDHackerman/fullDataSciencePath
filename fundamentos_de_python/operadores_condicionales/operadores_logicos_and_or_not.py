
  # ? AND 

print(10 > 5 and 5 < 10) # true
print(10 > 5 and 5 > 10) # false


print('\n')
  # ? OR

print(10 > 5 or 5 > 10) # true
print(10 < 5 or 5 > 10) # False



print('\n')
  # ? NOT

print(not True) # False
print(not False) # True


print('\n')
stock = input('Ingrese el numero de stock => ')
stock = int(stock) # conviernte el valor en integer 

print(stock >= 100 and stock <= 1000)
print(not(stock >= 100 and stock <= 1000))
