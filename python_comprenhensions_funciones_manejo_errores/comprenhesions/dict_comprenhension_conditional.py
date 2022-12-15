
import random
countries = ['col', 'mex', 'bol', 'pe']

# Generando un diccionario, desde el array con valores aleatorios
population = {country: random.randint(1, 100) for country in countries}
print(population)



  # todo: usando un array para crear un diccionario con condiciones y dict comprenhension

result = { country: population for (country, population) in population.items() if population > 50}
print(result)



text = 'Hola, soy Angel'
unique = {c: c.upper() for c in text if c in 'aeiou'}  # ? Busca las vocales del string "text"
print(unique)