
set_a = {'col', 'mex', 'bol'}
set_b = {'pe', 'bol'}

      # todo: .union(), "|": une los conjutos, no se repiten valores

set_c = set_a.union(set_b)  # ? metodo union para unir conjuntos
print(set_c)
print(set_a | set_b)  # ? '|' hace lo mismo que .union()



      # todo: .intersection() : Devuelve los valores que tienen en comun ambos conjuntos (los que se repiten)

set_c = set_a.intersection(set_b)  # ? asi se ejecuta .intersection()
print(set_c)  # Res: 'bol'
print(set_a & set_b)  # ? '&' hace lo mismo que .intersection()
