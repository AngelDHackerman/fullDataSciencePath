
-- Esta es una forma basica para mostrar ciertos rangos

SELECT * FROM platzi.alumnos 
WHERE tutor_id IN (1, 2, 3, 4, 5)


-- ? Tambien podemos buscar por rango usando BETWEEN 

SELECT * FROM platzi.alumnos 
WHERE tutor_id BETWEEN 1 AND 20
ORDER BY tutor_id 


-- ? Usando int4range 

SELECT int4range (1, 20) @> 3;  -- Esto nos devuelve un boolean, dependiendo si el 3 esta o no en el rango especificado


