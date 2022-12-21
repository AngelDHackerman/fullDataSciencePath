
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

# Agregando nuevo elemento a nuestro diccionario: 

def add_taxes(item):
  new_item = item.copy()  # todo: .copy(), copia el array, crea una nueva referencia en memoria. Es similar a spread operator de JS "..."
  new_item['taxes'] = new_item['price'] * .19
  return new_item

new_items = list(map(add_taxes, items))  # * se invoca la funcion que mutara nuestro array de diccionarios.
print(new_items)  # * nuevo array con el diccionario mutado

print(items) # este array se queda como el originanl SIN ser mutado