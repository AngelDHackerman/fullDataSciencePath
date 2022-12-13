
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


  # Metodos, index, pop, reverse, remove

index_todo = new_list.index('todo 2')  # * con 'index' vemos en que index se encuentra el valor buscado
new_list[index_todo] = 'todo_changed'
print(new_list)

new_list.remove('todo 1')  # * remove, elimina el valor que le pasamos, sin importar tu index
print(new_list)

new_list.pop() # * pop, por defecto eliminar el ultimo valor del array 
print(new_list)

new_list.pop(0)  # si le pasamos una posicion, eliminara la posicion indicada
print(new_list)


new_list.reverse()  # ? Inverte el orden de los valores en el array, y muta el array original
print(new_list)



  # Metodo sort

numbers_a = [1, 5, 2, 8, 10]
numbers_a.sort()  # * sort organiza los valores del array, y muta el array original
print(numbers_a)

strings = ['re', 'ab', 'eb']
strings.sort()
print(strings)