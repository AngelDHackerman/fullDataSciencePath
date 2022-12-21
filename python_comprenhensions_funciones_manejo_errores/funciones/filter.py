
# todo: .filter(), filtra los elementos que cumple con la condicion del primer parametro "lambda function", si se cumple se regresa, el segundo parametro es el array a iterar
# ? .filter(), NO muta el array en su estado original

numbers = [1, 2, 3, 4, 5, 6, 7, 8] 
new_numbers = list(filter(lambda x: x % 2 == 0, numbers))  

print(new_numbers)