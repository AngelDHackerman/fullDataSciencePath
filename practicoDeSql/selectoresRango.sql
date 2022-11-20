
-- Esta es una forma basica para mostrar ciertos rangos

SELECT * FROM platzi.alumnos 
WHERE tutor_id IN (1, 2, 3, 4, 5)


-- ? Tambien podemos buscar por rango usando BETWEEN 

SELECT * FROM platzi.alumnos 
WHERE tutor_id BETWEEN 1 AND 20
ORDER BY tutor_id 


-- ? Usando int4range 

SELECT int4range (1, 20) @> 3;  -- Esto nos devuelve un boolean, dependiendo si el 3 esta o no en el rango especificado


-- ? Numrange 
-- Devuelve un boolean si el rango de la derecha se "solapa" en algun punto con el de la izquierda. 

SELECT numrange(11.1, 22.2) && numrange (20.0, 30.0);


-- ? Upper and Lower
-- Upper devuelve el valor mas alto y lower el mas bajo

SELECT UPPER (int8range (15, 35));
SELECT LOWER (int8range (15, 35));


-- ? Valores en comun
-- Devuelve los valores que tienen en comun ambos rangos, en este caso (15, 20)

SELECT int4range (10, 20) * int4range (15, 25);


-- ? ISEMTPY 
-- Devuelve un boolean, muestra si el rango esta vacio o no.

SELECT ISEMPTY (numrange(1, 5));