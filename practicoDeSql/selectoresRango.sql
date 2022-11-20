
-- Esta es una forma basica para mostrar ciertos rangos

SELECT * FROM platzi.alumnos 
WHERE tutor_id IN (1, 2, 3, 4, 5)


-- ? Tambien podemos buscar por rango usando BETWEEN 

SELECT * FROM platzi.alumnos 
WHERE tutor_id BETWEEN 1 AND 20
ORDER BY tutor_id 