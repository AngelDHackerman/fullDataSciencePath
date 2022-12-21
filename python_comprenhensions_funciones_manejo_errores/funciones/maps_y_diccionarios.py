
items = [
  {
    'product': 'camisa',
    'price': 100
  },
  {
  'product': 'pantalon',
  'price': 300
  },
  {
  'product': 'pantalon',
  'price': 200
  }
]

  # ? Aqui se transforma el array de diccionarios en un array de precios: 

prices = list(map(lambda item: item['price'], items))  # * El PRIMER parametro itera sobre la clave/valor de item: price, el SEGUNDO indica cual es el array sobre el que hay que iterar
print(prices) # [100, 300, 200]



print('\n')
  # ? Agregando un elemento extra al diccionario: 
  # todo: Esto modifica el array original. Esto es porque maps afecta a la referencia en memoria

def add_taxes(item):
  item['taxes'] = item['price'] * .19  # ? La clave sera 'taxes' y el valor es: 'price' * 0.19
  return item

new_items = list(map(add_taxes, items))  # ? "items", sera el parametro de la funcion "add_taxes" que a su vez esta funcion retorna la clave y el valor de los taxes 
print(new_items) # Nuevo array con el elemento e items. 

print(items) # este array y diccionario fueron mutados sin querer. 
