
  # todo: CRUD: create, read update & delete

numbers = [1, 2, 3, 4, 5]
print(numbers[1]) # 2
numbers[-1] = 10  # esto inserta el valor al final del array
print(numbers)

numbers.append(700)  # * metodo append, agrega un valor al final de array.
print(numbers)

numbers.insert(0, 'hola')  # * insert, inserta el valor en el indice que le indiquemos
print(numbers)

numbers.insert(3, 'change')
print(numbers)

tasks = ['todo 1', 'todo 2', 'todo 3']
new_list = numbers + tasks  # ? asi se concatenan los arrays
print(new_list)
